<?xml version="1.0"?>
<recipe>
 
	<instantiate from="src/app_package/Activity.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/activities/${activityName}Activity.java" />
	<instantiate from="src/app_package/Viewmodel.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewmodels/${activityName}ActivityViewModel.java" />
	<instantiate from="src/app_package/ActivityAccess.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewmodels/interfaces/I${activityName}ActivityAccess.java" />
	<instantiate from="src/app_package/EditorAction.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/common/EditorAction.java" />
    <instantiate from="res/layout/activity.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <instantiate from="res/menu/toolbar_menu.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/menu/toolbar_${camelCaseToUnderscore(activityName)}.xml" />
 
    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <merge from="res/values/manifest_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
 
	<open file="${srcOut}/activities/${activityName}Activity.java"/>
</recipe>