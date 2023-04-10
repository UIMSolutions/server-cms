module servers.cms.views.index;

@safe:
import servers.cms;

class DCMSIndexView : DCMSView {
  mixin(ViewThis!("CMSIndexView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("CMS -> Index");
  }
}
mixin(ViewCalls!("CMSIndexView", "DCMSIndexView"));
