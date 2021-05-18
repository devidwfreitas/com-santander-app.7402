.class public Lfdp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfco;


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private b:Lfco;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;Lfco;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lfdp;->a:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lfdp;->b:Lfco;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lfcq;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lfdp;->b:Lfco;

    invoke-interface {v0, p1}, Lfco;->a(Lfcq;)V

    .line 50
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
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
    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqo;

    .line 55
    iget-object v2, p0, Lfdp;->a:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)Lcom/journeyapps/barcodescanner/ViewfinderView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->a(Leqo;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lfdp;->b:Lfco;

    invoke-interface {v0, p1}, Lfco;->a(Ljava/util/List;)V

    .line 58
    return-void
.end method
