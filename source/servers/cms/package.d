module servers.cms;

@safe:
mixin ImportPhobos;
mixin ImportDubs;
mixin ImportUim;

public import colored;

// Additional imports
public import uim.models;
public import uim.jsonbase;
public import uim.entitybase;
public import uim.mvc;
public import uim.apps;
public import uim.servers;
public import uim.cms;

// cms library
/* public import uim.cms; */

// server-cms packages
public import servers.cms.controllers;
public import servers.cms.layouts;
public import servers.cms.views;

// Required models
public import models.systems;
public import models.cms;

public import layouts.tabler;

// mixin(ImportLocal!("cms"));

string[size_t] errorMessages;
static this() {
/*   thisServer = APPApplication
    .layout(
      CMSLayout); */

/*   thisServer.scripts
      .addLinks(
        "/js/apps/cms/app.js"); */

  thisServer = Server
    .rootPath("*")
    .layout(CMSGeneralLayout)
    .addRoute(Route("/", HTTPMethod.GET, CMSIndexPageController))
    .addRoute(Route("/login", HTTPMethod.GET, LoginPageController))
    .addRoute(Route("/login2", HTTPMethod.GET, Login2PageController))
    .addRoute(Route("/logout", HTTPMethod.GET, LogoutPageController))
    .addRoute(Route("/signin", HTTPMethod.GET, SignInPageController))
    .addRoute(Route("/signinlink", HTTPMethod.GET, SignInLinkPageController))
    .addRoute(Route("/signup", HTTPMethod.GET, SignUpPageController));

  /* thisApplication = Application
    .rootPath("/")
    .layout(new DCMSGeneralLayout)
    .addRoute(Route("/",           HTTPMethod.GET, CMSIndexPageController.layout(CMSGeneralLayout)))

    // Routing for Blogs
    .addRoute(Route("blogs",        HTTPMethod.GET, CMSBlogsIndexPageController))
    .addRoute(Route("blogs/create", HTTPMethod.GET, CMSBlogsCreatePageController))
    .addRoute(Route("blogs/create_action", HTTPMethod.POST, CMSBlogsCreateActionController))
    .addRoute(Route("blogs/read",   HTTPMethod.GET, CMSBlogsReadPageController))
    .addRoute(Route("blogs/edit", HTTPMethod.GET, CMSBlogsEditPageController))
    .addRoute(Route("blogs/update_action", HTTPMethod.POST, CMSBlogsUpdateActionController))
    .addRoute(Route("blogs/delete", HTTPMethod.GET, CMSBlogsDeletePageController))
    .addRoute(Route("blogs/delete_action", HTTPMethod.POST, CMSBlogsDeleteActionController))

    // Routing for News    
    .addRoute(Route("news",        HTTPMethod.GET, CMSNewsIndexPageController))
    .addRoute(Route("news/create", HTTPMethod.GET, CMSNewsCreatePageController))
    //.addRoute(Route("news/create_action", HTTPMethod.POST, CMSNewsCreateActionController))
    .addRoute(Route("news/read",   HTTPMethod.GET, CMSNewsReadPageController))
    // .addRoute(Route("news/edit", HTTPMethod.GET, CMSNewsEditPageController))
    .addRoute(Route("news/update_action", HTTPMethod.POST, CMSNewsUpdateActionController))
    // .addRoute(Route("news/delete", HTTPMethod.GET, CMSNewsDeletePageController))
    .addRoute(Route("news/delete_action", HTTPMethod.POST, CMSNewsDeleteActionController))

    // Routing for Themes
    .addRoute(Route("theme",        HTTPMethod.GET, CMSThemesIndexPageController))
    .addRoute(Route("theme/create", HTTPMethod.GET, CMSThemesCreatePageController))
    .addRoute(Route("theme/create_action", HTTPMethod.POST, CMSThemesCreateActionController))
    .addRoute(Route("theme/read",   HTTPMethod.GET, CMSThemesReadPageController))
    .addRoute(Route("theme/edit", HTTPMethod.GET, CMSThemesEditPageController))
    .addRoute(Route("theme/update_action", HTTPMethod.POST, CMSThemesUpdateActionController))
    .addRoute(Route("theme/delete", HTTPMethod.GET, CMSThemesDeletePageController))
    .addRoute(Route("theme/delete_action", HTTPMethod.POST, CMSThemesDeleteActionController)); */
}

auto editorSummary = `const editorSummary = KothingEditor.create("entity_summary", {
  display: "block",
  width: "100%",
  height: "auto",
  popupDisplay: "full",
  katex: katex,
  toolbarItem: [
    ["undo", "redo"],
    ["font", "fontSize", "formatBlock"],
    ["bold", "underline", "italic", "strike", "subscript", "superscript", "fontColor", "hiliteColor"],
    ["outdent", "indent", "align", "list", "horizontalRule"],
    ["link", "table", "image", "audio", "video"],
    ["lineHeight", "paragraphStyle", "textStyle"],
    ["showBlocks", "codeView"],
    ["math"],
    ["preview", "print", "fullScreen"],
    ["save", "template"],
    ["removeFormat"],
  ],
  templates: [
    {
      name: "Template-1",
      html: "<p>HTML source1</p>",
    },
    {
      name: "Template-2",
      html: "<p>HTML source2</p>",
    },
  ],
  charCounter: true,
});`;

auto editorText = `const editorText = KothingEditor.create("entity_text", {
  display: "block",
  width: "100%",
  height: "auto",
  popupDisplay: "full",
  katex: katex,
  toolbarItem: [
    ["undo", "redo"],
    ["font", "fontSize", "formatBlock"],
    ["bold", "underline", "italic", "strike", "subscript", "superscript", "fontColor", "hiliteColor"],
    ["outdent", "indent", "align", "list", "horizontalRule"],
    ["link", "table", "image", "audio", "video"],
    ["lineHeight", "paragraphStyle", "textStyle"],
    ["showBlocks", "codeView"],
    ["math"],
    ["preview", "print", "fullScreen"],
    ["save", "template"],
    ["removeFormat"],
  ],
  templates: [
    {
      name: "Template-1",
      html: "<p>HTML source1</p>",
    },
    {
      name: "Template-2",
      html: "<p>HTML source2</p>",
    },
  ],
  charCounter: true,
});`;