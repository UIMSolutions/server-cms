module servers.cms.views.components.forms.form;

@safe:
import servers.cms;

class DCMSFormViewComponent : DViewComponent {
  mixin(ViewComponentThis!("CMSFormViewComponent"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);     
  }
}
mixin(ViewComponentCalls!("CMSFormViewComponent", "DCMSFormViewComponent"));
mixin(ViewComponentCalls!("CMSForm", "DCMSFormViewComponent"));
