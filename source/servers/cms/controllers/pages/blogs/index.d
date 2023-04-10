module servers.cms.controllers.pages.blogs.index;

@safe:
import servers.cms;

class DCMSBlogsIndexPageController : DPageController {
  mixin(ControllerThis!("CMSBlogsIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSBlogsIndexView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsIndexPageController~":DCMSBlogsIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSBlogsIndexPageController", "DCMSBlogsIndexPageController"));
