package ${packageName}.viewmodels;

import android.content.Context;
import android.databinding.BaseObservable;

import ${packageName}.R;
import ${packageName}.adapters.base.interfaces.IDataProvider;
import ${entityPackage}.${entityName};<#if includeHandler>
import ${packageName}.viewmodels.I${generatedName}Handler;</#if>
import ${packageName}.services.Repository;

import java.util.List;

public class ${activityName}ActivityViewModel extends BaseObservable {

    // Private types ----------------------------------------------------------

    private class ${generatedName}Provider implements IDataProvider<${entityName}> {

        private List<${entityName}> items;

        public ${generatedName}Provider() {
            refresh();
        }

        @Override
        public int getCount() {
            return items.size();
        }

        @Override
        public ${entityName} getItem(int position) {
            return items.get(position);
        }

        @Override
        public void refresh() {
            items = repository.get${entityName}s();
        }
    }

	<#if includeHandler>
    private class ${generatedName}Handler implements I${generatedName}Handler {

        @Override
        public void action(int id, final int position) {

            // Perform action
        }
    }
	</#if>

    // Private fields ---------------------------------------------------------

    private I${activityName}ActivityAccess access;
    private final Repository repository;
    private final Context context;
    private final ${generatedName}Provider ${generatedNameLower}Provider;
    <#if includeHandler>private final ${generatedName}Handler ${generatedNameLower}Handler;</#if>

    // Public methods ---------------------------------------------------------

    public ${activityName}ActivityViewModel(I${activityName}ActivityAccess access, Repository repository, Context context) {

        this.access = access;
        this.repository = repository;
        this.context = context;
        ${generatedNameLower}Provider = new ${generatedName}Provider();
        <#if includeHandler>${generatedNameLower}Handler = new ${generatedName}Handler();</#if>
    }

	<#if addFab>
	public void fabClick() {
	
	}
	</#if>
	
    public IDataProvider<${entityName}> get${generatedName}Provider() {
        return ${generatedNameLower}Provider;
    }
	<#if includeHandler>
    public I${generatedName}Handler get${generatedName}Handler() {
        return ${generatedNameLower}Handler;
    }
	</#if>
}
