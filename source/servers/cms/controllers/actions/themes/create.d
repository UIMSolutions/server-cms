module servers.cms.controllers.actions.themes.create;

@safe:
import servers.cms;

class DCMSThemesCreateActionController : DActionController {
  mixin(ControllerThis!("CMSThemesCreateActionController"));
}
mixin(ControllerCalls!("CMSThemesCreateActionController", "DCMSThemesCreateActionController"));
