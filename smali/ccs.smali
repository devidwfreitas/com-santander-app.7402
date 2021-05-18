.class Lccs;
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
.field final synthetic b:Lccq;


# direct methods
.method private constructor <init>(Lccq;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lccs;->b:Lccq;

    invoke-direct {p0, p1}, Lbnz;-><init>(Lbny;)V

    return-void
.end method

.method synthetic constructor <init>(Lccq;Lccr;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lccs;-><init>(Lccq;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareContent;)Lbmr;
    .locals 3

    .prologue
    .line 211
    invoke-static {p1}, Lbyw;->a(Lcom/facebook/share/model/ShareContent;)V

    .line 213
    iget-object v0, p0, Lccs;->b:Lccq;

    invoke-virtual {v0}, Lccq;->d()Lbmr;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lccs;->b:Lccq;

    invoke-virtual {v1}, Lccq;->d_()Z

    move-result v1

    .line 216
    new-instance v2, Lcct;

    invoke-direct {v2, p0, v0, p1, v1}, Lcct;-><init>(Lccs;Lbmr;Lcom/facebook/share/model/ShareContent;Z)V

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lccq;->b(Ljava/lang/Class;)Lbnv;

    move-result-object v1

    .line 216
    invoke-static {v0, v2, v1}, Lbnw;->a(Lbmr;Lbnx;Lbnv;)V

    .line 237
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lbmr;
    .locals 1

    .prologue
    .line 203
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lccs;->a(Lcom/facebook/share/model/ShareContent;)Lbmr;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareContent;Z)Z
    .locals 1

    .prologue
    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lccq;->a(Ljava/lang/Class;)Z

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
    .line 203
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lccs;->a(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result v0

    return v0
.end method
