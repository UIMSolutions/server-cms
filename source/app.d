import vibe.vibe;
import servers.cms;

mixin DefaultConfig!("server-cms");
mixin ReadConfig;
void main(string[] args) {
  readConfig();
  mixin GetoptConfig;
  
	auto router = new URLRouter;	
	debug writeln("SetRouterDefault!()");
  mixin(SetRouterDefault!());

  thisApplication
		.rootPath("/cms/")
		.register(router);

  mixin(SetHTTP!());
	runApplication();
}

/* 	router
		.get("/login", &serverCms.loginPage.request)
		.get("/logout", &serverCms.logoutPage.request);
 */

/* 	router // Pages
		.get("/cms", &uimCmsPage); */

/* 	mixin(AddRoutes!("router", "/cms/blogs", "uimBlogs"));
	mixin(AddRoutes!("router", "/cms/docus", "uimDocus"));
	mixin(AddRoutes!("router", "/cms/glossary", "uimGlossary"));
	mixin(AddRoutes!("router", "/cms/links", "uimLinks"));
	mixin(AddRoutes!("router", "/cms/news", "uimNews"));
	mixin(AddRoutes!("router", "/cms/offers", "uimOffers"));
	mixin(AddRoutes!("router", "/cms/pages", "uimPages"));
	mixin(AddRoutes!("router", "/cms/themes", "uimThemes"));
	mixin(AddRoutes!("router", "/cms/tutorials", "uimTutorials")); */

/* 	router
		.get("/", &uimIndex)
		.get("/login", &uimLoginPage)
		.get("/login2", &uimLogin2Page)
		.get("/register", &uimRegister)
		.get("/logout", &uimLogout)
		.get("/server", &uimServer)
		.get("/sites", &uimSites); */

/* 	router // actions
		.post("/login_action", &uimLoginAction)
		.post("/login2_action", &uimLogin2Action)
		.post("/sites/select", &uimSiteSelectAction); */

/*   thisApplication
		.rootPath("/cms/")
		.register(router); */

/* 	debug writeln("Create Database");
	auto database = ETBBase.importDatabase(JSBFileBase("../../DATABASES/uim"));
	debug writeln("Found Tenants:", database.count); */
	// central tenant
/* 	auto tentant = database["central"];
	foreach(name; [	"accounts", "apps", "groups", "logins", "organizations", "passwords", 
		"passwordrules", "", "", "rights", "roles", "sessions", "sites", "users"]) {
			tentant[name].entityTemplate(EntityRegistry["systems_"~name].clone);
	} */

	/* debug writeln("Loading tenant 'systems'");
	auto tentant = database["systems"];
	tentant[SYSAccount].entityTemplate(SYSAccount);
	tentant[	SYSApp].entityTemplate(SYSApp);
	tentant[SYSGroup].entityTemplate(SYSGroup);
	tentant[SYSLogin].entityTemplate(SYSLogin);
	tentant[SYSOrganization].entityTemplate(SYSOrganization);
	tentant[SYSPassword].entityTemplate(SYSPassword);
	tentant[SYSPasswordRule].entityTemplate(SYSPasswordRule);
	tentant[SYSTenant].entityTemplate(SYSTenant);
	tentant[SYSRequest].entityTemplate(SYSRequest);
	tentant[SYSRight].entityTemplate(SYSRight);
	tentant[SYSRole].entityTemplate(SYSRole);
	tentant[SYSSession].entityTemplate(SYSSession);
	tentant[SYSSite].entityTemplate(SYSSite);
	tentant[SYSUser].entityTemplate(SYSUser);

	// individual tenant
	debug writeln("Loading tenant 'cms'");
	tentant = database["uim"];
	tentant[CMSBlog].entityTemplate(CMSBlog);
	tentant[CMSDemo].entityTemplate(CMSDemo);
	tentant[CMSDocu].entityTemplate(CMSDocu);
	tentant[CMSGlossaryItem].entityTemplate(CMSGlossaryItem);
	tentant[CMSLink].entityTemplate(CMSLink);
	tentant[CMSOffer].entityTemplate(CMSOffer);
	tentant[CMSNewsItem].entityTemplate(CMSNewsItem);
	tentant[CMSPage].entityTemplate(CMSPage);
	tentant[CMSTutorial].entityTemplate(CMSTutorial);

	tentant[CMSTheme].entityTemplate(CMSTheme);

	debug writeln(database.tenantNames);
	foreach(tenant; database.tenantNames) {
		debug writeln(tenant, " with ", database[tenant].collectionNames);
	} */

/* debug writeln("auto dbTentant = database[system]");
	if (auto dbTentant = database["systems"]) {
		debug writeln("Found tentant");

		foreach(name; dbTentant.collectionNames) {
			debug writeln("EntityRegistry name:", name, " path:", name);
		
			if (auto entityTemplate = EntityRegistry[name]) {
				debug writeln("entityid = ", EntityRegistry[name].id);
		
				dbTentant[name].entityTemplate(entityTemplate);
	}}}

	debug writeln("auto dbTentant = database[uim]");
	if (auto dbTentant = database["uim"]) {
		debug writeln("Found tentant");

		foreach(name; dbTentant.collectionNames) {
			debug writeln("EntityRegistry name:", name, " path:", name);

			if (auto entityTemplate = EntityRegistry[name]) {
				debug writeln("entityid = ", EntityRegistry[name].id);
	
				dbTentant[name].entityTemplate(entityTemplate);
	}}}
 */
  // hisServer.database(database);
	// serverCms.rootPath(rootPath).registerApp(router); 

/*   mixin(SetHTTP!());
	runApplication();
}
 */