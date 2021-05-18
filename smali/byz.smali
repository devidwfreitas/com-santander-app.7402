.class Lbyz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbyz;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lbyx;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lbyz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareLinkContent;)V
    .locals 0

    .prologue
    .line 382
    invoke-static {p1, p0}, Lbyw;->a(Lcom/facebook/share/model/ShareLinkContent;Lbyz;)V

    .line 383
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareMedia;)V
    .locals 0

    .prologue
    .line 424
    invoke-static {p1, p0}, Lbyw;->a(Lcom/facebook/share/model/ShareMedia;Lbyz;)V

    .line 425
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareMediaContent;)V
    .locals 0

    .prologue
    .line 394
    invoke-static {p1, p0}, Lbyw;->a(Lcom/facebook/share/model/ShareMediaContent;Lbyz;)V

    .line 395
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareOpenGraphAction;)V
    .locals 0

    .prologue
    .line 403
    invoke-static {p1, p0}, Lbyw;->a(Lcom/facebook/share/model/ShareOpenGraphAction;Lbyz;)V

    .line 404
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareOpenGraphContent;)V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbyz;->a:Z

    .line 399
    invoke-static {p1, p0}, Lbyw;->a(Lcom/facebook/share/model/ShareOpenGraphContent;Lbyz;)V

    .line 400
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareOpenGraphObject;)V
    .locals 0

    .prologue
    .line 407
    invoke-static {p1, p0}, Lbyw;->a(Lcom/facebook/share/model/ShareOpenGraphObject;Lbyz;)V

    .line 408
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V
    .locals 0

    .prologue
    .line 412
    invoke-static {p1, p0, p2}, Lbyw;->a(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lbyz;Z)V

    .line 413
    return-void
.end method

.method public a(Lcom/facebook/share/model/SharePhoto;)V
    .locals 0

    .prologue
    .line 416
    invoke-static {p1, p0}, Lbyw;->c(Lcom/facebook/share/model/SharePhoto;Lbyz;)V

    .line 417
    return-void
.end method

.method public a(Lcom/facebook/share/model/SharePhotoContent;)V
    .locals 0

    .prologue
    .line 386
    invoke-static {p1, p0}, Lbyw;->a(Lcom/facebook/share/model/SharePhotoContent;Lbyz;)V

    .line 387
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareVideo;)V
    .locals 0

    .prologue
    .line 420
    invoke-static {p1, p0}, Lbyw;->a(Lcom/facebook/share/model/ShareVideo;Lbyz;)V

    .line 421
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 0

    .prologue
    .line 390
    invoke-static {p1, p0}, Lbyw;->a(Lcom/facebook/share/model/ShareVideoContent;Lbyz;)V

    .line 391
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lbyz;->a:Z

    return v0
.end method
