<?xml version="1.0"?>
<recipe>
 
	<instantiate from="src/app_package/View.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/views/${viewName}View.java" />
	<instantiate from="src/app_package/Viewmodel.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewmodels/${viewName}ViewModel.java" />
	<instantiate from="src/app_package/ViewAccess.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewmodels/interfaces/I${viewName}ViewAccess.java" />
    <instantiate from="res/layout/view.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
 
	<open file="${srcOut}/views/${viewName}View.java"/>
</recipe>