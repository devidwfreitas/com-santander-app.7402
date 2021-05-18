.class Lbxq;
.super Lbxl;
.source "SourceFile"


# instance fields
.field e:Ljava/lang/String;

.field final synthetic f:Lbww;


# direct methods
.method constructor <init>(Lbww;Ljava/lang/String;Lccn;)V
    .locals 5

    .prologue
    .line 1295
    iput-object p1, p0, Lbxq;->f:Lbww;

    .line 1296
    invoke-direct {p0, p1, p2, p3}, Lbxl;-><init>(Lbww;Ljava/lang/String;Lccn;)V

    .line 1298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1299
    const-string v1, "fields"

    const-string v2, "og_object.fields(id)"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v1, "ids"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1303
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lbiz;->GET:Lbiz;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V

    .line 1302
    invoke-virtual {p0, v1}, Lbxq;->a(Lcom/facebook/GraphRequest;)V

    .line 1307
    return-void
.end method


# virtual methods
.method protected a(Lbix;)V
    .locals 2

    .prologue
    .line 1327
    .line 1328
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lbxq;->a:Ljava/lang/String;

    .line 1327
    invoke-static {v0, v1}, Lbqq;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1330
    if-eqz v0, :cond_0

    .line 1332
    const-string v1, "og_object"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1333
    if-eqz v0, :cond_0

    .line 1334
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbxq;->e:Ljava/lang/String;

    .line 1337
    :cond_0
    return-void
.end method

.method protected a(Lcom/facebook/FacebookRequestError;)V
    .locals 6

    .prologue
    .line 1313
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "og_object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    const/4 v0, 0x0

    iput-object v0, p0, Lbxq;->c:Lcom/facebook/FacebookRequestError;

    .line 1323
    :goto_0
    return-void

    .line 1316
    :cond_0
    sget-object v0, Lbjb;->REQUESTS:Lbjb;

    .line 1317
    invoke-static {}, Lbww;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error getting the FB id for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbxq;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lbxq;->b:Lccn;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1316
    invoke-static {v0, v1, v2, v3}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
