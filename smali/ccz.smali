.class Lccz;
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
    .line 291
    iput-object p1, p0, Lccz;->b:Lccv;

    invoke-direct {p0, p1}, Lbnz;-><init>(Lbny;)V

    return-void
.end method

.method synthetic constructor <init>(Lccv;Lccw;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lccz;-><init>(Lccv;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareContent;)Lbmr;
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lccz;->b:Lccv;

    iget-object v1, p0, Lccz;->b:Lccv;

    invoke-static {v1}, Lccv;->a(Lccv;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lccy;->NATIVE:Lccy;

    invoke-static {v0, v1, p1, v2}, Lccv;->a(Lccv;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lccy;)V

    .line 327
    invoke-static {p1}, Lbyw;->b(Lcom/facebook/share/model/ShareContent;)V

    .line 329
    iget-object v0, p0, Lccz;->b:Lccv;

    invoke-virtual {v0}, Lccv;->d()Lbmr;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lccz;->b:Lccv;

    invoke-virtual {v1}, Lccv;->d_()Z

    move-result v1

    .line 332
    new-instance v2, Lcda;

    invoke-direct {v2, p0, v0, p1, v1}, Lcda;-><init>(Lccz;Lbmr;Lcom/facebook/share/model/ShareContent;Z)V

    .line 351
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lccv;->c(Ljava/lang/Class;)Lbnv;

    move-result-object v1

    .line 332
    invoke-static {v0, v2, v1}, Lbnw;->a(Lbmr;Lbnx;Lbnv;)V

    .line 353
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lbmr;
    .locals 1

    .prologue
    .line 291
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lccz;->a(Lcom/facebook/share/model/ShareContent;)Lbmr;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lccy;->NATIVE:Lccy;

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareContent;Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 299
    if-nez p1, :cond_0

    .line 320
    :goto_0
    return v3

    .line 304
    :cond_0
    if-nez p2, :cond_4

    .line 310
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->l()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 311
    sget-object v0, Lbzb;->HASHTAG:Lbzb;

    invoke-static {v0}, Lbnw;->a(Lbnv;)Z

    move-result v0

    move v1, v0

    .line 314
    :goto_1
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent;

    .line 315
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    sget-object v0, Lbzb;->LINK_SHARE_QUOTES:Lbzb;

    invoke-static {v0}, Lbnw;->a(Lbnv;)Z

    move-result v0

    and-int/2addr v1, v0

    .line 320
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lccv;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_3
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 291
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lccz;->a(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result v0

    return v0
.end method
