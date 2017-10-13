package ${packageName}.activities;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;

import ${packageName}.R;
import ${packageName}.databinding.Activity${activityName}Binding;
import ${packageName}.viewmodels.${activityName}ActivityViewModel;
import ${packageName}.viewmodels.interfaces.I${activityName}ActivityAccess;
${(passRepository || passMessagingService)?string("import "+packageName+".App;","")}

public class ${activityName}Activity extends AppCompatActivity implements I${activityName}ActivityAccess {

	/*

    // Private constants ------------------------------------------------------	
	
    private static final String INTENT_${camelCaseToUnderscore(entityName)?upper_case}_ACTION = "${entityName}Action";
    private static final String INTENT_${camelCaseToUnderscore(entityName)?upper_case}_ID = "${entityName}Id";

    // Private types ----------------------------------------------------------

    private enum ${entityName}Action {
        New(0),
        Edit(1);

        private final int value;

        ${entityName}Action(int value) {

            this.value = value;
        }

        public static ${entityName}Action fromValue(int value) {
            for (${entityName}Action action : ${entityName}Action.values()) {
                if (action.getValue() == value)
                    return action;
            }

            throw new IllegalArgumentException("Invalid value!");
        }

        public int getValue() {
            return value;
        }
    }

    // Private fields ---------------------------------------------------------

    private Activity${activityName}Binding binding;
    private ${activityName}ActivityViewModel viewModel;

	// Private methods --------------------------------------------------------
	
	private void initializeControls() {
	
        setSupportActionBar(binding.${idPrefix}Toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);    	
	}
	
    // Protected methods ------------------------------------------------------

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);

        binding = DataBindingUtil.setContentView(this, R.layout.${layoutName});
	
        ${entityName}Action requestedAction = ${entityName}Action.fromValue(getIntent().getIntExtra(INTENT_${camelCaseToUnderscore(entityName)?upper_case}_ACTION, -1));

        if (requestedAction == ${entityName}Action.New) {

            viewModel = ${activityName}ActivityViewModel.createForNew${entityName}(this, this${passRepository?string(", App.getRepository()","")}${passMessagingService?string(", App.getMessagingService()","")});
        } else {

            int id = getIntent().getIntExtra(INTENT_${camelCaseToUnderscore(entityName)?upper_case}_ID, -1);
            if (id == -1)
                throw new RuntimeException("Invalid identifier was passed through intent!");

            viewModel = ${activityName}ActivityViewModel.createForEdit${entityName}(this, this${passRepository?string(", App.getRepository()","")}${passMessagingService?string(", App.getMessagingService()","")}, id);
        }

        binding.setViewModel(viewModel);
		
		initializeControls();
    }

    // Public methods ---------------------------------------------------------

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {

        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.toolbar_${camelCaseToUnderscore(activityName)}, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle item selection
        switch (item.getItemId()) {
            case R.id.${idPrefix}_done: {
                viewModel.save();
                return true;
            }
            case android.R.id.home: {
                viewModel.back();
                return true;
            }
            default: {
                return super.onOptionsItemSelected(item);
            }
        }
    }

    @Override
    public void onBackPressed() {

        viewModel.back();
    }


    @Override
    public void close() {

        finish();
    }

    public static Intent createNew${entityName}Intent(Context context) {

        Intent intent = new Intent(context, ${activityName}Activity.class);
        intent.putExtra(INTENT_${camelCaseToUnderscore(entityName)?upper_case}_ACTION, ${entityName}Action.New.getValue());

        return intent;
    }

    public static Intent createEdit${entityName}Intent(Context context, int id, int position) {

        Intent intent = new Intent(context, ${activityName}Activity.class);
        intent.putExtra(INTENT_${camelCaseToUnderscore(entityName)?upper_case}_ACTION, ${entityName}Action.Edit.getValue());
        intent.putExtra(INTENT_${camelCaseToUnderscore(entityName)?upper_case}_ID, id);

        return intent;
    }
	
	*/
}