package ${packageName}.adapters.base.interfaces;

public interface IDataViewModel<TModel> {

    void setData(TModel model);
	void setLayoutPositionProvider(ILayoutPositionProvider provider);
}
