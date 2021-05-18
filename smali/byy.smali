.class Lbyy;
.super Lbyz;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbyz;-><init>(Lbyx;)V

    return-void
.end method

.method synthetic constructor <init>(Lbyx;)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lbyy;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareLinkContent;)V
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lbhp;

    const-string v1, "Cannot share link content with quote using the share api"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareMediaContent;)V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Lbhp;

    const-string v1, "Cannot share ShareMediaContent using the share api"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/facebook/share/model/SharePhoto;)V
    .locals 0

    .prologue
    .line 345
    invoke-static {p1, p0}, Lbyw;->b(Lcom/facebook/share/model/SharePhoto;Lbyz;)V

    .line 346
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lbhp;

    const-string v1, "Cannot share video content with place IDs using the share api"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lbhp;

    const-string v1, "Cannot share video content with people IDs using the share api"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    new-instance v0, Lbhp;

    const-string v1, "Cannot share video content with referrer URL using the share api"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_2
    return-void
.end method
