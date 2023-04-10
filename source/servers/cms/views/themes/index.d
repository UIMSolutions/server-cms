module servers.cms.views.themes.index;

@safe:
import servers.cms;

class DCMSThemesIndexView : DCMSView {
  mixin(MVCViewThis!("CMSThemesIndexView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Themes -> Index")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/themes", "Themes"]
          );
  }
}
mixin(MVCViewCalls!("CMSThemesIndexView", "DCMSThemesIndexView"));