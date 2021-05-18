.class final Lbzk;
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
        "Lcom/facebook/share/model/ShareMedia;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/UUID;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/UUID;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lbzk;->a:Ljava/util/UUID;

    iput-object p2, p0, Lbzk;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareMedia;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lbzk;->a:Ljava/util/UUID;

    .line 330
    invoke-static {v0, p1}, Lbze;->a(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lbpz;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lbzk;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 333
    const-string v2, "type"

    .line 335
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMedia;->b()Lcar;

    move-result-object v3

    invoke-virtual {v3}, Lcar;->name()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v2, "uri"

    .line 338
    invoke-virtual {v0}, Lbpz;->a()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 326
    check-cast p1, Lcom/facebook/share/model/ShareMedia;

    invoke-virtual {p0, p1}, Lbzk;->a(Lcom/facebook/share/model/ShareMedia;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
