module servers.cms.views.edit;

@safe:
import servers.cms;

class DCMSEditView : DCMSView {
  mixin(ViewThis!("CMSEditView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .pageHeader(
        MVCEditPageHeader.rootPath(rootPath))
      .pageBody(PageBodyViewComponent)
      .pageFooter(PageFooterViewComponent); 
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Blogs -> Edit")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            ["/cms", "CMS"],
            [this.rootPath~"/blogs", "Blogs"],
            [this.rootPath~"/blogs/edit", "Edit"]
          );
  }
}
mixin(ViewCalls!("CMSEditView", "DCMSEditView"));