.class public Lcom/journeyapps/barcodescanner/CameraPreview;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final k:I = 0xfa


# instance fields
.field private A:Lfdr;

.field private final B:Lfcz;

.field private b:Lfec;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Landroid/view/SurfaceView;

.field private g:Landroid/view/TextureView;

.field private h:Z

.field private i:Lfds;

.field private j:I

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfcz;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lfeq;

.field private n:Lfel;

.field private o:Lfdu;

.field private p:Lfdu;

.field private q:Landroid/graphics/Rect;

.field private r:Lfdu;

.field private s:Landroid/graphics/Rect;

.field private t:Landroid/graphics/Rect;

.field private u:Lfdu;

.field private v:D

.field private w:Lfew;

.field private x:Z

.field private final y:Landroid/view/SurfaceHolder$Callback;

.field private final z:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 223
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 92
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 97
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->j:I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->l:Ljava/util/List;

    .line 109
    new-instance v0, Lfel;

    invoke-direct {v0}, Lfel;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lfel;

    .line 124
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 127
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:Landroid/graphics/Rect;

    .line 130
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Lfdu;

    .line 134
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->v:D

    .line 136
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lfew;

    .line 138
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Z

    .line 167
    new-instance v0, Lfcu;

    invoke-direct {v0, p0}, Lfcu;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->y:Landroid/view/SurfaceHolder$Callback;

    .line 190
    new-instance v0, Lfcv;

    invoke-direct {v0, p0}, Lfcv;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->z:Landroid/os/Handler$Callback;

    .line 209
    new-instance v0, Lfcw;

    invoke-direct {v0, p0}, Lfcw;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->A:Lfdr;

    .line 323
    new-instance v0, Lfcy;

    invoke-direct {v0, p0}, Lfcy;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->B:Lfcz;

    .line 224
    invoke-direct {p0, p1, v3, v2, v2}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 228
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 97
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->j:I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->l:Ljava/util/List;

    .line 109
    new-instance v0, Lfel;

    invoke-direct {v0}, Lfel;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lfel;

    .line 124
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 127
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:Landroid/graphics/Rect;

    .line 130
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Lfdu;

    .line 134
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->v:D

    .line 136
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lfew;

    .line 138
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Z

    .line 167
    new-instance v0, Lfcu;

    invoke-direct {v0, p0}, Lfcu;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->y:Landroid/view/SurfaceHolder$Callback;

    .line 190
    new-instance v0, Lfcv;

    invoke-direct {v0, p0}, Lfcv;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->z:Landroid/os/Handler$Callback;

    .line 209
    new-instance v0, Lfcw;

    invoke-direct {v0, p0}, Lfcw;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->A:Lfdr;

    .line 323
    new-instance v0, Lfcy;

    invoke-direct {v0, p0}, Lfcy;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->B:Lfcz;

    .line 229
    invoke-direct {p0, p1, p2, v2, v2}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 233
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 97
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->j:I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->l:Ljava/util/List;

    .line 109
    new-instance v0, Lfel;

    invoke-direct {v0}, Lfel;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lfel;

    .line 124
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 127
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:Landroid/graphics/Rect;

    .line 130
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Lfdu;

    .line 134
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->v:D

    .line 136
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lfew;

    .line 138
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Z

    .line 167
    new-instance v0, Lfcu;

    invoke-direct {v0, p0}, Lfcu;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->y:Landroid/view/SurfaceHolder$Callback;

    .line 190
    new-instance v0, Lfcv;

    invoke-direct {v0, p0}, Lfcv;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->z:Landroid/os/Handler$Callback;

    .line 209
    new-instance v0, Lfcw;

    invoke-direct {v0, p0}, Lfcw;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->A:Lfdr;

    .line 323
    new-instance v0, Lfcy;

    invoke-direct {v0, p0}, Lfcy;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->B:Lfcz;

    .line 234
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 235
    return-void
.end method

