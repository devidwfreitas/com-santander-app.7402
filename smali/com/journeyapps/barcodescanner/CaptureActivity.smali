.class public Lcom/journeyapps/barcodescanner/CaptureActivity;
.super Lcom/ca/android/app/CaMDOActivity;
.source "SourceFile"


# instance fields
.field private a:Lfda;

.field private b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ca/android/app/CaMDOActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
    .locals 1

    .prologue
    .line 34
    sget v0, Lesa;->zxing_capture:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CaptureActivity;->setContentView(I)V

    .line 35
    sget v0, Lerz;->zxing_barcode_scanner:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/ca/android/app/CaMDOActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureActivity;->a()Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 23
    new-instance v0, Lfda;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-direct {v0, p0, v1}, Lfda;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lfda;

    .line 24
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lfda;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lfda;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 25
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lfda;

    invoke-virtual {v0}, Lfda;->b()V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/ca/android/app/CaMDOActivity;->onDestroy()V

    .line 53
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lfda;

    invoke-virtual {v0}, Lfda;->e()V

    .line 54
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0, p1, p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/ca/android/app/CaMDOActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/ca/android/app/CaMDOActivity;->onPause()V

    .line 47
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lfda;

    invoke-virtual {v0}, Lfda;->d()V

    .line 48
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lfda;

    invoke-virtual {v0, p1, p2, p3}, Lfda;->a(I[Ljava/lang/String;[I)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/ca/android/app/CaMDOActivity;->onResume()V

    .line 41
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lfda;

    invoke-virtual {v0}, Lfda;->c()V

    .line 42
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/ca/android/app/CaMDOActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lfda;

    invoke-virtual {v0, p1}, Lfda;->a(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method
