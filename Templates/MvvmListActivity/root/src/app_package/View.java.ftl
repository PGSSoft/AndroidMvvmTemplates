package ${packageName}.views;

import android.content.Context;
import android.databinding.DataBindingUtil;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.PopupMenu;

import ${packageName}.App;
import ${packageName}.R;
import ${packageName}.adapters.base.interfaces.IDataViewModelProvider;
import ${packageName}.databinding.View${viewName}Binding;
import ${entityPackage}.${entityName};
import ${packageName}.viewmodels.${viewName}ViewModel;<#if includeHandler>
import ${packageName}.viewmodels.I${generatedName}Handler;</#if>
import ${packageName}.viewmodels.I${viewName}ViewAccess;
import ${packageName}.adapters.base.interfaces.ILayoutPositionProvider;
import ${packageName}.adapters.base.interfaces.IPositionedView;

public class ${viewName}View extends FrameLayout implements I${viewName}ViewAccess, IDataViewModelProvider<${entityName}>, IPositionedView {

    // Private fields ---------------------------------------------------------

    private View${viewName}Binding binding;
    private ${viewName}ViewModel viewModel;

	<#if includePopup>
    // Private event handlers -------------------------------------------------

    private PopupMenu.OnMenuItemClickListener popupMenuClickListener = new PopupMenu.OnMenuItemClickListener() {
        @Override
        public boolean onMenuItemClick(MenuItem item) {
            switch (item.getItemId()) {
                case R.id.${idPrefix}_miAction: {
                    viewModel.performAction();
                    return true;
                }
                default:
                    throw new IllegalArgumentException("Invalid menu item!");
            }
        }
    };
	</#if>
    // Private methods --------------------------------------------------------

	<#if includePopup && popupKind == "longpress">
    private void initializeControls() {

        binding.${idPrefix}Main.setOnLongClickListener(new OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {

                PopupMenu popupMenu = new PopupMenu(${viewName}View.this.getContext(), v);
                popupMenu.inflate(R.menu.${camelCaseToUnderscore(generatedName)?lower_case}_popup);
                popupMenu.setOnMenuItemClickListener(popupMenuClickListener);
                popupMenu.show();
                return true;
            }
        });
    }
	</#if>
	
    // Public methods ---------------------------------------------------------

    public ${viewName}View(Context context<#if includeHandler>, I${generatedName}Handler handler</#if>) {

        super(context);

        this.binding = DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.${viewLayout}, this, true);

		<#if includePopup && popupKind == "longpress">
        initializeControls();
		</#if>

        this.viewModel = new ${viewName}ViewModel(this<#if includeHandler>, handler</#if>, App.getRepository());
        this.binding.setViewModel(viewModel);

        this.setFocusable(false);
    }

	<#if includePopup && popupKind == "morebutton">
	@Override
	public void showMore() {
	
	    PopupMenu popupMenu = new PopupMenu(this.getContext(), binding.${idPrefix}BMore);
        popupMenu.inflate(R.menu.${camelCaseToUnderscore(generatedName)?lower_case}_popup);
        popupMenu.setOnMenuItemClickListener(popupMenuClickListener);
        popupMenu.show();
	}
	</#if>
	
    public ${viewName}ViewModel getViewModel() {
        return viewModel;
    }
	
    @Override
    public void setPositionProvider(ILayoutPositionProvider provider) {

        viewModel.setLayoutPositionProvider(provider);
    }	
}
