.class Lhlr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhna;


# instance fields
.field final synthetic a:Lhlq;


# direct methods
.method constructor <init>(Lhlq;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lhlr;->a:Lhlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lhxl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lhlr;->a:Lhlq;

    iget-object v0, v0, Lhlq;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    iget-object v0, p0, Lhlr;->a:Lhlq;

    iget-object v0, v0, Lhlq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lhlr;->a:Lhlq;

    iget-object v0, v0, Lhlq;->b:Lhlo;

    invoke-interface {v0}, Lhlo;->c()V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lhlr;->a:Lhlq;

    iget-object v0, v0, Lhlq;->c:Lhlp;

    iget-object v1, p0, Lhlr;->a:Lhlq;

    iget-object v1, v1, Lhlq;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lhlp;->a(Lhlp;Ljava/util/List;)V

    .line 43
    iget-object v0, p0, Lhlr;->a:Lhlq;

    iget-object v0, v0, Lhlq;->b:Lhlo;

    iget-object v1, p0, Lhlr;->a:Lhlq;

    iget-object v1, v1, Lhlq;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lhlo;->a(Ljava/util/List;)V

    goto :goto_0
.end method
