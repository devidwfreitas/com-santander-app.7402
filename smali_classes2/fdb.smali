.class Lfdb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfco;


# instance fields
.field final synthetic a:Lfda;


# direct methods
.method constructor <init>(Lfda;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lfdb;->a:Lfda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfcq;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lfdb;->a:Lfda;

    invoke-static {v0}, Lfda;->a(Lfda;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a()V

    .line 75
    iget-object v0, p0, Lfdb;->a:Lfda;

    invoke-static {v0}, Lfda;->b(Lfda;)Lerk;

    move-result-object v0

    invoke-virtual {v0}, Lerk;->c()V

    .line 77
    iget-object v0, p0, Lfdb;->a:Lfda;

    invoke-static {v0}, Lfda;->c(Lfda;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lfdc;

    invoke-direct {v1, p0, p1}, Lfdc;-><init>(Lfdb;Lfcq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leqo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method
