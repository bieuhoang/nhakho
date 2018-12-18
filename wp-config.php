<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'nhakho_vn');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'donghonhakho');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'b*#:{WL89^Dh+8oL<K}x7CG*=[2~@^A-k,9$T]Y[]hj^/rhy.P}e9teZq+D|xGsB');
define('SECURE_AUTH_KEY',  'E8~MNNK|SNlOjirI?>LqO1N,69+F|ZUR/cfQUO8{ze1[98eHxVn[PuZ)3U:By=@?');
define('LOGGED_IN_KEY',    's<DvfF$hJeL(i_~:Q9^6iop+(BbmTz!8CLb`8YIGoV!=2<f0 #0=S3tJ(yJM!O_7');
define('NONCE_KEY',        'a4 ngClMRy7j6b>diy54vKIfgL%$[$cylR9kxLHxS[wjdJd]lE|Ut4),>$EP-EIq');
define('AUTH_SALT',        'O3(`njiMC_~;a<7p),KEy0L>b8|i0P;{]vT{:7H60_4;,mPc_@]DMcq2=zB{pMMP');
define('SECURE_AUTH_SALT', 'byZq`TXW;z+nS9pi^5eF%Kn=AN2EIXKg1Kd:0BfaSLk``LL&!wAjd&MO0o:|JcTX');
define('LOGGED_IN_SALT',   'Jk1@Q[E!wYuAgE|7.tN<(P+SinHK *SJ8i`h?y>A^q[DpL;r=a/+XvIznG +Xg.+');
define('NONCE_SALT',       'yzl9x.BAlRGal0FKsO+6O!F[I;C.C/OP+%*LKz56N1?KX*1lMb YY#`#we>SkD-q');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);
define('FS_METHOD','direct');

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
