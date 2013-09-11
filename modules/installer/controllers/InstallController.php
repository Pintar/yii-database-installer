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

class InstallController extends Controller
{
	/**
	 * Default action for InstallController
	 * Function first checks if connection can be established to database. If it cannot be established,
	 * it means we can proceed with installation. Othewise we redirect to redirectUrl. 
	 * On form post, database configuration is written to file in config folder, database is created if
	 * it is not already present and sql script is run to create tables and other useful things :)
	 */
	public function actionIndex()
	{
		try{
			if(Yii::app()->db->getActive()){
				$this->redirect(Yii::app()->createUrl(Yii::app()->getModule('installer')->redirectUrl));
			}
		}catch (Exception $e){
			//echo $e->getMessage();
		}
		$model = new InstallerForm;
		if(isset($_POST['InstallerForm']))
		{
			$model->attributes = $_POST['InstallerForm'];
			if(Yii::app()->getModule('installer')->allowSqlUpload)
				$model->data = CUploadedFile::getInstance($model,'data')->tempName;
			else
				$model->data = Yii::app()->basePath.'/modules/installer/data/'.$model->data;
			if($model->validate())
			{
				$model->createDatabase($model->databaseName);
				$model->saveValuesToFile();
				$model->processSqlFile();
   				Yii::app()->user->setFlash('form-info','Success!');
                $this->refresh();
			}
		}
		$this->render('installer',array(
			'model' => $model,
		));
	}
}