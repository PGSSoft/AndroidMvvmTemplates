<?xml version="1.0"?>
<recipe>
 
    <instantiate from="res/layout/activity.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
	<instantiate from="res/layout/view.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${viewLayout}.xml" />
		
	<#if createBaseAdapters>
		
		<instantiate from="src/app_package/IDataProvider.java.ftl"
			to="${escapeXmlAttribute(srcOut)}/adapters/base/interfaces/IDataProvider.java" />
		<instantiate from="src/app_package/IDataViewModel.java.ftl"
			to="${escapeXmlAttribute(srcOut)}/adapters/base/interfaces/IDataViewModel.java" />
		<instantiate from="src/app_package/IDataViewModelProvider.java.ftl"
			to="${escapeXmlAttribute(srcOut)}/adapters/base/interfaces/IDataViewModelProvider.java" />
		<instantiate from="src/app_package/IIdProvider.java.ftl"
			to="${escapeXmlAttribute(srcOut)}/adapters/base/interfaces/IIdProvider.java" />
		<instantiate from="src/app_package/BaseMvvmAdapter.java.ftl"
			to="${escapeXmlAttribute(srcOut)}/adapters/base/BaseMvvmAdapter.java" />
		<instantiate from="src/app_package/BaseSimpleAdapter.java.ftl"
			to="${escapeXmlAttribute(srcOut)}/adapters/base/BaseSimpleAdapter.java" />	
		<instantiate from="src/app_package/ILayoutPositionProvider.java.ftl"
			to="${escapeXmlAttribute(srcOut)}/adapters/base/interfaces/ILayoutPositionProvider.java" />
		<instantiate from="src/app_package/IPositionedView.java.ftl"
			to="${escapeXmlAttribute(srcOut)}/adapters/base/interfaces/IPositionedView.java" />
		<instantiate from="src/app_package/BaseListItemViewModel.java.ftl"
			to="${escapeXmlAttribute(srcOut)}/viewmodels/base/BaseListItemViewModel.java" />
		
	</#if>
		
    <instantiate from="src/app_package/Activity.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/activities/${activityName}Activity.java" />
	<instantiate from="src/app_package/ViewModel.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewmodels/${activityName}ActivityViewModel.java" />
	<instantiate from="src/app_package/ActivityAccess.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewmodels/I${activityName}ActivityAccess.java" />
	<instantiate from="src/app_package/Adapter.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/adapters/${generatedName}Adapter.java" />	
	<instantiate from="src/app_package/View.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/views/${viewName}View.java" />	
	<instantiate from="src/app_package/ViewViewModel.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/viewmodels/${viewName}ViewModel.java" />	
	<instantiate from="src/app_package/ViewAccess.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/viewmodels/I${viewName}ViewAccess.java" />	

	<#if includeHandler>

		<instantiate from="src/app_package/Handler.java.ftl"
			to="${escapeXmlAttribute(srcOut)}/viewmodels/I${generatedName}Handler.java" />	
		
	</#if>

	<#if includePopup>

		<instantiate from="res/menu/Popup.xml.ftl"
			to="${escapeXmlAttribute(resOut)}/menu/${camelCaseToUnderscore(generatedName)?lower_case}_popup.xml" />	

	</#if>
	
			
    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <merge from="res/values/manifest_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
 
	<open file="${srcOut}/activities/${activityName}Activity.java"/>
</recipe>
