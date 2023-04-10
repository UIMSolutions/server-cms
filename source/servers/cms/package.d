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
public import uim.apps;
public import uim.servers;

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

DMVCApplication thisApplication;
string[size_t] errorMessages;
static this() {
/*   thisServer = APPApplication
    .layout(
      CMSLayout); */

/*   thisServer.scripts
      .addLinks(
        "/js/apps/cms/app.js"); */

  thisApplication = MVCApplication
    .rootPath("/")
    .layout(new DCMSGeneralLayout)
    .addRoute(MVCRoute("/",           HTTPMethod.GET, CMSIndexPageController.layout(CMSGeneralLayout)))

    // Routing for Blogs
    .addRoute(MVCRoute("blogs",        HTTPMethod.GET, CMSBlogsIndexPageController))
    .addRoute(MVCRoute("blogs/create", HTTPMethod.GET, CMSBlogsCreatePageController))
    .addRoute(MVCRoute("blogs/create_action", HTTPMethod.POST, CMSBlogsCreateActionController))
    .addRoute(MVCRoute("blogs/read",   HTTPMethod.GET, CMSBlogsReadPageController))
    .addRoute(MVCRoute("blogs/edit", HTTPMethod.GET, CMSBlogsEditPageController))
    .addRoute(MVCRoute("blogs/update_action", HTTPMethod.POST, CMSBlogsUpdateActionController))
    .addRoute(MVCRoute("blogs/delete", HTTPMethod.GET, CMSBlogsDeletePageController))
    .addRoute(MVCRoute("blogs/delete_action", HTTPMethod.POST, CMSBlogsDeleteActionController))

    // Routing for News    
    .addRoute(MVCRoute("news",        HTTPMethod.GET, CMSNewsIndexPageController))
    .addRoute(MVCRoute("news/create", HTTPMethod.GET, CMSNewsCreatePageController))
    //.addRoute(MVCRoute("news/create_action", HTTPMethod.POST, CMSNewsCreateActionController))
    .addRoute(MVCRoute("news/read",   HTTPMethod.GET, CMSNewsReadPageController))
    // .addRoute(MVCRoute("news/edit", HTTPMethod.GET, CMSNewsEditPageController))
    .addRoute(MVCRoute("news/update_action", HTTPMethod.POST, CMSNewsUpdateActionController))
    // .addRoute(MVCRoute("news/delete", HTTPMethod.GET, CMSNewsDeletePageController))
    .addRoute(MVCRoute("news/delete_action", HTTPMethod.POST, CMSNewsDeleteActionController))

    // Routing for Themes
    .addRoute(MVCRoute("theme",        HTTPMethod.GET, CMSThemesIndexPageController))
    .addRoute(MVCRoute("theme/create", HTTPMethod.GET, CMSThemesCreatePageController))
    .addRoute(MVCRoute("theme/create_action", HTTPMethod.POST, CMSThemesCreateActionController))
    .addRoute(MVCRoute("theme/read",   HTTPMethod.GET, CMSThemesReadPageController))
    .addRoute(MVCRoute("theme/edit", HTTPMethod.GET, CMSThemesEditPageController))
    .addRoute(MVCRoute("theme/update_action", HTTPMethod.POST, CMSThemesUpdateActionController))
    .addRoute(MVCRoute("theme/delete", HTTPMethod.GET, CMSThemesDeletePageController))
    .addRoute(MVCRoute("theme/delete_action", HTTPMethod.POST, CMSThemesDeleteActionController));
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