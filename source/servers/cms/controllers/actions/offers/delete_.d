module servers.cms.controllers.actions.offers.delete_;

@safe:
import servers.cms;

class DCMSOffersDeleteActionController : DActionController {
  mixin(ControllerThis!("CMSOffersDeleteActionController"));
}
mixin(ControllerCalls!("CMSOffersDeleteActionController", "DCMSOffersDeleteActionController"));
