package ${packageName}.activities;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import ${packageName}.R;
import ${packageName}.databinding.Activity${activityName}Binding;
import ${packageName}.viewmodels.${activityName}ActivityViewModel;
import ${packageName}.viewmodels.interfaces.I${activityName}ActivityAccess;

public class ${activityName}Activity extends AppCompatActivity implements I${activityName}ActivityAccess {

    // Private fields ---------------------------------------------------------

    private Activity${activityName}Binding binding;
    private ${activityName}ActivityViewModel viewModel;
	
	<#if addToolbar>// Private methods --------------------------------------------------------
	
		private void initializeControls() {
	
        setSupportActionBar(binding.${idPrefix}Toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);    	
	}	
	
	</#if>// Protected methods ------------------------------------------------------
	
	@Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);

        binding = DataBindingUtil.setContentView(this, R.layout.${layoutName});

        viewModel = new ${activityName}ActivityViewModel(this);
        binding.setViewModel(viewModel);<#if addToolbar>

        initializeControls();</#if>
    }
}