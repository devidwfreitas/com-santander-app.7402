.class public Lcom/santander/app/components/view/zxing/CustomScannerActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lfdo;


# instance fields
.field private a:Lfda;

.field private b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/Button;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->e:Z

    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 112
    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->e:Z

    .line 129
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->e:Z

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 45
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f040053

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 49
    const-string v1, "Leitor de C\u00f3digo de Barras"

    invoke-static {v0, v1}, Lgpu;->a(Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1000c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    const v0, 0x7f10026f

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    iput-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 55
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0, p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchListener(Lfdo;)V

    .line 57
    const v0, 0x7f100273

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->c:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f100699

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->d:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->d:Landroid/widget/Button;

    new-instance v1, Lgup;

    invoke-direct {v1, p0}, Lgup;-><init>(Lcom/santander/app/components/view/zxing/CustomScannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-direct {p0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :cond_0
    new-instance v0, Lfda;

    iget-object v1, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-direct {v0, p0, v1}, Lfda;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    iput-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->a:Lfda;

    .line 74
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->a:Lfda;

    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lfda;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->a:Lfda;

    invoke-virtual {v0}, Lfda;->b()V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 140
    const v1, 0x7f120011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 142
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 93
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->a:Lfda;

    invoke-virtual {v0}, Lfda;->e()V

    .line 94
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 150
    :pswitch_0
    const-string v0, "Pagamentos_Pagamento_CodigoDeBarras_Acao"

    const-string v1, "FecharLeitorDeCodigoDeBarras"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->finish()V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x7f101210
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lgrs;->onPause()V

    .line 87
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->a:Lfda;

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
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->a:Lfda;

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
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->a:Lfda;

    invoke-virtual {v0, p1}, Lfda;->a(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public switchFlashlight(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->e:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchOn()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/CustomScannerActivity;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchOff()V

    goto :goto_0
.end method