.method private a()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lfct;

    invoke-direct {v0, p0}, Lfct;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/journeyapps/barcodescanner/CameraPreview;Lfdu;)Lfdu;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Lfdu;

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->setBackgroundColor(I)V

    .line 243
    :cond_0
    invoke-virtual {p0, p2}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Landroid/util/AttributeSet;)V

    .line 245
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->c:Landroid/view/WindowManager;

    .line 247
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->z:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->d:Landroid/os/Handler;

    .line 249
    new-instance v0, Lfds;

    invoke-direct {v0}, Lfds;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->i:Lfds;

    .line 250
    return-void
.end method

.method public static synthetic a(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->t()V

    return-void
.end method

.method private a(Lfdu;)V
    .locals 2

    .prologue
    .line 402
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Lfdu;

    .line 403
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    invoke-virtual {v0}, Lfec;->a()Lfeq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lfeq;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->u()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lfeq;-><init>(ILfdu;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->m:Lfeq;

    .line 406
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->m:Lfeq;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->f()Lfew;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfeq;->a(Lfew;)V

    .line 407
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->m:Lfeq;

    invoke-virtual {v0, v1}, Lfec;->a(Lfeq;)V

    .line 408
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    invoke-virtual {v0}, Lfec;->e()V

    .line 409
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Z

    invoke-virtual {v0, v1}, Lfec;->a(Z)V

    .line 414
    :cond_0
    return-void
.end method

.method private a(Lfen;)V
    .locals 2

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    if-eqz v0, :cond_0

    .line 729
    sget-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    const-string v1, "Starting preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    invoke-virtual {v0, p1}, Lfec;->a(Lfen;)V

    .line 731
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    invoke-virtual {v0}, Lfec;->f()V

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    .line 734
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->d()V

    .line 735
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->B:Lfcz;

    invoke-interface {v0}, Lfcz;->b()V

    .line 737
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/journeyapps/barcodescanner/CameraPreview;)Lfcz;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->B:Lfcz;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->u()I

    move-result v0

    iget v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->j:I

    if-eq v0, v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->e()V

    .line 293
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->j()V

    .line 295
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/journeyapps/barcodescanner/CameraPreview;Lfdu;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->b(Lfdu;)V

    return-void
.end method

.method private b(Lfdu;)V
    .locals 1

    .prologue
    .line 445
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lfdu;

    .line 446
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Lfdu;

    if-eqz v0, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->s()V

    .line 448
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->requestLayout()V

    .line 449
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->t()V

    .line 451
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewAPI"
        }
    .end annotation

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 301
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    .line 302
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 303
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->addView(Landroid/view/View;)V

    .line 312
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->y:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 310
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->b()V

    return-void
.end method

.method public static synthetic d(Lcom/journeyapps/barcodescanner/CameraPreview;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic e(Lcom/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->l:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    return-object v0
.end method

.method private s()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 355
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Lfdu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lfdu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->m:Lfeq;

    if-nez v0, :cond_1

    .line 356
    :cond_0
    iput-object v7, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:Landroid/graphics/Rect;

    .line 357
    iput-object v7, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 358
    iput-object v7, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    .line 359
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "containerSize or previewSize is not set yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lfdu;

    iget v0, v0, Lfdu;->a:I

    .line 363
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lfdu;

    iget v1, v1, Lfdu;->b:I

    .line 365
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Lfdu;

    iget v2, v2, Lfdu;->a:I

    .line 366
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Lfdu;

    iget v3, v3, Lfdu;->b:I

    .line 368
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->m:Lfeq;

    iget-object v5, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lfdu;

    invoke-virtual {v4, v5}, Lfeq;->a(Lfdu;)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    .line 370
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 371
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v2}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 372
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 373
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 375
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    mul-int/2addr v4, v0

    iget-object v5, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    mul-int/2addr v5, v1

    iget-object v6, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    .line 376
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    mul-int/2addr v0, v6

    iget-object v6, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    .line 377
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v0, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    .line 378
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v1, v2

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:Landroid/graphics/Rect;

    .line 380
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_3

    .line 381
    :cond_2
    iput-object v7, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:Landroid/graphics/Rect;

    .line 382
    iput-object v7, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 383
    sget-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    const-string v1, "Preview frame is too small"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->B:Lfcz;

    invoke-interface {v0}, Lfcz;->a()V

    goto :goto_0
.end method

.method private t()V
    .locals 4

    .prologue
    .line 496
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Lfdu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lfdu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Lfdu;

    new-instance v1, Lfdu;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lfdu;-><init>(II)V

    invoke-virtual {v0, v1}, Lfdu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    new-instance v0, Lfen;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lfen;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lfen;)V

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lfdu;

    if-eqz v0, :cond_2

    .line 501
    new-instance v0, Lfdu;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lfdu;-><init>(II)V

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lfdu;

    invoke-virtual {p0, v0, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lfdu;Lfdu;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 505
    :cond_2
    new-instance v0, Lfen;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Lfen;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lfen;)V

    goto :goto_0
