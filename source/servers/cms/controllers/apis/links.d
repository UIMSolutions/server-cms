module servers.cms.controllers.apis.links;

@safe:
import servers.cms;

private:
  string myCollectionName = "links";
  string myUrl = "/cms/links";
  string myApi = "api/v1/cms/links";

/* public:
static this() {
  server.data(myApi, new class DSRVApi {
    this() { super();
    this.url(myUrl).pool(myCollectionName).crudMode("list"); }});

  server.data(myApi~"/create", new class DSRVApi {
    this() { super();
    this.url(myUrl).pool(myCollectionName).crudMode("create"); }});

  server.data(myApi~"/view", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).pool(myCollectionName).crudMode("read"); }});

  server.data(myApi~"/edit", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).pool(myCollectionName).crudMode("update"); }});

  server.data(myApi~"/delete", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).pool(myCollectionName).crudMode("delete"); }});
} */