.class Lccb;
.super Lbnz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcca;",
        ">.bnz;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcbx;


# direct methods
.method private constructor <init>(Lcbx;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lccb;->b:Lcbx;

    invoke-direct {p0, p1}, Lbnz;-><init>(Lbny;)V

    return-void
.end method

.method synthetic constructor <init>(Lcbx;Lcby;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lccb;-><init>(Lcbx;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/GameRequestContent;)Lbmr;
    .locals 3

    .prologue
    .line 224
    invoke-static {p1}, Lbwu;->a(Lcom/facebook/share/model/GameRequestContent;)V

    .line 225
    iget-object v0, p0, Lccb;->b:Lcbx;

    invoke-virtual {v0}, Lcbx;->d()Lbmr;

    move-result-object v0

    .line 226
    const-string v1, "apprequests"

    .line 229
    invoke-static {p1}, Lbzz;->a(Lcom/facebook/share/model/GameRequestContent;)Landroid/os/Bundle;

    move-result-object v2

    .line 226
    invoke-static {v0, v1, v2}, Lbnw;->a(Lbmr;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 231
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lbmr;
    .locals 1

    .prologue
    .line 216
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, p1}, Lccb;->a(Lcom/facebook/share/model/GameRequestContent;)Lbmr;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/GameRequestContent;Z)Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 216
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, p1, p2}, Lccb;->a(Lcom/facebook/share/model/GameRequestContent;Z)Z

    move-result v0

    return v0
.end method
