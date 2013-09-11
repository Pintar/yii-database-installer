<?php
$this->pageTitle=Yii::app()->name . ' - Installer';
?>

<h1>Installer</h1>

<?php if(Yii::app()->user->hasFlash('form-info')): ?>
<div class="row">
	<div class="span4 alert alert-success">
		<p><?php echo Yii::app()->user->getFlash('form-info'); ?></p>
	</div>
</div>
<?php else: ?>

<p>Please fill out the following form to begin with installation:</p>

<div class="form">
<?php $form=$this->beginWidget('CActiveForm', array(
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>
	<div class="span12">
		<div class="row">
			<div class="control-group">
				<label class="control-label" for="htmlFile">Database Username: </label>
				<div class="controls">
					<?php echo $form->textField($model,'username'); ?>
					<?php if($form->error($model,'username')): ?>
					<span class="help-inline"><?php echo $form->error($model, 'username'); ?> </span>
					<?php endif; ?>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="control-group">
				<label class="control-label" for="htmlFile">Database Password: </label>
				<div class="controls">
					<?php echo $form->textField($model,'password'); ?>
					<?php if($form->error($model,'password')): ?>
					<span class="help-inline"><?php echo $form->error($model, 'password'); ?> </span>
					<?php endif; ?>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="control-group">
				<label class="control-label" for="htmlFile">Database Name: </label>
				<div class="controls">
					<?php echo $form->textField($model,'databaseName'); ?>
					<?php if($form->error($model,'databaseName')): ?>
					<span class="help-inline"><?php echo $form->error($model, 'databaseName'); ?> </span>
					<?php endif; ?>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="control-group">
				<label class="control-label" for="htmlFile">SQL data file: </label>
				<div class="controls">
					<?php if(Yii::app()->getModule('installer')->allowSqlUpload): ?>
						<?php echo $form->fileField($model,'data'); ?>
					<?php else: ?>
						<?php echo $form->dropDownList($model,'data',$model->getSqlFiles()); ?>
					<?php endif; ?>
					<?php if($form->error($model,'data')): ?>
					<span class="help-inline"><?php echo $form->error($model, 'data'); ?> </span>
					<?php endif; ?>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="control-group">
				<label class="control-label" for="htmlFile">SQL Driver:</label>
				<div class="controls">
					<?php echo $form->dropDownList($model,'databaseDriver',array(
						'mysql'=>'MySQL',    // MySQL
						'pgsql'=>'PostgreSQL',    // PostgreSQL
						'mysqli'=>'MySQL',   // MySQL
						'sqlite'=>'sqlite 3',  // sqlite 3
						'sqlite2'=>'sqlite 2', // sqlite 2
						'mssql'=>'Mssql driver on windows hosts',    // Mssql driver on windows hosts
						'dblib'=>'dblib drivers on linux (and maybe others os) hosts',    // dblib drivers on linux (and maybe others os) hosts
						'sqlsrv'=>'Mssql',   // Mssql
						'oci'=>'Oracle driver',        // Oracle driver
					)); ?>
					<?php if($form->error($model,'databaseDriver')): ?>
					<span class="help-inline"><?php echo $form->error($model, 'databaseDriver'); ?> </span>
					<?php endif; ?>
				</div>
			</div>
		</div>
		<div class="row buttons">
			<?php echo CHtml::submitButton('Install',array('class'=>'btn btn-primary')); ?>
		</div>
	</div>
<?php $this->endWidget(); ?>
</div><!-- form -->
<?php endif; ?>