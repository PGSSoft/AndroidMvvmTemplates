package ${packageName}.views;

import android.content.Context;
import android.databinding.DataBindingUtil;
import android.view.LayoutInflater;
import android.widget.FrameLayout;

import ${packageName}.R;
import ${packageName}.databinding.View${viewName}Binding;
import ${packageName}.viewmodels.${viewName}ViewModel;
import ${packageName}.viewmodels.interfaces.I${viewName}ViewAccess;

public class ${viewName}View extends FrameLayout implements I${viewName}ViewAccess {

    // Private fields ---------------------------------------------------------

    private View${viewName}Binding binding;
    private ${viewName}ViewModel viewModel;
	
	// Public methods ---------------------------------------------------------
	
    public ${viewName}View(Context context) {

        super(context);

        this.binding = DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.${layoutName}, this, true);
        this.viewModel = new ${viewName}ViewModel(this);
        this.binding.setViewModel(viewModel);    
	}
}