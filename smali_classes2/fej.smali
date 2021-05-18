.class public final Lfej;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/hardware/Camera;

.field private c:Landroid/hardware/Camera$CameraInfo;

.field private d:Lfdy;

.field private e:Leri;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lfel;

.field private i:Lfeq;

.field private j:Lfdu;

.field private k:Lfdu;

.field private l:I

.field private m:Landroid/content/Context;

.field private final n:Lfek;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lfej;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfej;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lfel;

    invoke-direct {v0}, Lfel;-><init>()V

    iput-object v0, p0, Lfej;->h:Lfel;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lfej;->l:I

    .line 125
    iput-object p1, p0, Lfej;->m:Landroid/content/Context;

    .line 126
    new-instance v0, Lfek;

    invoke-direct {v0, p0}, Lfek;-><init>(Lfej;)V

    iput-object v0, p0, Lfej;->n:Lfek;

    .line 127
    return-void
.end method

.method private static a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Lfdu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 307
    if-nez v0, :cond_1

    .line 308
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 311
    new-instance v2, Lfdu;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v0}, Lfdu;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, v1

    .line 318
    :goto_0
    return-object v0

    .line 315
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 316
    new-instance v3, Lfdu;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v0}, Lfdu;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 318
    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 353
    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    .line 247
    invoke-direct {p0}, Lfej;->o()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 250
    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lfej;->a:Ljava/lang/String;

    const-string v1, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return-void

    .line 255
    :cond_0
    sget-object v1, Lfej;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial camera parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz p1, :cond_1

    .line 258
    sget-object v1, Lfej;->a:Ljava/lang/String;

    const-string v2, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    iget-object v1, p0, Lfej;->h:Lfel;

    invoke-virtual {v1}, Lfel;->h()Lfem;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lesf;->a(Landroid/hardware/Camera$Parameters;Lfem;Z)V

    .line 263
    if-nez p1, :cond_4

    .line 264
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lesf;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 266
    iget-object v1, p0, Lfej;->h:Lfel;

    invoke-virtual {v1}, Lfel;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    invoke-static {v0}, Lesf;->f(Landroid/hardware/Camera$Parameters;)V

    .line 270
    :cond_2
    iget-object v1, p0, Lfej;->h:Lfel;

    invoke-virtual {v1}, Lfel;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    invoke-static {v0}, Lesf;->e(Landroid/hardware/Camera$Parameters;)V

    .line 274
    :cond_3
    iget-object v1, p0, Lfej;->h:Lfel;

    invoke-virtual {v1}, Lfel;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_4

    .line 276
    invoke-static {v0}, Lesf;->d(Landroid/hardware/Camera$Parameters;)V

    .line 277
    invoke-static {v0}, Lesf;->b(Landroid/hardware/Camera$Parameters;)V

    .line 278
    invoke-static {v0}, Lesf;->c(Landroid/hardware/Camera$Parameters;)V

    .line 284
    :cond_4
    invoke-static {v0}, Lfej;->a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 285
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lfej;->j:Lfdu;

    .line 293
    :goto_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "glass-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    invoke-static {v0}, Lesf;->a(Landroid/hardware/Camera$Parameters;)V

    .line 299
    :cond_5
    sget-object v1, Lfej;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Final camera parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lfej;->b:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 288
    :cond_6
    iget-object v2, p0, Lfej;->i:Lfeq;

    invoke-virtual {p0}, Lfej;->e()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lfeq;->a(Ljava/util/List;Z)Lfdu;

    move-result-object v1

    iput-object v1, p0, Lfej;->j:Lfdu;

    .line 290
    iget-object v1, p0, Lfej;->j:Lfdu;

    iget v1, v1, Lfdu;->a:I

    iget-object v2, p0, Lfej;->j:Lfdu;

    iget v2, v2, Lfdu;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_1
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lfej;->a:Ljava/lang/String;

    return-object v0
.end method

