.class Lbxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbiv;


# instance fields
.field final synthetic a:Lbxw;

.field final synthetic b:Lbxg;


# direct methods
.method constructor <init>(Lbxg;Lbxw;)V
    .locals 0

    .prologue
    .line 1003
    iput-object p1, p0, Lbxh;->b:Lbxg;

    iput-object p2, p0, Lbxh;->a:Lbxw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbiu;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1006
    iget-object v0, p0, Lbxh;->b:Lbxg;

    iget-object v0, v0, Lbxg;->b:Lbww;

    invoke-static {v0, v1}, Lbww;->a(Lbww;Z)Z

    .line 1008
    iget-object v0, p0, Lbxh;->a:Lbxw;

    invoke-virtual {v0}, Lbxw;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lbxh;->b:Lbxg;

    iget-object v0, v0, Lbxg;->b:Lbww;

    invoke-static {v0, v1}, Lbww;->b(Lbww;Z)V

    .line 1027
    :goto_0
    return-void

    .line 1014
    :cond_0
    iget-object v0, p0, Lbxh;->b:Lbxg;

    iget-object v0, v0, Lbxg;->b:Lbww;

    iget-object v1, p0, Lbxh;->a:Lbxw;

    iget-object v1, v1, Lbxw;->e:Ljava/lang/String;

    .line 1015
    invoke-static {v1, v3}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1014
    invoke-static {v0, v1}, Lbww;->b(Lbww;Ljava/lang/String;)Ljava/lang/String;

    .line 1016
    iget-object v0, p0, Lbxh;->b:Lbxg;

    iget-object v0, v0, Lbxg;->b:Lbww;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbww;->c(Lbww;Z)Z

    .line 1018
    iget-object v0, p0, Lbxh;->b:Lbxg;

    iget-object v0, v0, Lbxg;->b:Lbww;

    invoke-static {v0}, Lbww;->g(Lbww;)Lbla;

    move-result-object v0

    const-string v1, "fb_like_control_did_like"

    iget-object v2, p0, Lbxh;->b:Lbxg;

    iget-object v2, v2, Lbxg;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v2}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1025
    iget-object v0, p0, Lbxh;->b:Lbxg;

    iget-object v0, v0, Lbxg;->b:Lbww;

    iget-object v1, p0, Lbxh;->b:Lbxg;

    iget-object v1, v1, Lbxg;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lbww;->a(Lbww;Landroid/os/Bundle;)V

    goto :goto_0
.end method
