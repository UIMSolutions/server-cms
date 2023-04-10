module servers.cms.controllers.actions.create;

@safe:
import servers.cms;

class DCMSCreateActionController : DActionController {
  mixin(ControllerThis!("CMSCreateActionController"));
  
  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSCreateActionController~":DCMSCreateActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSCreateActionController", "DCMSCreateActionController"));
