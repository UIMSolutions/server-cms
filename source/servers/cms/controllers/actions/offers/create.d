module servers.cms.controllers.actions.offers.create;

@safe:
import servers.cms;

class DCMSOffersCreateActionController : DActionController {
  mixin(ControllerThis!("CMSOffersCreateActionController"));
}
mixin(ControllerCalls!("CMSOffersCreateActionController", "DCMSOffersCreateActionController"));
