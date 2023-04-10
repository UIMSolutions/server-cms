module servers.cms.controllers.actions.update;

@safe:
import servers.cms;

class DCMSUpdateActionController : DActionController {
  mixin(ControllerThis!("CMSUpdateActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSUpdateActionController~":DCMSUpdateActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }   
}
mixin(ControllerCalls!("CMSUpdateActionController", "DCMSUpdateActionController"));
