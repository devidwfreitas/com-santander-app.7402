.class Lbxk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbiv;


# instance fields
.field final synthetic a:Lbxu;

.field final synthetic b:Lbxp;

.field final synthetic c:Lbxj;


# direct methods
.method constructor <init>(Lbxj;Lbxu;Lbxp;)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lbxk;->c:Lbxj;

    iput-object p2, p0, Lbxk;->a:Lbxu;

    iput-object p3, p0, Lbxk;->b:Lbxp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbiu;)V
    .locals 7

    .prologue
    .line 1104
    iget-object v0, p0, Lbxk;->a:Lbxu;

    invoke-interface {v0}, Lbxu;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbxk;->b:Lbxp;

    .line 1105
    invoke-virtual {v0}, Lbxp;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1108
    :cond_0
    sget-object v0, Lbjb;->REQUESTS:Lbjb;

    .line 1110
    invoke-static {}, Lbww;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to refresh like state for id: \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbxk;->c:Lbxj;

    iget-object v5, v5, Lbxj;->a:Lbww;

    .line 1111
    invoke-static {v5}, Lbww;->j(Lbww;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1108
    invoke-static {v0, v1, v2, v3}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1122
    :goto_0
    return-void

    .line 1115
    :cond_1
    iget-object v0, p0, Lbxk;->c:Lbxj;

    iget-object v0, v0, Lbxj;->a:Lbww;

    iget-object v1, p0, Lbxk;->a:Lbxu;

    .line 1116
    invoke-interface {v1}, Lbxu;->b()Z

    move-result v1

    iget-object v2, p0, Lbxk;->b:Lbxp;

    iget-object v2, v2, Lbxp;->e:Ljava/lang/String;

    iget-object v3, p0, Lbxk;->b:Lbxp;

    iget-object v3, v3, Lbxp;->f:Ljava/lang/String;

    iget-object v4, p0, Lbxk;->b:Lbxp;

    iget-object v4, v4, Lbxp;->g:Ljava/lang/String;

    iget-object v5, p0, Lbxk;->b:Lbxp;

    iget-object v5, v5, Lbxp;->h:Ljava/lang/String;

    iget-object v6, p0, Lbxk;->a:Lbxu;

    .line 1121
    invoke-interface {v6}, Lbxu;->c()Ljava/lang/String;

    move-result-object v6

    .line 1115
    invoke-static/range {v0 .. v6}, Lbww;->a(Lbww;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
