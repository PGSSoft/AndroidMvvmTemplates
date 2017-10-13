package ${packageName}.activities;

import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;

import ${packageName}.App;
import ${packageName}.R;
import ${packageName}.adapters.${generatedName}Adapter;
import ${packageName}.databinding.Activity${activityName}Binding;
import ${packageName}.viewmodels.${activityName}ActivityViewModel;
import ${packageName}.viewmodels.I${activityName}ActivityAccess;

public class ${activityName}Activity extends AppCompatActivity implements I${activityName}ActivityAccess {

    // Private fields ---------------------------------------------------------

    private Activity${activityName}Binding binding;
    private ${activityName}ActivityViewModel viewModel;
    private ${generatedName}Adapter adapter;

    // Private methods --------------------------------------------------------

    private void initializeControls() {

		<#if addToolbar>
        setSupportActionBar(binding.${idPrefix}Toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
		</#if>
        binding.${idPrefix}List.setLayoutManager(new LinearLayoutManager(this));
    }

    // Protected methods ------------------------------------------------------

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);

        binding = DataBindingUtil.setContentView(this, R.layout.${layoutName});

        initializeControls();

        viewModel = new ${activityName}ActivityViewModel(this, App.getRepository(), this);
        binding.setViewModel(viewModel);

        adapter = new ${generatedName}Adapter(viewModel.get${generatedName}Provider()<#if includeHandler>, viewModel.get${generatedName}Handler()</#if>);
        binding.setAdapter(adapter);
    }

    @Override
    public void notifyItemRemoved(int position) {

        adapter.notifyItemRemoved(position);
    }

    @Override
    public void notifyItemChanged(int position) {

        adapter.notifyItemChanged(position);
    }

    @Override
    public void notifyDataSetChanged() {

        adapter.notifyDataSetChanged();
    }
}