.end method

.method private u()I
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    if-eqz v0, :cond_0

    .line 700
    sget-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    const-string v1, "initCamera called twice"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->o()Lfec;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    .line 706
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lfec;->a(Landroid/os/Handler;)V

    .line 707
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    invoke-virtual {v0}, Lfec;->d()V

    .line 711
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->u()I

    move-result v0

    iput v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->j:I

    goto :goto_0
.end method


# virtual methods
.method protected a(Lfdu;Lfdu;)Landroid/graphics/Matrix;
    .locals 6

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 463
    iget v1, p1, Lfdu;->a:I

    int-to-float v1, v1

    iget v2, p1, Lfdu;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 464
    iget v2, p2, Lfdu;->a:I

    int-to-float v2, v2

    iget v3, p2, Lfdu;->b:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 471
    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    .line 472
    div-float v1, v2, v1

    .line 479
    :goto_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 481
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 484
    iget v3, p1, Lfdu;->a:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    .line 485
    iget v3, p1, Lfdu;->b:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    .line 486
    iget v3, p1, Lfdu;->a:I

    int-to-float v3, v3

    sub-float v1, v3, v1

    div-float/2addr v1, v4

    .line 487
    iget v3, p1, Lfdu;->b:I

    int-to-float v3, v3

    sub-float v0, v3, v0

    div-float/2addr v0, v4

    .line 490
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 492
    return-object v2

    .line 476
    :cond_0
    div-float/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 782
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 783
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 785
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Lfdu;

    if-eqz v1, :cond_1

    .line 787
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Lfdu;

    iget v2, v2, Lfdu;->a:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 788
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Lfdu;

    iget v3, v3, Lfdu;->b:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 789
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 799
    :cond_0
    :goto_0
    return-object v0

    .line 793
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->v:D

    mul-double/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v4, v1

    iget-wide v6, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->v:D

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v1, v2

    .line 794
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 795
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 797
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_0
.end method

