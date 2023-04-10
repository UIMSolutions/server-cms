module servers.cms.views.themes.edit;

@safe:
import servers.cms;

class DCMSThemesEditView : DCMSView {
  mixin(MVCViewThis!("CMSThemesEditView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Themes -> Edit")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/themes", "Themes"],
            [this.rootPath~"/themes/edit", "Edit"]
          );
  }
}
mixin(MVCViewCalls!("CMSThemesEditView", "DCMSThemesEditView"));