.class Llcu;
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
        "Lkon;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Llct;


# direct methods
.method constructor <init>(Llct;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Llcu;->a:Llct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Llcu;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Llcu;->a:Llct;

    invoke-virtual {v0}, Llct;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Llcu;->a:Llct;

    invoke-static {v0}, Llct;->a(Llct;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 101
    iget-object v0, p0, Llcu;->a:Llct;

    invoke-static {v0, p1}, Llct;->a(Llct;Ljava/util/List;)Ljava/util/List;

    .line 102
    iget-object v0, p0, Llcu;->a:Llct;

    invoke-static {v0}, Llct;->b(Llct;)V

    goto :goto_0
.end method
