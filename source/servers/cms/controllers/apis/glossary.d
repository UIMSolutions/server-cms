module servers.cms.controllers.apis.glossary;

@safe:
import servers.cms;

private:
  string myCollectionName = "glossary";
  string myUrl = "/cms/glossary";
  string myApi = "api/v1/cms/glossary";

/* public:
static this() {
    server.data(myApi, new class DSRVApi {
    this() { super();
    this.url(myUrl).pool("glossary").crudMode("list"); }});

  server.data(myApi~"/create", new class DSRVApi {
    this() { super();
    this.url(myUrl).pool("glossary").crudMode("create"); }});

  server.data(myApi~"/view", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).pool("glossary").crudMode("read"); }});

  server.data(myApi~"/edit", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).pool("glossary").crudMode("update"); }});

  server.data(myApi~"/delete", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).pool("glossary").crudMode("delete"); }});} */