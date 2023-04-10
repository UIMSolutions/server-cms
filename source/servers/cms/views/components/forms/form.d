module servers.cms.views.components.forms.form;

@safe:
import servers.cms;

class DCMSFormViewComponent : DMVCViewComponent {
  mixin(MVCViewComponentThis!("CMSFormViewComponent"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);     
  }
}
mixin(MVCViewComponentCalls!("CMSFormViewComponent", "DCMSFormViewComponent"));
mixin(MVCViewComponentCalls!("CMSForm", "DCMSFormViewComponent"));
