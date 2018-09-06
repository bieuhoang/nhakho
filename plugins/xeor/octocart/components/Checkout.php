<?php namespace Xeor\OctoCart\Components;

use Log;
use Mail;
use Input;
use OctoCart;
use Cms\Classes\ComponentBase;
use Xeor\OctoCart\Models\Order;
use Xeor\OctoCart\Models\Settings;
use Xeor\OctoCart\Models\Product as ProductModel;

class Checkout extends ComponentBase
{

    public $successPage;

    public $total;

    public function componentDetails()
    {
        return [
            'name'        => 'xeor.octocart::lang.checkout.name',
            'description' => 'xeor.octocart::lang.checkout.description'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public function onRender() {
        $this->prepareVars();
    }

    protected function prepareVars()
    {

        $this->total = $this->page['total'] = OctoCart::total();

        /*
         * Page links
         */
        $this->successPage = $this->page['successPage'] = Settings::get('success_page', 'success');
    }

    public function onCheckout()
    {
        $input    = Input::all();
        $billing  = array();
        $shipping = array();
        $orderEmail = NULL;
        $orderPhone = NULL;

        // Prepare vars
        if (isset($input['billing'])) {
            $billing = $input['billing'];

            if (isset($billing['email'])) {
                $orderEmail = $billing['email'];
                unset($billing['email']);
            }

            if (isset($billing['phone'])) {
                $orderPhone = $billing['phone'];
                unset($billing['phone']);
            }
        }

        if (isset($input['shipping'])) {
            $shipping = $input['shipping'];
        }

        $items = $products = OctoCart::get();
        if (!is_null($items)) {
            foreach ($items as $itemId => $item) {
                $product = ProductModel::find($item['product']);
                $product->setUrl($this->productDisplayPage, $this->controller);
                $product->categories->each(function($category) {
                    $category->setUrl($this->categoryPage, $this->controller);
                });
                $products[$itemId]['product'] = $product;
            }
        }

        $totalPrice = OctoCart::total();
        $count = OctoCart::count();

        // Get Settings
        $settings = Settings::instance();

        // Mail
        $sendUserMessage = $settings->send_user_message;

        $appName = class_exists('\\Backend\\Models\\BrandSettings') ? \Backend\Models\BrandSettings::get('app_name') : \Backend\Models\BrandSetting::get('app_name');

        // Create New Order
        $order = new Order;
        $order->email = $orderEmail;
        $order->phone = $orderPhone;
        $order->items = json_encode($items);
        $order->billing_info = $this->prepareJSON($billing);
        $order->shipping_info = $this->prepareJSON($shipping);
        $order->total = $totalPrice->total;
        $order->vat = $totalPrice->vat;
        $order->currency = $settings->currency;
        $order->note = isset($input['note']) && !empty($input['note']) ? $input['note'] : NULL;
        $order->save();

        // To Customer
        if($sendUserMessage && !empty($sendUserMessage) && $orderEmail) {
            Mail::sendTo($orderEmail, 'xeor.octocart::mail.order_confirm', [
                'name'     => 'Customer',
                'site'     => $appName,
                'order'    => $order,
                'items'    => $products,
                'shipping' => $shipping,
                'billing'  => $billing,
                'total'    => $totalPrice->total,
                'vat'      => $totalPrice->vat,
                'count'    => $count,
            ]);
        }

        // To Admins
        $adminEmails = $settings->admin_emails;
        if($adminEmails && !empty($adminEmails)) {
            $adminEmails = explode("\n", $adminEmails);
            foreach($adminEmails as $email) {
                $email = trim($email);
                Mail::sendTo($email, 'xeor.octocart::mail.order_confirm_admin', [
                    'order'    => $order,
                    'billing'  => $billing,
                    'shipping' => $shipping,
                    'site'     => $appName,
                    'items'    => $products,
                    'total'    => $totalPrice->total,
                    'vat'      => $totalPrice->vat,
                    'count'    => $count,
                ]);
            }
        }

        // Clear Cart
        $cart = OctoCart::clear();

        // Go to the success page
        //if($this->successPage)
        //    return Redirect::to('/' . $this->successPage);
        //else
        //    return Redirect::to('/');

    }

    protected function prepareJSON($array)
    {
        if (!is_array($array) || empty($array))
            return;

        $json = [];

        foreach ($array as $key => $value) {
            $json[] = [
                'name' => $key,
                'value' => $value
            ];
        }

        return $json;
    }

}