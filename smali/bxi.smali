.class Lbxi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbiv;


# instance fields
.field final synthetic a:Lbxx;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lbww;


# direct methods
.method constructor <init>(Lbww;Lbxx;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lbxi;->c:Lbww;

    iput-object p2, p0, Lbxi;->a:Lbxx;

    iput-object p3, p0, Lbxi;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbiu;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1046
    iget-object v0, p0, Lbxi;->c:Lbww;

    invoke-static {v0, v1}, Lbww;->a(Lbww;Z)Z

    .line 1048
    iget-object v0, p0, Lbxi;->a:Lbxx;

    invoke-virtual {v0}, Lbxx;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lbxi;->c:Lbww;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbww;->b(Lbww;Z)V

    .line 1065
    :goto_0
    return-void

    .line 1053
    :cond_0
    iget-object v0, p0, Lbxi;->c:Lbww;

    invoke-static {v0, v3}, Lbww;->b(Lbww;Ljava/lang/String;)Ljava/lang/String;

    .line 1054
    iget-object v0, p0, Lbxi;->c:Lbww;

    invoke-static {v0, v1}, Lbww;->c(Lbww;Z)Z

    .line 1056
    iget-object v0, p0, Lbxi;->c:Lbww;

    invoke-static {v0}, Lbww;->g(Lbww;)Lbla;

    move-result-object v0

    const-string v1, "fb_like_control_did_unlike"

    iget-object v2, p0, Lbxi;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v2}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1063
    iget-object v0, p0, Lbxi;->c:Lbww;

    iget-object v1, p0, Lbxi;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lbww;->a(Lbww;Landroid/os/Bundle;)V

    goto :goto_0
.end method
