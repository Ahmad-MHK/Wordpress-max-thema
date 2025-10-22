<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '&-A3txc++DL]:p^X1;NS~z 2FvBZdje-b4G,#ND~W{AVIOe]*Xg,:VT7UvfXr?9,' );
define( 'SECURE_AUTH_KEY',   'bJl.F}1cK4k}Th#&[^E*#AK~B_+b_I|@_QLd;2Ea`+3SZ.6<F-?Xv|P`>,-*D5gn' );
define( 'LOGGED_IN_KEY',     '5VqoZyce10*HR_q7S;ux%OFY;b,1Rcqcl<R <t)H}-~YU;0^_h.aW|R~Pn {KFRK' );
define( 'NONCE_KEY',         '.k{0c>Jjp+67,tr GS]QIbG~r2=3ap>3d#;=b>%l?Mk%hKqNmyn@Q9w[|g{7.K+V' );
define( 'AUTH_SALT',         '.zrv]C`xz;*f3z`yV;<W]~OpWciY!]<gm)XU4fE^sWr5S:RG{Nv6^4LE:qvRzgs-' );
define( 'SECURE_AUTH_SALT',  '0]|IVKI:rT/Y_DQQofWL)dX[wSJ]o=H>#;E~Jec*NiZ!=r^dI;cV`OVoq66F4oD;' );
define( 'LOGGED_IN_SALT',    '_vTjY|3PbKMr0>}tKd8BZ>a4|2YCKd 9WDZ#%E2P5ASQM<:G!uwKjCRu=1}6n:pu' );
define( 'NONCE_SALT',        ';=;_m,*61<1>_ab9Oj;A4n*.IGv&ad/^$v6;z| $:^/=gP=z2ICYYT<JTAmxI;ca' );
define( 'WP_CACHE_KEY_SALT', '^79=0P}+O{xq_$Ro[}GE~OL?xVZM*Ax4}YD_ShU0,eUT.45>&%?zDVdurA~J?j@0' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
