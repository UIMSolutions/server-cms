module servers.cms.views.blogs.index;

@safe:
import servers.cms;

class DCMSBlogsIndexView : DCMSIndexView {
  mixin(MVCViewThis!("CMSBlogsIndexView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .pageHeader(
        MVCIndexPageHeader.rootPath(rootPath))
      .pageBody(MVCPageBodyViewComponent)
      .pageFooter(MVCPageFooterViewComponent);  
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Blogs -> Index")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/blogs", "Blogs"]
          );
  }
}
mixin(MVCViewCalls!("CMSBlogsIndexView", "DCMSBlogsIndexView"));