.class public Lcom/journeyapps/barcodescanner/BarcodeView;
.super Lcom/journeyapps/barcodescanner/CameraPreview;
.source "SourceFile"


# instance fields
.field private a:Lfcs;

.field private b:Lfco;

.field private c:Lfdl;

.field private d:Lfdj;

.field private e:Landroid/os/Handler;

.field private final f:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lfcs;->NONE:Lfcs;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lfcs;

    .line 36
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lfco;

    .line 44
    new-instance v0, Lfcr;

    invoke-direct {v0, p0}, Lfcr;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->f:Landroid/os/Handler$Callback;

    .line 76
    invoke-direct {p0, p1, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v0, Lfcs;->NONE:Lfcs;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lfcs;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lfco;

    .line 44
    new-instance v0, Lfcr;

    invoke-direct {v0, p0}, Lfcr;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->f:Landroid/os/Handler$Callback;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v0, Lfcs;->NONE:Lfcs;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lfcs;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lfco;

    .line 44
    new-instance v0, Lfcr;

    invoke-direct {v0, p0}, Lfcr;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->f:Landroid/os/Handler$Callback;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public static synthetic a(Lcom/journeyapps/barcodescanner/BarcodeView;)Lfco;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lfco;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lfdq;

    invoke-direct {v0}, Lfdq;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->d:Lfdj;

    .line 91
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->f:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->e:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method public static synthetic b(Lcom/journeyapps/barcodescanner/BarcodeView;)Lfcs;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lfcs;

    return-object v0
.end method

.method private s()Lfdi;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->d:Lfdj;

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->c()Lfdj;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->d:Lfdj;

    .line 115
    :cond_0
    new-instance v0, Lfdk;

    invoke-direct {v0}, Lfdk;-><init>()V

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 117
    sget-object v2, Lepy;->NEED_RESULT_POINT_CALLBACK:Lepy;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->d:Lfdj;

    invoke-interface {v2, v1}, Lfdj;->a(Ljava/util/Map;)Lfdi;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lfdk;->a(Lfdi;)V

    .line 120
    return-object v1
.end method

.method private t()V
    .locals 4

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->u()V

    .line 173
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lfcs;

    sget-object v1, Lfcs;->NONE:Lfcs;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Lfdl;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->p()Lfec;

    move-result-object v1

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->s()Lfdi;

    move-result-object v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->e:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lfdl;-><init>(Lfec;Lfdi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lfdl;

    .line 178
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lfdl;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->h()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfdl;->a(Landroid/graphics/Rect;)V

    .line 179
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lfdl;

    invoke-virtual {v0}, Lfdl;->c()V

    .line 181
    :cond_0
    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lfdl;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lfdl;

    invoke-virtual {v0}, Lfdl;->d()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lfdl;

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lfdj;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->d:Lfdj;

    return-object v0
.end method

.method public a(Lfco;)V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lfcs;->SINGLE:Lfcs;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lfcs;

    .line 140
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lfco;

    .line 141
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->t()V

    .line 142
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lfcs;->NONE:Lfcs;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lfcs;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lfco;

    .line 163
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->u()V

    .line 164
    return-void
.end method

.method public b(Lfco;)V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lfcs;->CONTINUOUS:Lfcs;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lfcs;

    .line 153
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lfco;

    .line 154
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->t()V

    .line 155
    return-void
.end method

.method protected c()Lfdj;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lfdq;

    invoke-direct {v0}, Lfdq;-><init>()V

    return-object v0
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->d()V

    .line 187
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->t()V

    .line 188
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->u()V

    .line 205
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->e()V

    .line 206
    return-void
.end method

.method public setDecoderFactory(Lfdj;)V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lfdw;->a()V

    .line 105
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->d:Lfdj;

    .line 106
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lfdl;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lfdl;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->s()Lfdi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfdl;->a(Lfdi;)V

    .line 109
    :cond_0
    return-void
.end method
