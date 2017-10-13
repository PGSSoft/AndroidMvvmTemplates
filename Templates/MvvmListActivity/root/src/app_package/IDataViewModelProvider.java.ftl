package ${packageName}.adapters.base.interfaces;

public interface IDataViewModelProvider<TModel> {

    IDataViewModel<TModel> getViewModel();
}