.method protected a(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    .line 265
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lese;->zxing_camera_preview:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 267
    sget v1, Lese;->zxing_camera_preview_zxing_framing_rect_width:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 268
    sget v2, Lese;->zxing_camera_preview_zxing_framing_rect_height:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 270
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 271
    new-instance v3, Lfdu;

    invoke-direct {v3, v1, v2}, Lfdu;-><init>(II)V

    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Lfdu;

    .line 274
    :cond_0
    sget v1, Lese;->zxing_camera_preview_zxing_use_texture_view:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 277
    sget v1, Lese;->zxing_camera_preview_zxing_preview_scaling_strategy:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 278
    if-ne v1, v4, :cond_2

    .line 279
    new-instance v1, Lfep;

    invoke-direct {v1}, Lfep;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lfew;

    .line 286
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    return-void

    .line 280
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 281
    new-instance v1, Lfer;

    invoke-direct {v1}, Lfer;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lfew;

    goto :goto_0

    .line 282
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 283
    new-instance v1, Lfes;

    invoke-direct {v1}, Lfes;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lfew;

    goto :goto_0
.end method

.method public a(Lfcz;)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 744
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 615
    invoke-static {}, Lfdw;->a()V

    .line 616
    sget-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    const-string v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->j:I

    .line 619
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    invoke-virtual {v0}, Lfec;->close()V

    .line 621
    iput-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Lfdu;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->y:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Lfdu;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 629
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 632
    :cond_2
    iput-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Lfdu;

    .line 633
    iput-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lfdu;

    .line 634
    iput-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:Landroid/graphics/Rect;

    .line 635
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->i:Lfds;

    invoke-virtual {v0}, Lfds;->a()V

    .line 637
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->B:Lfcz;

    invoke-interface {v0}, Lfcz;->c()V

    .line 638
    return-void
.end method

.method public f()Lfew;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lfew;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lfew;

    .line 439
    :goto_0
    return-object v0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 437
    new-instance v0, Lfep;

    invoke-direct {v0}, Lfep;-><init>()V

    goto :goto_0

    .line 439
    :cond_1
    new-instance v0, Lfer;

    invoke-direct {v0}, Lfer;-><init>()V

    goto :goto_0
.end method

.method public g()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    return-object v0
.end method

.method public h()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:Landroid/graphics/Rect;

    return-object v0
.end method

.method public i()Lfel;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lfel;

    return-object v0
.end method

.method public j()V
    .locals 4

    .prologue
    .line 581
    invoke-static {}, Lfdw;->a()V

    .line 582
    sget-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    const-string v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->v()V

    .line 587
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Lfdu;

    if-eqz v0, :cond_1

    .line 590
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->t()V

    .line 603
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->requestLayout()V

    .line 604
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->i:Lfds;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->A:Lfdr;

    invoke-virtual {v0, v1, v2}, Lfds;->a(Landroid/content/Context;Lfdr;)V

    .line 605
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->y:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 598
    :cond_3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method public k()Lfdu;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Lfdu;

    return-object v0
.end method

.method public l()D
    .locals 2

    .prologue
    .line 654
    iget-wide v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->v:D

    return-wide v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected o()Lfec;
    .locals 2

    .prologue
    .line 722
    new-instance v0, Lfec;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lfec;-><init>(Landroid/content/Context;)V

    .line 723
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lfel;

    invoke-virtual {v0, v1}, Lfec;->a(Lfel;)V

    .line 724
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 256
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->c()V

    .line 257
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 515
    new-instance v0, Lfdu;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-direct {v0, v1, v2}, Lfdu;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lfdu;)V

    .line 517
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_0

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/TextureView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 814
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 815
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 823
    :goto_0
    return-void

    .line 818
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    .line 819
    const-string v0, "super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 820
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 821
    const-string v0, "torch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 822
    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->setTorch(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 804
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 806
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 807
    const-string v2, "super"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 808
    const-string v0, "torch"

    iget-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 809
    return-object v1
.end method

.method public p()Lfec;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    return v0
.end method

.method public setCameraSettings(Lfel;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lfel;

    .line 571
    return-void
.end method

.method public setFramingRectSize(Lfdu;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Lfdu;

    .line 651
    return-void
.end method

.method public setMarginFraction(D)V
    .locals 3

    .prologue
    .line 664
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 665
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The margin fraction must be less than 0.5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_0
    iput-wide p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->v:D

    .line 668
    return-void
.end method

.method public setPreviewScalingStrategy(Lfew;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lfew;

    .line 423
    return-void
.end method

.method public setTorch(Z)V
    .locals 1

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Z

    .line 396
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lfec;

    invoke-virtual {v0, p1}, Lfec;->a(Z)V

    .line 399
    :cond_0
    return-void
.end method

.method public setUseTextureView(Z)V
    .locals 0

    .prologue
    .line 682
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 683
    return-void
.end method
