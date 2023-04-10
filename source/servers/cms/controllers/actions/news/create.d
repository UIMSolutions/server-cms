module servers.cms.controllers.actions.news.create;

@safe:
import servers.cms;

class DCMSNewsCreateActionController : DActionController {
  mixin(ControllerThis!("CMSNewsCreateActionController"));
}
mixin(ControllerCalls!("CMSNewsCreateActionController", "DCMSNewsCreateActionController"));
