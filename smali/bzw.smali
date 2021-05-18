.class abstract Lbzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected b:Lbzv;

.field protected c:I


# direct methods
.method protected constructor <init>(Lbzv;I)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p1, p0, Lbzw;->b:Lbzv;

    .line 546
    iput p2, p0, Lbzw;->c:I

    .line 547
    return-void
.end method

.method private b(I)Z
    .locals 6

    .prologue
    .line 596
    iget v0, p0, Lbzw;->c:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 597
    invoke-virtual {p0}, Lbzw;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iget v2, p0, Lbzw;->c:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x1388

    .line 603
    invoke-static {}, Lbzn;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lbzx;

    invoke-direct {v2, p0}, Lbzx;-><init>(Lbzw;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 610
    const/4 v0, 0x1

    .line 612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Landroid/os/Bundle;
.end method

.method protected abstract a(I)V
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 566
    new-instance v0, Lcom/facebook/GraphRequest;

    iget-object v1, p0, Lbzw;->b:Lbzv;

    iget-object v1, v1, Lbzv;->f:Lcom/facebook/AccessToken;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%s/videos"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lbzw;->b:Lbzv;

    iget-object v6, v6, Lbzv;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 568
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lbiz;->POST:Lbiz;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    .line 572
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->m()Lbix;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_3

    .line 575
    invoke-virtual {v0}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 576
    invoke-virtual {v0}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 577
    if-eqz v1, :cond_1

    .line 578
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->d()I

    move-result v1

    invoke-direct {p0, v1}, Lbzw;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    new-instance v1, Lbhq;

    const-string v2, "Video upload failed"

    invoke-direct {v1, v0, v2}, Lbhq;-><init>(Lbix;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lbzw;->a(Lbhp;)V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    if-eqz v2, :cond_2

    .line 583
    :try_start_0
    invoke-virtual {p0, v2}, Lbzw;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    new-instance v1, Lbhp;

    const-string v2, "Unexpected error in server response"

    invoke-direct {v1, v2, v0}, Lbhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lbzw;->b(Lbhp;)V

    goto :goto_0

    .line 588
    :cond_2
    new-instance v0, Lbhp;

    const-string v1, "Unexpected error in server response"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbzw;->a(Lbhp;)V

    goto :goto_0

    .line 591
    :cond_3
    new-instance v0, Lbhp;

    const-string v1, "Unexpected error in server response"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbzw;->a(Lbhp;)V

    goto :goto_0
.end method

.method protected abstract a(Lbhp;)V
.end method

.method protected a(Lbhp;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 623
    invoke-static {}, Lbzn;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbzy;

    invoke-direct {v1, p0, p1, p2}, Lbzy;-><init>(Lbzw;Lbhp;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 629
    return-void
.end method

.method protected abstract a(Lorg/json/JSONObject;)V
.end method

.method protected abstract b()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method protected b(Lbhp;)V
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbzw;->a(Lbhp;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lbzw;->b:Lbzv;

    iget-boolean v0, v0, Lbzv;->m:Z

    if-nez v0, :cond_0

    .line 553
    :try_start_0
    invoke-virtual {p0}, Lbzw;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbzw;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lbhp; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    invoke-virtual {p0, v0}, Lbzw;->b(Lbhp;)V

    goto :goto_0

    .line 556
    :catch_1
    move-exception v0

    .line 557
    new-instance v1, Lbhp;

    const-string v2, "Video upload failed"

    invoke-direct {v1, v2, v0}, Lbhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lbzw;->b(Lbhp;)V

    goto :goto_0

    .line 561
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbzw;->b(Lbhp;)V

    goto :goto_0
.end method
