package ${packageName}.viewmodels;

import android.databinding.BaseObservable;
import android.databinding.ObservableField;

import ${packageName}.viewmodels.interfaces.I${activityName}ActivityAccess;

public class ${activityName}ActivityViewModel extends BaseObservable {

	// Private fields ---------------------------------------------------------

	private I${activityName}ActivityAccess access;

    public ${activityName}ActivityViewModel(I${activityName}ActivityAccess access) {

		this.access = access;
    }
}
