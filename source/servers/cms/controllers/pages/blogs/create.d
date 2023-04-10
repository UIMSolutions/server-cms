module servers.cms.controllers.pages.blogs.create;

@safe:
import servers.cms;

class DCMSBlogsCreatePageController : DPageController {
  mixin(ControllerThis!("CMSBlogsCreatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSBlogsCreateView(this))
      .rootPath("/cms/blogs") 
      .collectionName("cms_blogs");     

    if (auto vw = cast(DCMSBlogsEditView)this.view) {
      if (auto form = cast(DForm)vw.form) {
        this
          .scripts
            .addContents(
              editorSummary~
              editorText,
        `window.addEventListener('load', (event) => {
          document.getElementById("`~form.id~`").addEventListener("submit", event => {
            editorSummary.save();
            editorText.save();
          })
        });`);
      }
    }
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsCreatePageController~":DCMSBlogsCreatePageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSBlogsCreatePageController", "DCMSBlogsCreatePageController"));
