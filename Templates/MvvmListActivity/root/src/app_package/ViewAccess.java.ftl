package ${packageName}.viewmodels;

public interface I${viewName}ViewAccess {

	<#if popupKind == "morebutton">
	void showMore();
	</#if>
}
