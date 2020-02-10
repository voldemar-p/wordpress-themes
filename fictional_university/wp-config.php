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
if(file_exists(dirname(__FILE__). '/local.php')) {
	// Local database settings
	define( 'DB_NAME', 'udemy_website' );
	define( 'DB_USER', 'voldemar' );
	define( 'DB_PASSWORD', 'N0agaperse' );
	define( 'DB_HOST', 'localhost' );
} else {
	// Live database settings
	define( 'DB_NAME', 'voldemar_universitydata' );
	define( 'DB_USER', 'voldemar_wp124' );
	define( 'DB_PASSWORD', 'N0agaperse' );
	define( 'DB_HOST', 'localhost' );
}



/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Eu^FrVpct8~uy,WnX!RkdJ]r_Tj2`@tT;SeX}5B&j 4:qo1m7vUI~H#r:(i&6yG)' );
define( 'SECURE_AUTH_KEY',  'E3Ke>o7DB#?Y z14O#qy~e~1:8iU-FaX&%Eg.(3#hwF<yw:wF]&_M.<08DypgTDt' );
define( 'LOGGED_IN_KEY',    'C/E@b0mT*-qE6Z3zt_xDLDgxP[Wkmd9lw}FHtoG/E!]6$_-82q#t^RYX#lFY$u{e' );
define( 'NONCE_KEY',        '>e8+=BE5m|gwjnt  rS~dqLre=bHywCV<+g)wp)pTG1^}L.I^eOXFu,5!E _E$*t' );
define( 'AUTH_SALT',        '}GT`X2)VQI]TE)~fp9!!xhi`7p9*}2zXMJeG*Yk&R<;=5*Gj&PU#MF0:0!*TV}*I' );
define( 'SECURE_AUTH_SALT', 'p9_&DZHaM*>-J=?pG$b1J,nVNU@3U|C-n$z3)gAzJoCO](fqQHX`FXpt.(qTjyk0' );
define( 'LOGGED_IN_SALT',   'gABe.zgKcOe uJQ*wrgZ-Hp&PYp>06-_FkP|IE`{WA-[<YC<_3@rXc_=8CCIFgrq' );
define( 'NONCE_SALT',       'V,K^s_n=bDf8vaC]s7?7r-uqzfex[M*.V[nqvK u#FY#4[f_%l1b% O<>^5&p58N' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
