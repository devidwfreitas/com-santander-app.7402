.class Llco;
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
        "Lkps;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Llcn;


# direct methods
.method constructor <init>(Llcn;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Llco;->a:Llcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 125
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Llco;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkps;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Llco;->a:Llcn;

    invoke-virtual {v0}, Llcn;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Llco;->a:Llcn;

    invoke-static {v0}, Llcn;->a(Llcn;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 132
    iget-object v0, p0, Llco;->a:Llcn;

    invoke-static {v0, p1}, Llcn;->a(Llcn;Ljava/util/List;)Ljava/util/List;

    .line 133
    iget-object v0, p0, Llco;->a:Llcn;

    invoke-static {v0}, Llcn;->b(Llcn;)V

    goto :goto_0
.end method
