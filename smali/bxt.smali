.class Lbxt;
.super Lbxl;
.source "SourceFile"

# interfaces
.implements Lbxu;


# instance fields
.field final synthetic e:Lbww;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbww;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1461
    iput-object p1, p0, Lbxt;->e:Lbww;

    .line 1462
    sget-object v0, Lccn;->PAGE:Lccn;

    invoke-direct {p0, p1, p2, v0}, Lbxl;-><init>(Lbww;Ljava/lang/String;Lccn;)V

    .line 1458
    iget-object v0, p0, Lbxt;->e:Lbww;

    invoke-static {v0}, Lbww;->k(Lbww;)Z

    move-result v0

    iput-boolean v0, p0, Lbxt;->f:Z

    .line 1463
    iput-object p2, p0, Lbxt;->g:Ljava/lang/String;

    .line 1465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1466
    const-string v1, "fields"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1469
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "me/likes/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lbiz;->GET:Lbiz;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V

    .line 1468
    invoke-virtual {p0, v1}, Lbxt;->a(Lcom/facebook/GraphRequest;)V

    .line 1473
    return-void
.end method


# virtual methods
.method protected a(Lbix;)V
    .locals 2

    .prologue
    .line 1477
    .line 1478
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    .line 1477
    invoke-static {v0, v1}, Lbqq;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1480
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbxt;->f:Z

    .line 1483
    :cond_0
    return-void
.end method

.method protected a(Lcom/facebook/FacebookRequestError;)V
    .locals 6

    .prologue
    .line 1487
    sget-object v0, Lbjb;->REQUESTS:Lbjb;

    .line 1488
    invoke-static {}, Lbww;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching like status for page id \'%s\': %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbxt;->g:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1487
    invoke-static {v0, v1, v2, v3}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1492
    iget-object v0, p0, Lbxt;->e:Lbww;

    const-string v1, "get_page_like"

    invoke-static {v0, v1, p1}, Lbww;->a(Lbww;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1493
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1498
    iget-boolean v0, p0, Lbxt;->f:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1503
    const/4 v0, 0x0

    return-object v0
.end method
