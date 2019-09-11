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
define('DB_NAME', 'abhp');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

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
define('AUTH_KEY',         '{<@))@CgQ<.Lz+kJ$j$T}t62pU?e[_#M;fa=6~.H1=D:(;;(s%sc6Tx_)-jExGx.');
define('SECURE_AUTH_KEY',  '#/x/4_U>?4:,$a^BL{P{ h(tTd~kNywQX>qnz~H]C&KWkyLA6R3,%;g=(4ie#lPm');
define('LOGGED_IN_KEY',    'Z]ys0aq<Yg/mW@%1)m=3oFwARp3;}M7!oa?pV)wt*y9@e>F)t|!^hJ%`P G7~zJ<');
define('NONCE_KEY',        '_,o;fP*)O[a`MrkoIs&:wU4#q^KECHsk35`<4N[mkuzxV_ssrIlC~Bq|txP@bntE');
define('AUTH_SALT',        ' s[.Q1FGJg7KpZv6FdVSuS!8@v-*GM7vm9HSEj|QH~.(}aXBD8CDq }{~-`xcZ]j');
define('SECURE_AUTH_SALT', '(&NX-?FC;9e:JO{56!L[ueZd_i& M2L`Jw+kFo{!XHwUY_Zu.]A4ff1?+f; 4):q');
define('LOGGED_IN_SALT',   '1@Jp!<<ur4Y2U2rM%BhdJ7 >@2w72FP)L|,9At8Iexf[Qa0I2ghG}H4  8KGAOQ5');
define('NONCE_SALT',       'Gka#&/)kfIv[U(ly).mMl}S|i5dnZfqA`<.t53`Z|Pooc`Gq51EW`@VFU>j (7o2');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'ab_';

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

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
