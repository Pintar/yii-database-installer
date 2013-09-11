<h1>yii-database-installer</h1>

This module provides an easy way to install database. Things you can configure are:
<ul>
<li>database username</li>
<li>database password</li>
<li>database name</li>
<li>sql file to run(either from upload or from data folder in module)</li>
<li>database driver</li>
</ul>

Once you enter this data, script will first create database if it is not already present,
save configuration to config file inside module config folder and run the selected sql file.

<h1>Requirements</h1> 

Yii Framework 1.1.14

<h1>Installing</h1>

Add to protected/config/main.php the following:
<pre>
'modules' => array(
	'installer' => array(
			'redirectUrl' => 'site/index', // controller action you want to redirect in case installation has been completed
			'allowSqlUpload' => true, // set this to true if you want to manually upload sql file to run. Otherwise script will look in data folder of the module.
	),
),
'db' => require(dirname(__FILE__).'/../modules/installer/config/params.php'),
</pre>

<h1>Usage</h1>

Once you have installed the module, go to installer/install on your web browser and fill out the form. 
