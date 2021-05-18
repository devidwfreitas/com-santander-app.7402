.class Lcbq;
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
    .line 252
    iput-object p1, p0, Lcbq;->b:Lcbk;

    invoke-direct {p0, p1}, Lbnz;-><init>(Lbny;)V

    return-void
.end method

.method synthetic constructor <init>(Lcbk;Lcbl;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcbq;-><init>(Lcbk;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/AppInviteContent;)Lbmr;
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcbq;->b:Lcbk;

    invoke-virtual {v0}, Lcbk;->d()Lbmr;

    move-result-object v0

    .line 264
    invoke-static {p1}, Lcbk;->a(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 265
    invoke-static {}, Lcbk;->g()Lbnv;

    move-result-object v2

    .line 262
    invoke-static {v0, v1, v2}, Lbnw;->a(Lbmr;Landroid/os/Bundle;Lbnv;)V

    .line 267
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lbmr;
    .locals 1

    .prologue
    .line 252
    check-cast p1, Lcom/facebook/share/model/AppInviteContent;

    invoke-virtual {p0, p1}, Lcbq;->a(Lcom/facebook/share/model/AppInviteContent;)Lbmr;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/AppInviteContent;Z)Z
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcbk;->h()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 252
    check-cast p1, Lcom/facebook/share/model/AppInviteContent;

    invoke-virtual {p0, p1, p2}, Lcbq;->a(Lcom/facebook/share/model/AppInviteContent;Z)Z

    move-result v0

    return v0
.end method
