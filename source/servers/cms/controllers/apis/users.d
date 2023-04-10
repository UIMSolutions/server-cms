module servers.cms.data.users;

@safe:
import servers.cms;

private:
  string myCollectionName = "users";
  string myUrl = "/system/users";
  string myApi = "api/v1/system/users";
/* 
public:
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