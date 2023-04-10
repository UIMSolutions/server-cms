module servers.cms.controllers.actions.delete_;

@safe:
import servers.cms;

class DCMSDeleteActionController : DActionController {
  mixin(ControllerThis!("CMSDeleteActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSDeleteActionController~":DCMSDeleteActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }   
}
mixin(ControllerCalls!("CMSDeleteActionController", "DCMSDeleteActionController"));
