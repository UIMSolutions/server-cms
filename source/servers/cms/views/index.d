module servers.cms.views.index;

@safe:
import servers.cms;

class DCMSIndexView : DCMSView {
  mixin(MVCViewThis!("CMSIndexView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("CMS -> Index");
  }
}
mixin(MVCViewCalls!("CMSIndexView", "DCMSIndexView"));
