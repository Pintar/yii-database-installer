This module provides an easy way to install database. Things you can configure are:
-database username
-database password
-database name
-sql file to run(either from upload or from data folder in module)
-database driver

Once you enter this data, script will first create database if it is not already present,
save configuration to config file inside module config folder and runs the selected sql file.

Requirements 

Yii Framework 1.1.14

Installing

Add to protected/config/main.php the following

'modules' => array(
	'installer' => array(
			'redirectUrl' => 'site/index', // controller action you want to redirect in case installation has been completed
			'allowSqlUpload' => true, // set this to true if you want to manually upload sql file to run. Otherwise script will look in data folder of the module.
	),
)

Usage

Once you have installed the module, head over to installer/install on your web browser and fill out the form. 