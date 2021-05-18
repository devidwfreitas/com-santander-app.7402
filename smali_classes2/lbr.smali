.class Llbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Ljava/util/List",
        "<",
        "Lkpo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Llbq;


# direct methods
.method constructor <init>(Llbq;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Llbr;->a:Llbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Llbr;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkpo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Llbr;->a:Llbq;

    invoke-virtual {v0}, Llbq;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Llbr;->a:Llbq;

    invoke-static {v0}, Llbq;->a(Llbq;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 131
    iget-object v0, p0, Llbr;->a:Llbq;

    invoke-static {v0, p1}, Llbq;->a(Llbq;Ljava/util/List;)Ljava/util/List;

    .line 132
    iget-object v0, p0, Llbr;->a:Llbq;

    invoke-static {v0}, Llbq;->b(Llbq;)V

    goto :goto_0
.end method
