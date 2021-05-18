.class final Lbzi;
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
        "Lbpz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lbzi;->a:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/SharePhoto;)Lbpz;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lbzi;->a:Ljava/util/UUID;

    invoke-static {v0, p1}, Lbze;->a(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lbpz;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 277
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lbzi;->a(Lcom/facebook/share/model/SharePhoto;)Lbpz;

    move-result-object v0

    return-object v0
.end method
