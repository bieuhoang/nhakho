<?php namespace Xeor\OctoCart\Classes;

use Xeor\OctoCart\Models\Settings;

class Helpers
{

    /**
     * Formats an amount for display with the store's currency settings.
     *
     * @param $number
     * @return string
     */
    public static function currencyFormat($number)
    {
        $numDecimals = Settings::get('num_decimals', 2);
        $decimalSep = Settings::get('decimal_sep', '.');
        $thousandSep = Settings::get('thousand_sep', ',');
        $price = number_format((float)$number, $numDecimals, $decimalSep, $thousandSep);

        $currency = Settings::get('currency', '$');

        $position = Settings::get('currency_pos', 'left');
        switch ($position) {
            case 'left':
                $price = $currency . $price;
                break;
            case 'right':
                $price = $price . $currency;
                break;
            case 'left_space':
                $price = $currency . ' ' . $price;
                break;
            case 'right_space':
                $price = $price . ' ' . $currency;
                break;
        }

        return $price;
    }

}