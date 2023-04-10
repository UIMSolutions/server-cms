module servers.cms.views.news.delete_;

@safe:
import servers.cms;

class DCMSNewsDeleteView : DCMSView {
  mixin(MVCViewThis!("CMSNewsDeleteView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("News -> Delete")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/news", "News"],
            [this.rootPath~"/news/delete", "Delete"]
          );
  }
}
mixin(ViewCalls!("CMSNewsDeleteView", "DCMSNewsDeleteView"));
