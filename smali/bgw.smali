.class Lbgw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbiv;


# instance fields
.field final synthetic a:Lcom/facebook/AccessToken;

.field final synthetic b:Lbgp;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lbgx;

.field final synthetic e:Ljava/util/Set;

.field final synthetic f:Ljava/util/Set;

.field final synthetic g:Lbgs;


# direct methods
.method constructor <init>(Lbgs;Lcom/facebook/AccessToken;Lbgp;Ljava/util/concurrent/atomic/AtomicBoolean;Lbgx;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lbgw;->g:Lbgs;

    iput-object p2, p0, Lbgw;->a:Lcom/facebook/AccessToken;

    iput-object p3, p0, Lbgw;->b:Lbgp;

    iput-object p4, p0, Lbgw;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lbgw;->d:Lbgx;

    iput-object p6, p0, Lbgw;->e:Ljava/util/Set;

    iput-object p7, p0, Lbgw;->f:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbiu;)V
    .locals 15

    .prologue
    .line 286
    const/4 v9, 0x0

    .line 288
    :try_start_0
    invoke-static {}, Lbgs;->a()Lbgs;

    move-result-object v0

    invoke-virtual {v0}, Lbgs;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lbgs;->a()Lbgs;

    move-result-object v0

    invoke-virtual {v0}, Lbgs;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbgw;->a:Lcom/facebook/AccessToken;

    .line 290
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->j()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 291
    :cond_0
    iget-object v0, p0, Lbgw;->b:Lbgp;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lbgw;->b:Lbgp;

    new-instance v1, Lbhp;

    const-string v2, "No current access token to refresh"

    invoke-direct {v1, v2}, Lbhp;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lbgp;->a(Lbhp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_1
    iget-object v0, p0, Lbgw;->g:Lbgs;

    invoke-static {v0}, Lbgs;->a(Lbgs;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v0, p0, Lbgw;->b:Lbgp;

    if-eqz v0, :cond_2

    if-eqz v9, :cond_2

    .line 325
    iget-object v0, p0, Lbgw;->b:Lbgp;

    invoke-interface {v0, v9}, Lbgp;->a(Lcom/facebook/AccessToken;)V

    .line 328
    :cond_2
    :goto_0
    return-void

    .line 297
    :cond_3
    :try_start_1
    iget-object v0, p0, Lbgw;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbgw;->d:Lbgx;

    iget-object v0, v0, Lbgx;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lbgw;->d:Lbgx;

    iget v0, v0, Lbgx;->b:I

    if-nez v0, :cond_5

    .line 300
    iget-object v0, p0, Lbgw;->b:Lbgp;

    if-eqz v0, :cond_4

    .line 301
    iget-object v0, p0, Lbgw;->b:Lbgp;

    new-instance v1, Lbhp;

    const-string v2, "Failed to refresh access token"

    invoke-direct {v1, v2}, Lbhp;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lbgp;->a(Lbhp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :cond_4
    iget-object v0, p0, Lbgw;->g:Lbgs;

    invoke-static {v0}, Lbgs;->a(Lbgs;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v0, p0, Lbgw;->b:Lbgp;

    if-eqz v0, :cond_2

    if-eqz v9, :cond_2

    .line 325
    iget-object v0, p0, Lbgw;->b:Lbgp;

    invoke-interface {v0, v9}, Lbgp;->a(Lcom/facebook/AccessToken;)V

    goto :goto_0

    .line 306
    :cond_5
    :try_start_2
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v1, p0, Lbgw;->d:Lbgx;

    iget-object v1, v1, Lbgx;->a:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbgw;->d:Lbgx;

    iget-object v1, v1, Lbgx;->a:Ljava/lang/String;

    .line 308
    :goto_1
    iget-object v2, p0, Lbgw;->a:Lcom/facebook/AccessToken;

    .line 309
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbgw;->a:Lcom/facebook/AccessToken;

    .line 310
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbgw;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 311
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lbgw;->e:Ljava/util/Set;

    .line 312
    :goto_2
    iget-object v5, p0, Lbgw;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 313
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lbgw;->f:Ljava/util/Set;

    .line 314
    :goto_3
    iget-object v6, p0, Lbgw;->a:Lcom/facebook/AccessToken;

    .line 315
    invoke-virtual {v6}, Lcom/facebook/AccessToken;->g()Lbgy;

    move-result-object v6

    iget-object v7, p0, Lbgw;->d:Lbgx;

    iget v7, v7, Lbgx;->b:I

    if-eqz v7, :cond_9

    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lbgw;->d:Lbgx;

    iget v8, v8, Lbgx;->b:I

    int-to-long v10, v8

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 318
    :goto_4
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lbgy;Ljava/util/Date;Ljava/util/Date;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    :try_start_3
    invoke-static {}, Lbgs;->a()Lbgs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbgs;->a(Lcom/facebook/AccessToken;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 323
    iget-object v1, p0, Lbgw;->g:Lbgs;

    invoke-static {v1}, Lbgs;->a(Lbgs;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v1, p0, Lbgw;->b:Lbgp;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 325
    iget-object v1, p0, Lbgw;->b:Lbgp;

    invoke-interface {v1, v0}, Lbgp;->a(Lcom/facebook/AccessToken;)V

    goto/16 :goto_0

    .line 306
    :cond_6
    :try_start_4
    iget-object v1, p0, Lbgw;->a:Lcom/facebook/AccessToken;

    .line 308
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 311
    :cond_7
    iget-object v4, p0, Lbgw;->a:Lcom/facebook/AccessToken;

    .line 312
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    move-result-object v4

    goto :goto_2

    .line 313
    :cond_8
    iget-object v5, p0, Lbgw;->a:Lcom/facebook/AccessToken;

    .line 314
    invoke-virtual {v5}, Lcom/facebook/AccessToken;->f()Ljava/util/Set;

    move-result-object v5

    goto :goto_3

    .line 315
    :cond_9
    iget-object v7, p0, Lbgw;->a:Lcom/facebook/AccessToken;

    .line 318
    invoke-virtual {v7}, Lcom/facebook/AccessToken;->d()Ljava/util/Date;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    goto :goto_4

    .line 323
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_5
    iget-object v2, p0, Lbgw;->g:Lbgs;

    invoke-static {v2}, Lbgs;->a(Lbgs;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v2, p0, Lbgw;->b:Lbgp;

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    .line 325
    iget-object v2, p0, Lbgw;->b:Lbgp;

    invoke-interface {v2, v1}, Lbgp;->a(Lcom/facebook/AccessToken;)V

    :cond_a
    throw v0

    .line 323
    :catchall_1
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto :goto_5
.end method
