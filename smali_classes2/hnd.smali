.class Lhnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lhld;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lhna;

.field final synthetic c:Lhnc;


# direct methods
.method constructor <init>(Lhnc;Ljava/util/List;Lhna;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lhnd;->c:Lhnc;

    iput-object p2, p0, Lhnd;->a:Ljava/util/List;

    iput-object p3, p0, Lhnd;->b:Lhna;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhld;)V
    .locals 3

    .prologue
    .line 62
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lhld;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lhnd;->a:Ljava/util/List;

    invoke-virtual {p1}, Lhld;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_0
    iget-object v0, p0, Lhnd;->b:Lhna;

    const/4 v1, 0x1

    iget-object v2, p0, Lhnd;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lhna;->a(ZLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-class v1, Lhnc;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lhnd;->b:Lhna;

    const/4 v1, 0x0

    iget-object v2, p0, Lhnd;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lhna;->a(ZLjava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lhld;

    invoke-virtual {p0, p1}, Lhnd;->a(Lhld;)V

    return-void
.end method
