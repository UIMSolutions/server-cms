module servers.cms.views.news.index;

@safe:
import servers.cms;

class DCMSNewsIndexView : DCMSView {
  mixin(MVCViewThis!("CMSNewsIndexView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("News -> Index")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/news", "News"]
          );
  }
}
mixin(MVCViewCalls!("CMSNewsIndexView", "DCMSNewsIndexView"));