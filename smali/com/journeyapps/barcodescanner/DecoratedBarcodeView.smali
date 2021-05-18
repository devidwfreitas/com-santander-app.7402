.class public Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/BarcodeView;

.field private b:Lcom/journeyapps/barcodescanner/ViewfinderView;

.field private c:Landroid/widget/TextView;

.field private d:Lfdo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->f()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-direct {p0, p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a(Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-direct {p0, p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a(Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public static synthetic a(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)Lcom/journeyapps/barcodescanner/ViewfinderView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->b:Lcom/journeyapps/barcodescanner/ViewfinderView;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lese;->zxing_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    sget v1, Lese;->zxing_view_zxing_scanner_layout:I

    sget v2, Lesa;->zxing_barcode_scanner:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    sget v0, Lerz;->zxing_barcode_surface:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 94
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There is no a com.journeyapps.barcodescanner.BarcodeView on provided layout with the id \"zxing_barcode_surface\"."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Landroid/util/AttributeSet;)V

    .line 104
    sget v0, Lerz;->zxing_viewfinder_view:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/ViewfinderView;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->b:Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 106
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->b:Lcom/journeyapps/barcodescanner/ViewfinderView;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There is no a com.journeyapps.barcodescanner.ViewfinderView on provided layout with the id \"zxing_viewfinder_view\"."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->b:Lcom/journeyapps/barcodescanner/ViewfinderView;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/ViewfinderView;->setCameraPreview(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    .line 115
    sget v0, Lerz;->zxing_status_view:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->c:Landroid/widget/TextView;

    .line 116
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a(Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->e()V

    .line 170
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 132
    invoke-static {p1}, Lero;->a(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v0

    .line 133
    invoke-static {p1}, Lerp;->a(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v1

    .line 135
    new-instance v2, Lfel;

    invoke-direct {v2}, Lfel;-><init>()V

    .line 137
    const-string v3, "SCAN_CAMERA_ID"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    const-string v3, "SCAN_CAMERA_ID"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 139
    if-ltz v3, :cond_0

    .line 140
    invoke-virtual {v2, v3}, Lfel;->a(I)V

    .line 144
    :cond_0
    const-string v3, "PROMPT_MESSAGE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_1

    .line 146
    invoke-virtual {p0, v3}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setStatusText(Ljava/lang/String;)V

    .line 149
    :cond_1
    const-string v3, "CHARACTER_SET"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    new-instance v4, Leqe;

    invoke-direct {v4}, Leqe;-><init>()V

    .line 152
    invoke-virtual {v4, v1}, Leqe;->a(Ljava/util/Map;)V

    .line 154
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v4, v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->setCameraSettings(Lfel;)V

    .line 155
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    new-instance v4, Lfdq;

    invoke-direct {v4, v0, v1, v3}, Lfdq;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/journeyapps/barcodescanner/BarcodeView;->setDecoderFactory(Lfdj;)V

    .line 156
    return-void
.end method

.method public a(Lfco;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    new-instance v1, Lfdp;

    invoke-direct {v1, p0, p1}, Lfdp;-><init>(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;Lfco;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lfco;)V

    .line 196
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->j()V

    .line 177
    return-void
.end method

.method public b(Lfco;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    new-instance v1, Lfdp;

    invoke-direct {v1, p0, p1}, Lfdp;-><init>(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;Lfco;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->b(Lfco;)V

    .line 203
    return-void
.end method

.method public c()Lcom/journeyapps/barcodescanner/BarcodeView;
    .locals 1

    .prologue
    .line 180
    sget v0, Lerz;->zxing_barcode_surface:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView;

    return-object v0
.end method

.method public d()Lcom/journeyapps/barcodescanner/ViewfinderView;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->b:Lcom/journeyapps/barcodescanner/ViewfinderView;

    return-object v0
.end method

.method public e()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 234
    sparse-switch p1, :sswitch_data_0

    .line 247
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 241
    :sswitch_1
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchOff()V

    goto :goto_0

    .line 244
    :sswitch_2
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchOn()V

    goto :goto_0

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    return-void
.end method

.method public setTorchListener(Lfdo;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->d:Lfdo;

    .line 252
    return-void
.end method

.method public setTorchOff()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->setTorch(Z)V

    .line 222
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->d:Lfdo;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->d:Lfdo;

    invoke-interface {v0}, Lfdo;->b()V

    .line 225
    :cond_0
    return-void
.end method

.method public setTorchOn()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->setTorch(Z)V

    .line 211
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->d:Lfdo;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->d:Lfdo;

    invoke-interface {v0}, Lfdo;->a()V

    .line 214
    :cond_0
    return-void
.end method
