module servers.cms.controllers.actions.blogs.update;

@safe:
import servers.cms;

class DCMSBlogsUpdateActionController : DCMSUpdateActionController {
  mixin(ControllerThis!("CMSBlogsUpdateActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsUpdateActionController~":DCMSBlogsUpdateActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }   
}
mixin(ControllerCalls!("CMSBlogsUpdateActionController", "DCMSBlogsUpdateActionController"));
