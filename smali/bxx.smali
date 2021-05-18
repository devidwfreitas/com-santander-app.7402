.class Lbxx;
.super Lbxl;
.source "SourceFile"


# instance fields
.field final synthetic e:Lbww;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbww;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1425
    iput-object p1, p0, Lbxx;->e:Lbww;

    .line 1426
    invoke-direct {p0, p1, v3, v3}, Lbxl;-><init>(Lbww;Ljava/lang/String;Lccn;)V

    .line 1428
    iput-object p2, p0, Lbxx;->f:Ljava/lang/String;

    .line 1430
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 1431
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v2, Lbiz;->DELETE:Lbiz;

    invoke-direct {v0, v1, p2, v3, v2}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V

    .line 1430
    invoke-virtual {p0, v0}, Lbxx;->a(Lcom/facebook/GraphRequest;)V

    .line 1435
    return-void
.end method


# virtual methods
.method protected a(Lbix;)V
    .locals 0

    .prologue
    .line 1439
    return-void
.end method

.method protected a(Lcom/facebook/FacebookRequestError;)V
    .locals 6

    .prologue
    .line 1443
    sget-object v0, Lbjb;->REQUESTS:Lbjb;

    .line 1444
    invoke-static {}, Lbww;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error unliking object with unlike token \'%s\' : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbxx;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1443
    invoke-static {v0, v1, v2, v3}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1446
    iget-object v0, p0, Lbxx;->e:Lbww;

    const-string v1, "publish_unlike"

    invoke-static {v0, v1, p1}, Lbww;->a(Lbww;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1447
    return-void
.end method
