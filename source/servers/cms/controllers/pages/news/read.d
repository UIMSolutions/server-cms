module servers.cms.controllers.pages.news.read;

@safe:
import servers.cms;

class DCMSNewsReadPageController : DPageController {
  mixin(ControllerThis!("CMSNewsReadPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSNewsReadView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSNewsReadPageController~":DCMSNewsReadPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSNewsReadPageController", "DCMSNewsReadPageController"));
