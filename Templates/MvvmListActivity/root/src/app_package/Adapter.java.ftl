package ${packageName}.adapters;

import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import android.view.View;

import ${packageName}.adapters.base.BaseSimpleAdapter;
import ${packageName}.adapters.base.interfaces.IDataProvider;
import ${entityPackage}.${entityName};<#if includeHandler>
import ${packageName}.viewmodels.I${generatedName}Handler;</#if>
import ${packageName}.views.${viewName}View;

public class ${generatedName}Adapter extends BaseSimpleAdapter<${entityName}, ${viewName}View> {

    <#if includeHandler>private final I${generatedName}Handler handler;</#if>

    @Override
    protected ${viewName}View createView(ViewGroup parent, int viewType) {

        ${viewName}View view = new ${viewName}View(parent.getContext()<#if includeHandler>, handler</#if>);
		RecyclerView.LayoutParams lp = new RecyclerView.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        view.setLayoutParams(lp);

		return view;
    }

    public ${generatedName}Adapter(IDataProvider<${entityName}> dataProvider<#if includeHandler>, I${generatedName}Handler handler</#if>) {

        super(dataProvider);<#if includeHandler>
        this.handler = handler;</#if>
    }
}
