.class public Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static a:Lguq;


# instance fields
.field private b:Lfda;

.field private c:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const v3, 0x7f100271

    .line 35
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 38
    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->setContentView(I)V

    .line 40
    const v0, 0x7f100270

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->e:Landroid/widget/TextView;

    .line 42
    sget-object v0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->a:Lguq;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lguo;->a:[I

    sget-object v1, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->a:Lguq;

    invoke-virtual {v1}, Lguq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    :cond_0
    :goto_0
    const v0, 0x7f10026f

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    iput-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->c:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 64
    const v0, 0x7f100272

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->d:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->d:Landroid/widget/ImageView;

    new-instance v1, Lgun;

    invoke-direct {v1, p0}, Lgun;-><init>(Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v0, Lfda;

    iget-object v1, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->c:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-direct {v0, p0, v1}, Lfda;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    iput-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->b:Lfda;

    .line 74
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->b:Lfda;

    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lfda;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->b:Lfda;

    invoke-virtual {v0}, Lfda;->b()V

    .line 76
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ae2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0, v3}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lgum;

    invoke-direct {v1, p0}, Lgum;-><init>(Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0, v3}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ae8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0, v3}, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 93
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->b:Lfda;

    invoke-virtual {v0}, Lfda;->e()V

    .line 94
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->c:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0, p1, p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lgrs;->onKeyDown(ILandroid/view/KeyEvent;)Z

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
    .line 86
    invoke-super {p0}, Lgrs;->onPause()V

    .line 87
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->b:Lfda;

    invoke-virtual {v0}, Lfda;->d()V

    .line 88
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lgrs;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->b:Lfda;

    invoke-virtual {v0}, Lfda;->c()V

    .line 82
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1}, Lgrs;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->b:Lfda;

    invoke-virtual {v0, p1}, Lfda;->a(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method
