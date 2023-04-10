module servers.cms.controllers.actions.tutorials.update;

@safe:
import servers.cms;

class DCMSTutorialsUpdateActionController : DCMSUpdateActionController {
  mixin(ControllerThis!("CMSTutorialsUpdateActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSTutorialsUpdateActionController~":DCMSTutorialsUpdateActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }   
}
mixin(ControllerCalls!("CMSTutorialsUpdateActionController", "DCMSTutorialsUpdateActionController"));
