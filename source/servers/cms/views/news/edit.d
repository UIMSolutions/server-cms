module servers.cms.views.news.edit;

@safe:
import servers.cms;

class DCMSNewsEditView : DCMSView {
  mixin(ViewThis!("CMSNewsEditView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("News -> Edit")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/news", "News"],
            [this.rootPath~"/news/edit", "Edit"]
          );
  }
}
mixin(ViewCalls!("CMSNewsEditView", "DCMSNewsEditView"));