.class Lcbn;
.super Lbnz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Lcom/facebook/share/model/AppInviteContent;",
        "Lcbp;",
        ">.bnz;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcbk;


# direct methods
.method private constructor <init>(Lcbk;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcbn;->b:Lcbk;

    invoke-direct {p0, p1}, Lbnz;-><init>(Lbny;)V

    return-void
.end method

.method synthetic constructor <init>(Lcbk;Lcbl;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcbn;-><init>(Lcbk;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/AppInviteContent;)Lbmr;
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcbn;->b:Lcbk;

    invoke-virtual {v0}, Lcbk;->d()Lbmr;

    move-result-object v0

    .line 229
    new-instance v1, Lcbo;

    invoke-direct {v1, p0, p1}, Lcbo;-><init>(Lcbn;Lcom/facebook/share/model/AppInviteContent;)V

    .line 246
    invoke-static {}, Lcbk;->g()Lbnv;

    move-result-object v2

    .line 229
    invoke-static {v0, v1, v2}, Lbnw;->a(Lbmr;Lbnx;Lbnv;)V

    .line 248
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lbmr;
    .locals 1

    .prologue
    .line 219
    check-cast p1, Lcom/facebook/share/model/AppInviteContent;

    invoke-virtual {p0, p1}, Lcbn;->a(Lcom/facebook/share/model/AppInviteContent;)Lbmr;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/AppInviteContent;Z)Z
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcbk;->f()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 219
    check-cast p1, Lcom/facebook/share/model/AppInviteContent;

    invoke-virtual {p0, p1, p2}, Lcbn;->a(Lcom/facebook/share/model/AppInviteContent;Z)Z

    move-result v0

    return v0
.end method
