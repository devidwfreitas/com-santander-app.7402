.class Lcdb;
.super Lbnz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lbwo;",
        ">.bnz;"
    }
.end annotation


# instance fields
.field final synthetic b:Lccv;


# direct methods
.method private constructor <init>(Lccv;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcdb;->b:Lccv;

    invoke-direct {p0, p1}, Lbnz;-><init>(Lbny;)V

    return-void
.end method

.method synthetic constructor <init>(Lccv;Lccw;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcdb;-><init>(Lccv;)V

    return-void
.end method

.method private a(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Lcom/facebook/share/model/SharePhotoContent;
    .locals 7

    .prologue
    .line 409
    new-instance v0, Lcbf;

    invoke-direct {v0}, Lcbf;-><init>()V

    .line 410
    invoke-virtual {v0, p1}, Lcbf;->a(Lcom/facebook/share/model/SharePhotoContent;)Lcbf;

    move-result-object v2

    .line 411
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 412
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 413
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 414
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    .line 415
    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto;->c()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 417
    if-eqz v5, :cond_0

    .line 419
    invoke-static {p2, v5}, Lbpx;->a(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lbpz;

    move-result-object v5

    .line 420
    new-instance v6, Lcbd;

    invoke-direct {v6}, Lcbd;-><init>()V

    .line 421
    invoke-virtual {v6, v0}, Lcbd;->a(Lcom/facebook/share/model/SharePhoto;)Lcbd;

    move-result-object v0

    .line 422
    invoke-virtual {v5}, Lbpz;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcbd;->a(Landroid/net/Uri;)Lcbd;

    move-result-object v0

    const/4 v6, 0x0

    .line 423
    invoke-virtual {v0, v6}, Lcbd;->a(Landroid/graphics/Bitmap;)Lcbd;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcbd;->d()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 425
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual {v2, v3}, Lcbf;->c(Ljava/util/List;)Lcbf;

    .line 431
    invoke-static {v4}, Lbpx;->a(Ljava/util/Collection;)V

    .line 432
    invoke-virtual {v2}, Lcbf;->b()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    const-string v0, "share"

    .line 403
    :goto_0
    return-object v0

    .line 399
    :cond_1
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_2

    .line 400
    const-string v0, "share_open_graph"

    goto :goto_0

    .line 403
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareContent;)Lbmr;
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcdb;->b:Lccv;

    iget-object v1, p0, Lcdb;->b:Lccv;

    invoke-static {v1}, Lccv;->b(Lccv;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lccy;->WEB:Lccy;

    invoke-static {v0, v1, p1, v2}, Lccv;->a(Lccv;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lccy;)V

    .line 372
    iget-object v0, p0, Lcdb;->b:Lccv;

    invoke-virtual {v0}, Lccv;->d()Lbmr;

    move-result-object v1

    .line 374
    invoke-static {p1}, Lbyw;->c(Lcom/facebook/share/model/ShareContent;)V

    .line 377
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 378
    check-cast v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lbzz;->a(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v0

    .line 389
    :goto_0
    invoke-direct {p0, p1}, Lcdb;->b(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v1, v2, v0}, Lbnw;->a(Lbmr;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 392
    return-object v1

    .line 379
    :cond_0
    instance-of v0, p1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 380
    check-cast v0, Lcom/facebook/share/model/SharePhotoContent;

    .line 381
    invoke-virtual {v1}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcdb;->a(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lbzz;->a(Lcom/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 384
    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-static {v0}, Lbzz;->a(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lbmr;
    .locals 1

    .prologue
    .line 357
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcdb;->a(Lcom/facebook/share/model/ShareContent;)Lbmr;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lccy;->WEB:Lccy;

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareContent;Z)Z
    .locals 1

    .prologue
    .line 365
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lccv;->d(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 357
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcdb;->a(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result v0

    return v0
.end method
