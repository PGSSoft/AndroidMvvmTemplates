package ${packageName}.viewmodels;

import android.content.Context;
import android.databinding.BaseObservable;
import android.databinding.ObservableField;

import ${packageName}.R;
import ${packageName}.common.EditorAction;
import ${packageName}.viewmodels.interfaces.I${activityName}ActivityAccess;
import ${entityPackage}.${entityName};
${passRepository?string("import "+packageName+".services.Repository;", "")}
${passMessagingService?string("import "+packageName+".services.MessagingService;", "")}

public class ${activityName}ActivityViewModel extends BaseObservable {

	/*

    // Private fields ---------------------------------------------------------

	private I${activityName}ActivityAccess access;
    private EditorAction editorAction;
    private final ${entityName} edited${entityName};
    private final Context context;
	${passRepository?string("private final Repository repository;","")}
	${passMessagingService?string("private final MessagingService messagingService;","")}

	// private final ObservableField<String> name;
	
    // Private methods --------------------------------------------------------

    private void updateObservablesFromEntity() {
		
        // name.set(edited${entityName}.getName());       
    }

    private void updateEntityFromObservables() {

		// edited${entityName}.setName(name.get());        
    }

    // Public methods ---------------------------------------------------------

    public ${activityName}ActivityViewModel(I${activityName}ActivityAccess access,
                                            Context context,${passRepository?string(" Repository repository, ", "")}${passMessagingService?string("MessagingService messagingService, ","")}
                                            EditorAction editorAction,
                                            ${entityName} edited${entityName}) {

        this.access = access;
        this.context = context;
        this.editorAction = editorAction;
        this.edited${entityName} = edited${entityName};
		${passRepository?string("this.repository = repository;","")}
		${passMessagingService?string("this.messagingService = messagingService;","")}
		
        // name = new ObservableString();

        updateObservablesFromEntity();
    }

    public static ${activityName}ActivityViewModel createForNew${entityName}(I${activityName}ActivityAccess access,
                                                                         Context context${passRepository?string(", Repository repository", "")}${passMessagingService?string(", MessagingService messagingService","")}) {

        ${entityName} new${entityName} = new ${entityName}();
        return new ${activityName}ActivityViewModel(access, context, ${passRepository?string("repository, ", "")}${passMessagingService?string("messagingService, ","")}EditorAction.New, new${entityName});
    }

    public static ${activityName}ActivityViewModel createForEdit${entityName}(I${activityName}ActivityAccess access,
                                                                          Context context${passRepository?string(", Repository repository", "")}${passMessagingService?string(", MessagingService messagingService","")},
                                                                          int id) {

        ${entityName} edit${entityName} = ${passRepository?string("","null; // ")}repository.get${entityName}(id);
        return new ${activityName}ActivityViewModel(access, context, ${passRepository?string("repository, ", "")}${passMessagingService?string("messagingService, ","")}EditorAction.Edit, edit${entityName});
    }

    public void save() {

        updateEntityFromObservables();

        if (editorAction == EditorAction.New) {
            
			${passRepository?string("","// ")}repository.create${entityName}(edited${entityName});
            access.close();
        } else {
            
			${passRepository?string("","// ")}repository.update${entityName}(edited${entityName});
            access.close();
        }
    }

    public void back() {

		${passMessagingService?string("","/*")}
        messagingService.ask(context, R.string.${resourcePrefix}_title, R.string.${resourcePrefix}_quitQuestion, new MessagingService.AnswerListener() {
            @Override
            public void onPositive() {
                
                access.close();
            }
        
            @Override
            public void onNegative() {
        
            }
        });
		${passMessagingService?string("","*/")}
    }

    // public ObservableString getName() {
    //     return name;
    // }
	
	*/
}
