module servers.cms.controllers.actions.themes.update;

@safe:
import servers.cms;

class DCMSThemesUpdateActionController : DActionController {
  mixin(ControllerThis!("CMSThemesUpdateActionController"));
}
mixin(ControllerCalls!("CMSThemesUpdateActionController", "DCMSThemesUpdateActionController"));
