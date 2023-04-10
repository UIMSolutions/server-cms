module servers.cms.views.read;

@safe:
import servers.cms;

class DCMSReadView : DCMSView {
  mixin(MVCViewThis!("CMSReadView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .pageHeader(
        MVCReadPageHeader.rootPath(rootPath))
      .pageBody(PageBodyViewComponent)
      .pageFooter(PageFooterViewComponent)
      .rootPath(rootPath); 
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ViewCalls!("CMSReadView", "DCMSReadView"));