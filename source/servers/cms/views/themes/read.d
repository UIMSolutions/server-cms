module servers.cms.views.themes.read;

@safe:
import servers.cms;

class DCMSThemesReadView : DCMSView {
  mixin(ViewThis!("CMSThemesReadView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Themes -> Read")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/themes", "Themes"],
            [this.rootPath~"/themes/read", "Read"]
          );
  }
}
mixin(ViewCalls!("CMSThemesReadView", "DCMSThemesReadView"));