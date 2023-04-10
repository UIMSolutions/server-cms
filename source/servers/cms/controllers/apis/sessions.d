module servers.cms.data.sessions;

@safe:
import servers.cms;

private:
  string myCollectionName = "sessions";
  string myUrl = "/system/sessions";
  string myApi = "api/v1/system/sessions";

/* public:
static this() {
  server.data(myApi, new class DSRVApi {
    this() { super();
    this.url(myUrl).siteName("system").siteName("system").pool(myCollectionName).crudMode("list"); }});

  server.data(myApi~"/create", new class DSRVApi {
    this() { super();
    this.url(myUrl).siteName("system").pool(myCollectionName).crudMode("create"); }});

  server.data(myApi~"/view", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).siteName("system").pool(myCollectionName).crudMode("read"); }});

  server.data(myApi~"/edit", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).siteName("system").pool(myCollectionName).crudMode("update"); }});

  server.data(myApi~"/delete", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).siteName("system").pool(myCollectionName).crudMode("delete"); }});
} */