module servers.cms.controllers.actions.blogs.create;

@safe:
import servers.cms;

class DCMSBlogsCreateActionController : DCMSCreateActionController {
  mixin(ControllerThis!("CMSBlogsCreateActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsCreateActionController~":DCMSBlogsCreateActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSBlogsCreateActionController", "DCMSBlogsCreateActionController"));
