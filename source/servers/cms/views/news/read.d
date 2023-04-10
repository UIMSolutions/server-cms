module servers.cms.views.news.read;

@safe:
import servers.cms;

class DCMSNewsReadView : DCMSView {
  mixin(MVCViewThis!("CMSNewsReadView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("News -> Read")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/news", "News"],
            [this.rootPath~"/news/read", "Read"]
          );
  }
}
mixin(MVCViewCalls!("CMSNewsReadView", "DCMSNewsReadView"));