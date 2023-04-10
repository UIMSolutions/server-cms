module servers.cms.views.blogs.edit;

@safe:
import servers.cms;

class DCMSBlogsEditView : DCMSEditView {
  mixin(ViewThis!("CMSBlogsEditView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .pageHeader(
        MVCEditPageHeader.rootPath(rootPath))
      .pageBody(MVCPageBodyViewComponent)
      .pageFooter(MVCPageFooterViewComponent); 
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
mixin(ViewCalls!("CMSBlogsEditView", "DCMSBlogsEditView"));