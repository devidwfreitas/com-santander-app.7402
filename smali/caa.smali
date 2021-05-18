.class final Lcaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbqu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbqu",
        "<",
        "Lcom/facebook/share/model/SharePhoto;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lcaa;->a(Lcom/facebook/share/model/SharePhoto;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/SharePhoto;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
