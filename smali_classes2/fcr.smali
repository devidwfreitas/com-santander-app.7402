.class public Lfcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/BarcodeView;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lfcr;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    sget v2, Lerz;->zxing_decode_succeeded:I

    if-ne v0, v2, :cond_1

    .line 48
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lfcq;

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget-object v2, p0, Lfcr;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lcom/journeyapps/barcodescanner/BarcodeView;)Lfco;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfcr;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->b(Lcom/journeyapps/barcodescanner/BarcodeView;)Lfcs;

    move-result-object v2

    sget-object v3, Lfcs;->NONE:Lfcs;

    if-eq v2, v3, :cond_0

    .line 52
    iget-object v2, p0, Lfcr;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lcom/journeyapps/barcodescanner/BarcodeView;)Lfco;

    move-result-object v2

    invoke-interface {v2, v0}, Lfco;->a(Lfcq;)V

    .line 53
    iget-object v0, p0, Lfcr;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->b(Lcom/journeyapps/barcodescanner/BarcodeView;)Lfcs;

    move-result-object v0

    sget-object v2, Lfcs;->SINGLE:Lfcs;

    if-ne v0, v2, :cond_0

    .line 54
    iget-object v0, p0, Lfcr;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->b()V

    :cond_0
    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 59
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v2, Lerz;->zxing_decode_failed:I

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sget v2, Lerz;->zxing_possible_result_points:I

    if-ne v0, v2, :cond_4

    .line 63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 64
    iget-object v2, p0, Lfcr;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lcom/journeyapps/barcodescanner/BarcodeView;)Lfco;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lfcr;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->b(Lcom/journeyapps/barcodescanner/BarcodeView;)Lfcs;

    move-result-object v2

    sget-object v3, Lfcs;->NONE:Lfcs;

    if-eq v2, v3, :cond_3

    .line 65
    iget-object v2, p0, Lfcr;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lcom/journeyapps/barcodescanner/BarcodeView;)Lfco;

    move-result-object v2

    invoke-interface {v2, v0}, Lfco;->a(Ljava/util/List;)V

    :cond_3
    move v0, v1

    .line 67
    goto :goto_0

    .line 69
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
