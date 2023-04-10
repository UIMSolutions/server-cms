module servers.cms.controllers.actions.themes.delete_;

@safe:
import servers.cms;

class DCMSThemesDeleteActionController : DActionController {
  mixin(ControllerThis!("CMSThemesDeleteActionController"));
}
mixin(ControllerCalls!("CMSThemesDeleteActionController", "DCMSThemesDeleteActionController"));
