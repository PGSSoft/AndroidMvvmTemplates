package ${packageName}.viewmodels;

import android.databinding.BaseObservable;
import android.databinding.ObservableField;

import ${packageName}.viewmodels.interfaces.I${viewName}ViewAccess;

public class ${viewName}ViewModel extends BaseObservable {

	// Private fields ---------------------------------------------------------

	private I${viewName}ViewAccess access;

	// Public methods ---------------------------------------------------------
	
    public ${viewName}ViewModel(I${viewName}ViewAccess access) {

		this.access = access;
    }
}
