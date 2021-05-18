.class Lbxs;
.super Lbxl;
.source "SourceFile"


# instance fields
.field e:Ljava/lang/String;

.field f:Z

.field final synthetic g:Lbww;


# direct methods
.method constructor <init>(Lbww;Ljava/lang/String;Lccn;)V
    .locals 5

    .prologue
    .line 1344
    iput-object p1, p0, Lbxs;->g:Lbww;

    .line 1345
    invoke-direct {p0, p1, p2, p3}, Lbxl;-><init>(Lbww;Ljava/lang/String;Lccn;)V

    .line 1347
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1348
    const-string v1, "fields"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-string v1, "ids"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1352
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lbiz;->GET:Lbiz;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V

    .line 1351
    invoke-virtual {p0, v1}, Lbxs;->a(Lcom/facebook/GraphRequest;)V

    .line 1356
    return-void
.end method


# virtual methods
.method protected a(Lbix;)V
    .locals 2

    .prologue
    .line 1360
    .line 1361
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lbxs;->a:Ljava/lang/String;

    .line 1360
    invoke-static {v0, v1}, Lbqq;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1363
    if-eqz v0, :cond_0

    .line 1364
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbxs;->e:Ljava/lang/String;

    .line 1365
    iget-object v0, p0, Lbxs;->e:Ljava/lang/String;

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lbxs;->f:Z

    .line 1367
    :cond_0
    return-void

    .line 1365
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/facebook/FacebookRequestError;)V
    .locals 6

    .prologue
    .line 1371
    sget-object v0, Lbjb;->REQUESTS:Lbjb;

    .line 1372
    invoke-static {}, Lbww;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error getting the FB id for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbxs;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lbxs;->b:Lccn;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1371
    invoke-static {v0, v1, v2, v3}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1377
    return-void
.end method
