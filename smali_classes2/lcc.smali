.class Llcc;
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
        "Lkph;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Llca;


# direct methods
.method constructor <init>(Llca;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Llcc;->a:Llca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Llcc;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkph;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Llcc;->a:Llca;

    invoke-virtual {v0}, Llca;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Llcc;->a:Llca;

    invoke-static {v0}, Llca;->d(Llca;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 117
    iget-object v0, p0, Llcc;->a:Llca;

    invoke-static {v0, p1}, Llca;->a(Llca;Ljava/util/List;)V

    goto :goto_0
.end method
