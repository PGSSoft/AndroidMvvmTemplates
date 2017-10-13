package ${packageName}.viewmodels;

import android.databinding.BaseObservable;

import ${packageName}.adapters.base.interfaces.IDataViewModel;
import ${entityPackage}.${entityName};
import ${packageName}.services.Repository;<#if includeHandler>
import ${packageName}.viewmodels.I${generatedName}Handler; </#if>
import ${packageName}.viewmodels.I${viewName}ViewAccess;
import ${packageName}.viewmodels.base.BaseListItemViewModel;

public class ${viewName}ViewModel extends BaseListItemViewModel<${entityName}> {

    // Private fields ---------------------------------------------------------

    private I${viewName}ViewAccess access;<#if includeHandler>
    private final I${generatedName}Handler handler;</#if>

    // private final ObservableField<String> name;

	// Protected methods ------------------------------------------------------
	
    @Override
    protected void publishModel() {

        // name.set(data.getName());
    }	
	
    // Public methods ---------------------------------------------------------

    public ${viewName}ViewModel(I${viewName}ViewAccess access<#if includeHandler>, I${generatedName}Handler handler</#if>, Repository repository) {

        this.access = access;<#if includeHandler>
        this.handler = handler;</#if>
        // name = new ObservableField<String>();
    }
	
	<#if popupKind == "morebutton">
	public void showMore() {
		
		access.showMore();
	}
	</#if>	
	<#if includePopup>
	public void performAction() {

        <#if includeHandler>handler.action(data.getId(), getPosition());</#if>
    }
	</#if>
	
    // public ObservableField<String> getName() {
    //     return name;
    // }
}
