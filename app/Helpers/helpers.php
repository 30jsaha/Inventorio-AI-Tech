<?php

if (!function_exists('settings')) {
    function settings() {
        $settings = cache()->remember('settings', 24*60, function () {
            //return \Modules\Setting\Entities\Setting::firstOrFail();
        });

        return $settings;
    }
}

// if (!function_exists('format_currency')) {
//     function format_currency($value, $format = true) {
//         if (!$format) {
//             return $value;
//         }

//         $settings = settings();
//         $position = $settings->default_currency_position ?? '2';
//         $symbol = $settings->currency->symbol ?? ' $';
//         $decimal_separator = $settings->currency->decimal_separator ?? '.';
//         $thousand_separator = $settings->currency->thousand_separator ?? ',';

//         if ($position == 'prefix') {
//             $formatted_value = $symbol . number_format((float) $value, 2, $decimal_separator, $thousand_separator);
//         } else {
//             $formatted_value = number_format((float) $value, 2, $decimal_separator, $thousand_separator) . $symbol;
//         }

//         return $formatted_value;
//     }
// }
if (!function_exists('format_currency')) {
    function format_currency($value, $format = true) {
        if (!$format) {
            return $value;
        }

        // Indian Rupee Symbol and Suffix
        $symbol = '₹';
        $suffix = ' /-';

        // Use Indian number formatting (e.g., 1,00,000)
        $value = (float) $value;
        $formatted_number = indian_number_format($value, 2); // Helper function below

        return $symbol . ' ' . $formatted_number . $suffix;
    }
}

// Helper function for Indian numbering format
if (!function_exists('indian_number_format')) {
    function indian_number_format($number, $decimal = 2) {
        $number_parts = explode('.', number_format($number, $decimal, '.', ''));
        $integer_part = $number_parts[0];
        $decimal_part = isset($number_parts[1]) ? '.' . $number_parts[1] : '';

        $last3 = substr($integer_part, -3);
        $rest = substr($integer_part, 0, -3);

        if ($rest != '') {
            $rest = preg_replace('/\B(?=(\d{2})+(?!\d))/', ',', $rest);
            return $rest . ',' . $last3 . $decimal_part;
        } else {
            return $last3 . $decimal_part;
        }
    }
}


if (!function_exists('make_reference_id')) {
    function make_reference_id($prefix, $number) {
        $padded_text = $prefix . '-' . str_pad($number, 5, 0, STR_PAD_LEFT);

        return $padded_text;
    }
}

if (!function_exists('array_merge_numeric_values')) {
    function array_merge_numeric_values() {
        $arrays = func_get_args();
        $merged = array();
        foreach ($arrays as $array) {
            foreach ($array as $key => $value) {
                if (!is_numeric($value)) {
                    continue;
                }
                if (!isset($merged[$key])) {
                    $merged[$key] = $value;
                } else {
                    $merged[$key] += $value;
                }
            }
        }

        return $merged;
    }
}
