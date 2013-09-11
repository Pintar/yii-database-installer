<?php
/**
 *
 * Controller for installer
 *
 * @author Aljaž Pintar <pintar.aljaz@gmail.com>
 * @copyright Copyright &copy; 2013 Aljaž Pintar
 * @license http://opensource.org/licenses/MIT MIT license
 *
 */

class InstallerForm extends CFormModel
{
	public $username;
	public $password;
	public $databaseName;
	public $databaseDriver;
	public $data;
	public $connection;
	
	/**
	 * Declares the validation rules.
	 */
	public function rules()
	{
		return array(
				// name, email, subject and body are required
				array('username, password databaseName,data,databaseDriver', 'required'),
				array('password,username','connectionActive'),
		);
	}
	
	/**
	 * Creates new connection from user input. If connection is active we use it otherwise,
	 * we display an error.
	 * @param unknown $attribute
	 * @param unknown $params
	 */
	public function connectionActive($attribute, $params)
	{
		$connectionString = mysql_real_escape_string($this->databaseDriver).':host=localhost;';
		$connection = new CDbConnection($connectionString,$this->username,$this->password);
		$connection->setActive(false);
		$connection->setActive(true);
 		if(!$connection->active)
 			$this->addError($attribute,'Attribute incorrect. Could not establish connection to a database.');
 		$this->connection = $connection;
	}
	
	/**
	 * Saves database configuration to a file in /config/params.php
	 */
	public function saveValuesToFile()
	{
		$file = Yii::app()->basePath . '/modules/installer/config/params.php';
		$data = "<? \n";
		$data .= "return array(\n";
		$data .= "'connectionString' => '".$this->databaseDriver.":host=localhost;dbname=".$this->databaseName."',\n";
		$data .= "'emulatePrepare' => true,\n";
		$data .= "'username' => '".$this->username."',\n";
		$data .= "'password' => '".$this->password."',\n";
		$data .= "'charset' => 'utf8',\n";
		$data .= ');';
		$enc = ($data);
		file_put_contents($file,$enc);
	}

	/**
	 * Runs the sql from file
	 */
	public function processSqlFile()
	{
		$sql = file_get_contents($this->data);
		$connection = $this->connection;
		$command = $connection->createCommand($sql);
		$qr = $command->execute();
	}
	
	/**
	 * creates database if it does not exists and assigns connectionString to our connection.
	 * @param string $name database name
	 */
	public function createDatabase($name)
	{
		$this->connection->createCommand("
			CREATE DATABASE IF NOT EXISTS ".$name.';')
		->query();
		// Assign new database to our connection
		$this->connection->setActive(false);
		$this->connection->connectionString = $this->databaseDriver.":host=localhost;dbname=".$this->databaseName;
		$this->connection->setActive(true); 
	}
	
	/**
	 * returns all files located in /data folder. Place sql file in /data folder if you wish to run it.
	 * @return array $files filenames
	 */
	public function getSqlFiles()
	{
		$files = array();
		if ($handle = opendir(Yii::app()->basePath.'/modules/installer/data/')) {
			while (false !== ($entry = readdir($handle))) {
				if ($entry != "." && $entry != "..") {
					$files[$entry] = $entry;
				}
			}
			closedir($handle);
		}
		return $files;
	}
}