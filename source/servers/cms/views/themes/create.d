module servers.cms.views.themes.create;

@safe:
import servers.cms;

class DCMSThemesCreateView : DCMSView {
  mixin(MVCViewThis!("CMSThemesCreateView"));



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
mixin(MVCViewCalls!("CMSThemesCreateView", "DCMSThemesCreateView"));
