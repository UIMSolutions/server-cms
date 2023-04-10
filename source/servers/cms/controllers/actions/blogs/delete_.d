module servers.cms.controllers.actions.blogs.delete_;

@safe:
import servers.cms;

class DCMSBlogsDeleteActionController : DCMSDeleteActionController {
  mixin(ControllerThis!("CMSBlogsDeleteActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsDeleteActionController~":DCMSBlogsDeleteActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }   
}
mixin(ControllerCalls!("CMSBlogsDeleteActionController", "DCMSBlogsDeleteActionController"));
