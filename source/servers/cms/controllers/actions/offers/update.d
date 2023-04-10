module servers.cms.controllers.actions.offers.update;

@safe:
import servers.cms;

class DCMSOffersUpdateActionController : DActionController {
  mixin(ControllerThis!("CMSOffersUpdateActionController"));
}
mixin(ControllerCalls!("CMSOffersUpdateActionController", "DCMSOffersUpdateActionController"));
