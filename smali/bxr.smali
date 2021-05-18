.class Lbxr;
.super Lbxl;
.source "SourceFile"

# interfaces
.implements Lbxu;


# instance fields
.field final synthetic e:Lbww;

.field private f:Z

.field private g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lccn;


# direct methods
.method constructor <init>(Lbww;Ljava/lang/String;Lccn;)V
    .locals 5

    .prologue
    .line 1517
    iput-object p1, p0, Lbxr;->e:Lbww;

    .line 1518
    invoke-direct {p0, p1, p2, p3}, Lbxl;-><init>(Lbww;Ljava/lang/String;Lccn;)V

    .line 1512
    iget-object v0, p0, Lbxr;->e:Lbww;

    invoke-static {v0}, Lbww;->k(Lbww;)Z

    move-result v0

    iput-boolean v0, p0, Lbxr;->f:Z

    .line 1519
    iput-object p2, p0, Lbxr;->h:Ljava/lang/String;

    .line 1520
    iput-object p3, p0, Lbxr;->i:Lccn;

    .line 1522
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1523
    const-string v1, "fields"

    const-string v2, "id,application"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    const-string v1, "object"

    iget-object v2, p0, Lbxr;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1527
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, "me/og.likes"

    sget-object v4, Lbiz;->GET:Lbiz;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V

    .line 1526
    invoke-virtual {p0, v1}, Lbxr;->a(Lcom/facebook/GraphRequest;)V

    .line 1531
    return-void
.end method


# virtual methods
.method protected a(Lbix;)V
    .locals 6

    .prologue
    .line 1535
    .line 1536
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    .line 1535
    invoke-static {v0, v1}, Lbqq;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1538
    if-eqz v1, :cond_1

    .line 1539
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1540
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1541
    if-eqz v2, :cond_0

    .line 1542
    const/4 v3, 0x1

    iput-boolean v3, p0, Lbxr;->f:Z

    .line 1543
    const-string v3, "application"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1544
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v4

    .line 1545
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 1548
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->i()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    .line 1549
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1547
    invoke-static {v4, v3}, Lbqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1550
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lbxr;->g:Ljava/lang/String;

    .line 1539
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1555
    :cond_1
    return-void
.end method

.method protected a(Lcom/facebook/FacebookRequestError;)V
    .locals 6

    .prologue
    .line 1559
    sget-object v0, Lbjb;->REQUESTS:Lbjb;

    .line 1560
    invoke-static {}, Lbww;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching like status for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbxr;->h:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lbxr;->i:Lccn;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1559
    invoke-static {v0, v1, v2, v3}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1565
    iget-object v0, p0, Lbxr;->e:Lbww;

    const-string v1, "get_og_object_like"

    invoke-static {v0, v1, p1}, Lbww;->a(Lbww;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1566
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1570
    iget-boolean v0, p0, Lbxr;->f:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1575
    iget-object v0, p0, Lbxr;->g:Ljava/lang/String;

    return-object v0
.end method
