module servers.cms.controllers.actions.news.delete_;

@safe:
import servers.cms;

class DCMSNewsDeleteActionController : DActionController {
  mixin(ControllerThis!("CMSNewsDeleteActionController"));
}
mixin(ControllerCalls!("CMSNewsDeleteActionController", "DCMSNewsDeleteActionController"));