.method private o()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lfej;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfej;->g:Ljava/lang/String;

    .line 243
    :goto_0
    return-object v0

    .line 241
    :cond_0
    iget-object v1, p0, Lfej;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private p()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 323
    iget-object v1, p0, Lfej;->i:Lfeq;

    invoke-virtual {v1}, Lfeq;->a()I

    move-result v1

    .line 325
    packed-switch v1, :pswitch_data_0

    .line 341
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lfej;->c:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 342
    iget-object v1, p0, Lfej;->c:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 343
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 347
    :goto_1
    sget-object v1, Lfej;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera Display Orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return v0

    .line 330
    :pswitch_1
    const/16 v0, 0x5a

    .line 331
    goto :goto_0

    .line 333
    :pswitch_2
    const/16 v0, 0xb4

    .line 334
    goto :goto_0

    .line 336
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 345
    :cond_0
    iget-object v1, p0, Lfej;->c:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private q()V
    .locals 3

    .prologue
    .line 357
    :try_start_0
    invoke-direct {p0}, Lfej;->p()I

    move-result v0

    iput v0, p0, Lfej;->l:I

    .line 358
    iget v0, p0, Lfej;->l:I

    invoke-direct {p0, v0}, Lfej;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lfej;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    :goto_1
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lfej;->j:Lfdu;

    iput-object v0, p0, Lfej;->k:Lfdu;

    .line 380
    :goto_2
    iget-object v0, p0, Lfej;->n:Lfek;

    iget-object v1, p0, Lfej;->k:Lfdu;

    invoke-virtual {v0, v1}, Lfek;->a(Lfdu;)V

    .line 381
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    sget-object v0, Lfej;->a:Ljava/lang/String;

    const-string v1, "Failed to set rotation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :catch_1
    move-exception v0

    .line 367
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lfej;->b(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 368
    :catch_2
    move-exception v0

    .line 370
    sget-object v0, Lfej;->a:Ljava/lang/String;

    const-string v1, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 378
    :cond_0
    new-instance v1, Lfdu;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lfdu;-><init>(II)V

    iput-object v1, p0, Lfej;->k:Lfdu;

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lfej;->h:Lfel;

    invoke-virtual {v0}, Lfel;->a()I

    move-result v0

    invoke-static {v0}, Lesg;->b(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    .line 134
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to open camera"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lfej;->h:Lfel;

    invoke-virtual {v0}, Lfel;->a()I

    move-result v0

    invoke-static {v0}, Lesg;->a(I)I

    move-result v0

    .line 139
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lfej;->c:Landroid/hardware/Camera$CameraInfo;

    .line 140
    iget-object v1, p0, Lfej;->c:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 141
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lfen;

    invoke-direct {v0, p1}, Lfen;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0, v0}, Lfej;->a(Lfen;)V

    .line 162
    return-void
.end method

.method public a(Lfel;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lfej;->h:Lfel;

    .line 437
    return-void
.end method

.method public a(Lfen;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lfen;->a(Landroid/hardware/Camera;)V

    .line 166
    return-void
.end method

.method public a(Lfeq;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lfej;->i:Lfeq;

    .line 445
    return-void
.end method

.method public a(Lfev;)V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    .line 425
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lfej;->f:Z

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lfej;->n:Lfek;

    invoke-virtual {v1, p1}, Lfek;->a(Lfev;)V

    .line 427
    iget-object v1, p0, Lfej;->n:Lfek;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 429
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 449
    invoke-virtual {p0}, Lfej;->l()Z

    move-result v0

    .line 450
    if-eq p1, v0, :cond_2

    .line 451
    iget-object v0, p0, Lfej;->d:Lfdy;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lfej;->d:Lfdy;

    invoke-virtual {v0}, Lfdy;->b()V

    .line 455
    :cond_0
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 456
    invoke-static {v0, p1}, Lesf;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 457
    iget-object v1, p0, Lfej;->h:Lfel;

    invoke-virtual {v1}, Lfel;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    invoke-static {v0, p1}, Lesf;->b(Landroid/hardware/Camera$Parameters;Z)V

    .line 460
    :cond_1
    iget-object v1, p0, Lfej;->b:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 462
    iget-object v0, p0, Lfej;->d:Lfdy;

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lfej;->d:Lfdy;

    invoke-virtual {v0}, Lfdy;->a()V

    .line 467
    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera not open"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    invoke-direct {p0}, Lfej;->q()V

    .line 155
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    .line 175
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lfej;->f:Z

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfej;->f:Z

    .line 178
    new-instance v0, Lfdy;

    iget-object v1, p0, Lfej;->b:Landroid/hardware/Camera;

    iget-object v2, p0, Lfej;->h:Lfel;

    invoke-direct {v0, v1, v2}, Lfdy;-><init>(Landroid/hardware/Camera;Lfel;)V

    iput-object v0, p0, Lfej;->d:Lfdy;

    .line 179
    new-instance v0, Leri;

    iget-object v1, p0, Lfej;->m:Landroid/content/Context;

    iget-object v2, p0, Lfej;->h:Lfel;

    invoke-direct {v0, v1, p0, v2}, Leri;-><init>(Landroid/content/Context;Lfej;Lfel;)V

    iput-object v0, p0, Lfej;->e:Leri;

    .line 180
    iget-object v0, p0, Lfej;->e:Leri;

    invoke-virtual {v0}, Leri;->a()V

    .line 182
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    .line 215
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lfej;->d:Lfdy;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lfej;->d:Lfdy;

    invoke-virtual {v0}, Lfdy;->b()V

    .line 192
    iput-object v1, p0, Lfej;->d:Lfdy;

    .line 194
    :cond_0
    iget-object v0, p0, Lfej;->e:Leri;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lfej;->e:Leri;

    invoke-virtual {v0}, Leri;->b()V

    .line 196
    iput-object v1, p0, Lfej;->e:Leri;

    .line 198
    :cond_1
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lfej;->f:Z

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 200
    iget-object v0, p0, Lfej;->n:Lfek;

    invoke-virtual {v0, v1}, Lfek;->a(Lfev;)V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfej;->f:Z

    .line 203
    :cond_2
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lfej;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rotation not calculated yet. Call configure() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget v0, p0, Lfej;->l:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lfej;->l:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lfdu;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lfej;->k:Lfdu;

    return-object v0
.end method

.method public i()Lfdu;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lfej;->k:Lfdu;

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lfej;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lfej;->k:Lfdu;

    invoke-virtual {v0}, Lfdu;->a()Lfdu;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lfej;->k:Lfdu;

    goto :goto_0
.end method

.method public j()Lfel;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lfej;->h:Lfel;

    return-object v0
.end method

.method public k()Lfeq;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lfej;->i:Lfeq;

    return-object v0
.end method

.method public l()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 470
    iget-object v1, p0, Lfej;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 471
    if-eqz v1, :cond_1

    .line 472
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 473
    if-eqz v1, :cond_1

    const-string v2, "on"

    .line 474
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "torch"

    .line 475
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 477
    :cond_1
    return v0
.end method

.method public m()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lfej;->b:Landroid/hardware/Camera;

    return-object v0
.end method
