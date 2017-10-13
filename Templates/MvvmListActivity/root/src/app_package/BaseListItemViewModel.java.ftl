package ${packageName}.viewmodels.base;

import android.databinding.BaseObservable;

import ${packageName}.adapters.base.interfaces.IDataViewModel;
import ${packageName}.adapters.base.interfaces.ILayoutPositionProvider;

public abstract class BaseListItemViewModel<TModel> extends BaseObservable implements IDataViewModel<TModel> {

    private ILayoutPositionProvider positionProvider;

    protected TModel data;

    protected abstract void publishModel();

    protected final int getPosition() {

        return positionProvider.getLayoutPosition();
    }

    @Override
    public final void setData(TModel data) {

        this.data = data;
        publishModel();
    }

    @Override
    public void setLayoutPositionProvider(ILayoutPositionProvider provider) {

        this.positionProvider = provider;
    }
}
