.class Lbxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbxy;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lbww;


# direct methods
.method constructor <init>(Lbww;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lbxg;->b:Lbww;

    iput-object p2, p0, Lbxg;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 984
    iget-object v0, p0, Lbxg;->b:Lbww;

    invoke-static {v0}, Lbww;->h(Lbww;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 987
    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v2, "Invalid Object Id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v1, p0, Lbxg;->b:Lbww;

    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {v1, v2, v0}, Lbww;->b(Lbww;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1031
    :goto_0
    return-void

    .line 999
    :cond_0
    new-instance v0, Lbiu;

    invoke-direct {v0}, Lbiu;-><init>()V

    .line 1000
    new-instance v1, Lbxw;

    iget-object v2, p0, Lbxg;->b:Lbww;

    iget-object v3, p0, Lbxg;->b:Lbww;

    .line 1001
    invoke-static {v3}, Lbww;->h(Lbww;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbxg;->b:Lbww;

    invoke-static {v4}, Lbww;->i(Lbww;)Lccn;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lbxw;-><init>(Lbww;Ljava/lang/String;Lccn;)V

    .line 1002
    invoke-virtual {v1, v0}, Lbxw;->a(Lbiu;)V

    .line 1003
    new-instance v2, Lbxh;

    invoke-direct {v2, p0, v1}, Lbxh;-><init>(Lbxg;Lbxw;)V

    invoke-virtual {v0, v2}, Lbiu;->a(Lbiv;)V

    .line 1030
    invoke-virtual {v0}, Lbiu;->h()Lbit;

    goto :goto_0
.end method
