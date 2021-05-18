.class Lccx;
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
    .line 436
    iput-object p1, p0, Lccx;->b:Lccv;

    invoke-direct {p0, p1}, Lbnz;-><init>(Lbny;)V

    return-void
.end method

.method synthetic constructor <init>(Lccv;Lccw;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lccx;-><init>(Lccv;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareContent;)Lbmr;
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lccx;->b:Lccv;

    iget-object v1, p0, Lccx;->b:Lccv;

    invoke-static {v1}, Lccv;->c(Lccv;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lccy;->FEED:Lccy;

    invoke-static {v0, v1, p1, v2}, Lccv;->a(Lccv;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lccy;)V

    .line 451
    iget-object v0, p0, Lccx;->b:Lccv;

    invoke-virtual {v0}, Lccv;->d()Lbmr;

    move-result-object v1

    .line 453
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_0

    .line 454
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    .line 455
    invoke-static {p1}, Lbyw;->c(Lcom/facebook/share/model/ShareContent;)V

    .line 456
    invoke-static {p1}, Lbzz;->b(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v0

    .line 462
    :goto_0
    const-string v2, "feed"

    invoke-static {v1, v2, v0}, Lbnw;->a(Lbmr;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 467
    return-object v1

    .line 458
    :cond_0
    check-cast p1, Lcom/facebook/share/internal/ShareFeedContent;

    .line 459
    invoke-static {p1}, Lbzz;->a(Lcom/facebook/share/internal/ShareFeedContent;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lbmr;
    .locals 1

    .prologue
    .line 436
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lccx;->a(Lcom/facebook/share/model/ShareContent;)Lbmr;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 439
    sget-object v0, Lccy;->FEED:Lccy;

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareContent;Z)Z
    .locals 1

    .prologue
    .line 444
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/share/internal/ShareFeedContent;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 436
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lccx;->a(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result v0

    return v0
.end method
