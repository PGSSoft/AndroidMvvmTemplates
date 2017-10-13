package ${packageName}.adapters.base.interfaces;

public interface IDataProvider<TModel extends IIdProvider> {

    int getCount();
    TModel getItem(int position);
    void refresh();
}
