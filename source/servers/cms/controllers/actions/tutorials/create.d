module servers.cms.controllers.actions.tutorials.create;

@safe:
import servers.cms;

class DCMSTutorialsCreateActionController : DCMSCreateActionController {
  mixin(ControllerThis!("CMSTutorialsCreateActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSTutorialsCreateActionController~":DCMSTutorialsCreateActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSTutorialsCreateActionController", "DCMSTutorialsCreateActionController"));
