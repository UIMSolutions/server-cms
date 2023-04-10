module servers.cms.views.themes.create;

@safe:
import servers.cms;

class DCMSThemesCreateView : DCMSView {
  mixin(ViewThis!("CMSThemesCreateView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Themes -> Create")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/themes", "Themes"],
            [this.rootPath~"/themes/create", "Create"]
          );
  }
}
mixin(ViewCalls!("CMSThemesCreateView", "DCMSThemesCreateView"));
