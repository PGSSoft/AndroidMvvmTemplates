package ${packageName}.adapters.base;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.adapters.base.interfaces.IDataProvider;
import ${packageName}.adapters.base.interfaces.IIdProvider;
import ${packageName}.adapters.base.interfaces.IDataViewModelProvider;

public abstract class BaseMvvmAdapter<TModel extends IIdProvider,
            TView extends View & IDataViewModelProvider<TModel>,
            TViewHolder extends RecyclerView.ViewHolder & IDataViewModelProvider<TModel>>
        extends RecyclerView.Adapter<TViewHolder> {

    // Private fields ---------------------------------------------------------

    private final IDataProvider<TModel> provider;

    // Public methods ---------------------------------------------------------

    public BaseMvvmAdapter(IDataProvider<TModel> dataProvider) {

        setHasStableIds(true);
        this.provider = dataProvider;
    }

    @Override
    public abstract TViewHolder onCreateViewHolder(ViewGroup parent, int viewType);

    @Override
    public void onBindViewHolder(TViewHolder holder, int position) {

        TModel item = provider.getItem(position);
        holder.getViewModel().setData(item);
    }

    @Override
    public long getItemId(int position) {

        TModel item = provider.getItem(position);
        return item.getId();
    }

    @Override
    public int getItemCount() {

        return provider.getCount();
    }
}
