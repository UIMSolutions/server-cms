module servers.cms.views.blogs.delete_;

@safe:
import servers.cms;

class DCMSBlogsDeleteView : DCMSDeleteView {
  mixin(ViewThis!("CMSBlogsDeleteView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .pageHeader(MVCDeletePageHeader.rootPath(rootPath))
      .pageBody(MVCPageBodyViewComponent)
      .pageFooter(MVCPageFooterViewComponent);  
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Blogs -> Delete")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/blogs", "Blogs"],
            [this.rootPath~"/blogs/delete", "Delete"]
          );
  }
}
mixin(ViewCalls!("CMSBlogsDeleteView", "DCMSBlogsDeleteView"));
