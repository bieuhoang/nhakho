<?php namespace Xeor\OctoCart\Models;

use Model;

/**
 * PaymentGateway Model
 */
class PaymentGateway extends Model
{
    public function getPaymentGatewayOptions($keyValue = null)
    {

        return [
            'pending' => Lang::get('xeor.octocart::lang.status.pending'),
            'processing' => Lang::get('xeor.octocart::lang.status.processing'),
            'on-hold' => Lang::get('xeor.octocart::lang.status.on-hold'),
            'completed' => Lang::get('xeor.octocart::lang.status.completed'),
            'cancelled' =>Lang::get('xeor.octocart::lang.status.cancelled'),
            'refunded' =>Lang::get('xeor.octocart::lang.status.refunded'),
            'failed' => Lang::get('xeor.octocart::lang.status.failed'),
        ];

    }
}