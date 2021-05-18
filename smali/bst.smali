.class Lbst;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbql;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbso;

.field final synthetic c:Lbjc;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lbsp;


# direct methods
.method constructor <init>(Lbsp;Ljava/lang/String;Lbso;Lbjc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lbst;->e:Lbsp;

    iput-object p2, p0, Lbst;->a:Ljava/lang/String;

    iput-object p3, p0, Lbst;->b:Lbso;

    iput-object p4, p0, Lbst;->c:Lbjc;

    iput-object p5, p0, Lbst;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 619
    if-eqz p1, :cond_2

    .line 621
    const-string v0, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    .line 623
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 624
    if-eqz v0, :cond_0

    .line 625
    iget-object v2, p0, Lbst;->a:Ljava/lang/String;

    iget-object v3, p0, Lbst;->b:Lbso;

    iget-object v4, p0, Lbst;->c:Lbjc;

    invoke-static {v0, v1, v2, v3, v4}, Lbsp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbso;Lbjc;)V

    .line 673
    :goto_0
    return-void

    .line 632
    :cond_0
    const-string v0, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 633
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 634
    const-string v0, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    .line 635
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 637
    const-string v0, "com.facebook.platform.extra.PERMISSIONS"

    .line 638
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 639
    const-string v0, "signed request"

    .line 640
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 644
    invoke-static {v0}, Lcom/facebook/login/LoginMethodHandler;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 647
    :goto_1
    invoke-static {v1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v4, :cond_1

    .line 649
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 650
    invoke-static {v3}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v2, p0, Lbst;->d:Ljava/lang/String;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object v6, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lbgy;Ljava/util/Date;Ljava/util/Date;)V

    .line 660
    invoke-static {v0}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 661
    invoke-static {}, Lcom/facebook/Profile;->b()V

    .line 662
    iget-object v1, p0, Lbst;->b:Lbso;

    iget-object v2, p0, Lbst;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbso;->c(Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lbst;->c:Lbjc;

    invoke-interface {v1, v0}, Lbjc;->a(Lcom/facebook/AccessToken;)V

    goto :goto_0

    .line 665
    :cond_1
    iget-object v0, p0, Lbst;->b:Lbso;

    iget-object v1, p0, Lbst;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbso;->d(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lbst;->c:Lbjc;

    invoke-interface {v0}, Lbjc;->a()V

    goto :goto_0

    .line 670
    :cond_2
    iget-object v0, p0, Lbst;->b:Lbso;

    iget-object v1, p0, Lbst;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbso;->d(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lbst;->c:Lbjc;

    invoke-interface {v0}, Lbjc;->a()V

    goto :goto_0

    :cond_3
    move-object v3, v5

    goto :goto_1
.end method
