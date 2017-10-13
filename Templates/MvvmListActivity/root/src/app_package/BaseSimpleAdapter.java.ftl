package ${packageName}.adapters.base;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.adapters.base.interfaces.IDataProvider;
import ${packageName}.adapters.base.interfaces.IDataViewModel;
import ${packageName}.adapters.base.interfaces.IDataViewModelProvider;
import ${packageName}.adapters.base.interfaces.IIdProvider;
import ${packageName}.adapters.base.interfaces.ILayoutPositionProvider;
import ${packageName}.adapters.base.interfaces.IPositionedView;

/**
 * Created by Wojciech on 2017-04-06.
 */

public abstract class BaseSimpleAdapter<TModel extends IIdProvider, TView extends View & IDataViewModelProvider<TModel> & IPositionedView>
        extends BaseMvvmAdapter<TModel, TView, BaseSimpleAdapter.BaseMvvmViewHolder<TModel, TView>> {

    // Public types -----------------------------------------------------------

    public static class BaseMvvmViewHolder<TModel, TView extends View & IDataViewModelProvider<TModel> & IPositionedView> extends RecyclerView.ViewHolder implements IDataViewModelProvider<TModel>, ILayoutPositionProvider  {

        private TView view;

        public BaseMvvmViewHolder(TView view) {
            super(view);
            this.view = view;
			view.setPositionProvider(this);
        }

        public IDataViewModel<TModel> getViewModel() {

            return view.getViewModel();
        }
    }

    // Protected methods ------------------------------------------------------

    protected abstract TView createView(ViewGroup parent, int viewType);

    // Public methods ---------------------------------------------------------

    @Override
    public BaseMvvmViewHolder<TModel, TView> onCreateViewHolder(ViewGroup parent, int viewType) {

        return new BaseMvvmViewHolder<>(createView(parent, viewType));
    }

    public BaseSimpleAdapter(IDataProvider<TModel> dataProvider) {
        super(dataProvider);
    }
}
