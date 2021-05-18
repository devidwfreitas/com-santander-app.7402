.class Lbwz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbiv;


# instance fields
.field final synthetic a:Lbxq;

.field final synthetic b:Lbxs;

.field final synthetic c:Lbxy;

.field final synthetic d:Lbww;


# direct methods
.method constructor <init>(Lbww;Lbxq;Lbxs;Lbxy;)V
    .locals 0

    .prologue
    .line 1216
    iput-object p1, p0, Lbwz;->d:Lbww;

    iput-object p2, p0, Lbwz;->a:Lbxq;

    iput-object p3, p0, Lbwz;->b:Lbxs;

    iput-object p4, p0, Lbwz;->c:Lbxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbiu;)V
    .locals 6

    .prologue
    .line 1219
    iget-object v0, p0, Lbwz;->d:Lbww;

    iget-object v1, p0, Lbwz;->a:Lbxq;

    iget-object v1, v1, Lbxq;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lbww;->c(Lbww;Ljava/lang/String;)Ljava/lang/String;

    .line 1220
    iget-object v0, p0, Lbwz;->d:Lbww;

    invoke-static {v0}, Lbww;->h(Lbww;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lbwz;->d:Lbww;

    iget-object v1, p0, Lbwz;->b:Lbxs;

    iget-object v1, v1, Lbxs;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lbww;->c(Lbww;Ljava/lang/String;)Ljava/lang/String;

    .line 1222
    iget-object v0, p0, Lbwz;->d:Lbww;

    iget-object v1, p0, Lbwz;->b:Lbxs;

    iget-boolean v1, v1, Lbxs;->f:Z

    invoke-static {v0, v1}, Lbww;->d(Lbww;Z)Z

    .line 1225
    :cond_0
    iget-object v0, p0, Lbwz;->d:Lbww;

    invoke-static {v0}, Lbww;->h(Lbww;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1226
    sget-object v0, Lbjb;->DEVELOPER_ERRORS:Lbjb;

    .line 1227
    invoke-static {}, Lbww;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to verify the FB id for \'%s\'. Verify that it is a valid FB object or page"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbwz;->d:Lbww;

    .line 1230
    invoke-static {v5}, Lbww;->j(Lbww;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1226
    invoke-static {v0, v1, v2, v3}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    iget-object v1, p0, Lbwz;->d:Lbww;

    const-string v2, "get_verified_id"

    iget-object v0, p0, Lbwz;->b:Lbxs;

    .line 1232
    invoke-virtual {v0}, Lbxs;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbwz;->b:Lbxs;

    .line 1233
    invoke-virtual {v0}, Lbxs;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 1231
    :goto_0
    invoke-static {v1, v2, v0}, Lbww;->a(Lbww;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1237
    :cond_1
    iget-object v0, p0, Lbwz;->c:Lbxy;

    if-eqz v0, :cond_2

    .line 1238
    iget-object v0, p0, Lbwz;->c:Lbxy;

    invoke-interface {v0}, Lbxy;->a()V

    .line 1240
    :cond_2
    return-void

    .line 1233
    :cond_3
    iget-object v0, p0, Lbwz;->a:Lbxq;

    .line 1234
    invoke-virtual {v0}, Lbxq;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    goto :goto_0
.end method
