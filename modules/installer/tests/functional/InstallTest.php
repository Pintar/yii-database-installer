<?php

class InstallTest extends WebTestCase
{
	/*
	public function testIndex()
	{
		$this->open('installer/install');
		$this->assertElementPresent("name=Installer[username]");
		
		// verify validation errors
		$this->clickAndWait("//input[@value='Submit']");
		$this->assertTextPresent('Username cannot be blank.');
		$this->assertTextPresent('Password cannot be blank.');
		$this->assertTextPresent('Data cannot be blank.');
		$this->assertTextPresent('DatabaseName cannot be blank.');

		
		// verify installing is successful 
		// NOTE: put correct username and password for your database here
		$this->type('name=Installer[username]','root');
		$this->type('name=Installer[password]','undermine');
		$this->type('name=Installer[data]',Yii::app()->basePath.'/modules/installer/data/aljazpro_simple(2).sql');
		$this->type('name=Installer[databaseName]','newdatabase');
		$this->type('name=Installer[databaseDriver]','mysql');
		$this->clickAndWait("//input[@value='Submit']");
		$this->assertTextPresent('Success');
	}
	*/
}
