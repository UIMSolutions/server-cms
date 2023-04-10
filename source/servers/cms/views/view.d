module servers.cms.views.view;

@safe:
import servers.cms;

class DCMSView : DMVCView {
  mixin(MVCViewThis!("CMSView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .pageHeader(MVCPageHeaderViewComponent.rootPath(rootPath))
      .pageBody(MVCPageBodyViewComponent)
      .pageFooter(MVCPageFooterViewComponent)      
      .rootPath("/cms");
  }

  mixin(OProperty!("DMVCPageHeaderViewComponent", "pageHeader"));
  mixin(OProperty!("DMVCPageBodyViewComponent", "pageBody"));
  mixin(OProperty!("DMVCPageFooterViewComponent", "pageFooter"));

  override void _afterSetEntity() {
    super._afterSetEntity;

    if (pageHeader) pageHeader.entity(this.entity);
    if (pageBody)   pageBody.entity(this.entity);
    if (pageFooter) pageFooter.entity(this.entity);
  }

  override void _afterSetEntities() {
    super._afterSetEntities;

    if (pageHeader) pageHeader.entities(this.entities);
    if (pageBody)   pageBody.entities(this.entities);
    if (pageFooter) pageFooter.entities(this.entities);
  }

  override void _afterSetRootpath() {
    super._afterSetRootpath;

    if (pageHeader) pageHeader.rootPath(this.rootPath);
    if (pageBody)   pageBody.rootPath(this.rootPath);
    if (pageFooter) pageFooter.rootPath(this.rootPath);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!CMSView~":CMSView("~this.name~")::toH5");
    super.toH5(options);

    return 
      this.pageHeader.toH5~
      this.pageBody.toH5~
      this.pageFooter.toH5;
  }
}
mixin(MVCViewCalls!("CMSView", "DCMSView"));
