.class Lldo;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lldn;


# direct methods
.method constructor <init>(Lldn;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lldo;->a:Lldn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 212
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lldo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lldo;->a:Lldn;

    invoke-virtual {v0}, Lldn;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lldo;->a:Lldn;

    invoke-static {v0}, Lldn;->a(Lldn;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 219
    iget-object v0, p0, Lldo;->a:Lldn;

    invoke-static {v0, p1}, Lldn;->a(Lldn;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lldo;->a:Lldn;

    invoke-static {v0}, Lldn;->b(Lldn;)V

    goto :goto_0
.end method
