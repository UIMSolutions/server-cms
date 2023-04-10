module servers.cms.controllers.actions.news.update;

@safe:
import servers.cms;

class DCMSNewsUpdateActionController : DActionController {
  mixin(ControllerThis!("CMSNewsUpdateActionController"));
}
mixin(ControllerCalls!("CMSNewsUpdateActionController", "DCMSNewsUpdateActionController"));
