module servers.cms.pages.index;

@safe:
import servers.cms;

void uimIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimIndex~":uimIndex");

  // CMSIndexPageController(thisServer).request(req, res);
}

/* static this() {
  server.indexPage(new class DAPPPageController {
    this()
     { 
      super();
      this
      .checks([APPCheckAppSession, APPCheckSession]);
    }
  );
  server.obj("sites/select", APPActionSetSite);
}

 */
