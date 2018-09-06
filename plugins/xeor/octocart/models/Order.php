<?php namespace Xeor\OctoCart\Models;

use Auth;
use Lang;
use Model;

/**
 * Order Model
 */
class Order extends Model
{

    /**
     * @var string The database table used by the model.
     */
    public $table = 'xeor_octocart_orders';

    /**
     * @var array Guarded fields
     */
    protected $guarded = ['*'];

    /**
     * @var array Fillable fields
     */
    protected $fillable = [];

    protected $jsonable = ['billing_info', 'shipping_info'];

    /**
     * @var array Relations
     */
    public $hasOne = [];
    public $hasMany = [];
    public $belongsTo = [
        'user' => ['RainLab\User\Models\User']
    ];
    public $belongsToMany = [];
    public $morphTo = [];
    public $morphOne = [];
    public $morphMany = [];
    public $attachOne = [];
    public $attachMany = [];

    public function beforeSave()
    {
        $user = Auth::getUser();
        if (!isset($user)) {
            $this->user_id = 0;
        }
        else {
            $this->user_id = $user['attributes']['id'];
        }
    }

    public function getStatusOptions($keyValue = null)
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

    /**
     * Sets the "url" attribute with a URL to this object
     * @param string $pageName
     * @param Cms\Classes\Controller $controller
     */
    public function setUrl($pageName, $controller)
    {
        $params = [
            'id' => $this->id,
            'slug' => $this->slug,
        ];
        return $this->url = $controller->pageUrl($pageName, $params);
    }

}