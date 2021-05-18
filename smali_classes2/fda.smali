.class public Lfda;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I = 0x0

.field private static final f:Ljava/lang/String; = "SAVED_ORIENTATION_LOCK"


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private e:I

.field private g:Z

.field private h:Z

.field private i:Lerq;

.field private j:Lerk;

.field private k:Landroid/os/Handler;

.field private l:Lfco;

.field private final m:Lfcz;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lfda;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfda;->a:Ljava/lang/String;

    .line 56
    const/16 v0, 0xfa

    sput v0, Lfda;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lfda;->e:I

    .line 62
    iput-boolean v1, p0, Lfda;->g:Z

    .line 64
    iput-boolean v1, p0, Lfda;->h:Z

    .line 71
    new-instance v0, Lfdb;

    invoke-direct {v0, p0}, Lfdb;-><init>(Lfda;)V

    iput-object v0, p0, Lfda;->l:Lfco;

    .line 92
    new-instance v0, Lfdd;

    invoke-direct {v0, p0}, Lfdd;-><init>(Lfda;)V

    iput-object v0, p0, Lfda;->m:Lfcz;

    .line 230
    iput-boolean v1, p0, Lfda;->n:Z

    .line 115
    iput-object p1, p0, Lfda;->c:Landroid/app/Activity;

    .line 116
    iput-object p2, p0, Lfda;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 117
    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->c()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    iget-object v1, p0, Lfda;->m:Lfcz;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lfcz;)V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lfda;->k:Landroid/os/Handler;

    .line 121
    new-instance v0, Lerq;

    new-instance v1, Lfde;

    invoke-direct {v1, p0}, Lfde;-><init>(Lfda;)V

    invoke-direct {v0, p1, v1}, Lerq;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lfda;->i:Lerq;

    .line 129
    new-instance v0, Lerk;

    invoke-direct {v0, p1}, Lerk;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lfda;->j:Lerk;

    .line 130
    return-void
.end method

.method public static a(Lfcq;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 299
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.google.zxing.client.android.SCAN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    const/high16 v0, 0x80000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p0}, Lfcq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v0, "SCAN_RESULT_FORMAT"

    invoke-virtual {p0}, Lfcq;->g()Lepu;

    move-result-object v1

    invoke-virtual {v1}, Lepu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0}, Lfcq;->e()[B

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 305
    const-string v1, "SCAN_RESULT_BYTES"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 307
    :cond_0
    invoke-virtual {p0}, Lfcq;->h()Ljava/util/Map;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_4

    .line 309
    sget-object v0, Leqn;->UPC_EAN_EXTENSION:Leqn;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const-string v0, "SCAN_RESULT_UPC_EAN_EXTENSION"

    sget-object v3, Leqn;->UPC_EAN_EXTENSION:Leqn;

    .line 311
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    :cond_1
    sget-object v0, Leqn;->ORIENTATION:Leqn;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 314
    if-eqz v0, :cond_2

    .line 315
    const-string v3, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    :cond_2
    sget-object v0, Leqn;->ERROR_CORRECTION_LEVEL:Leqn;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    if-eqz v0, :cond_3

    .line 319
    const-string v3, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :cond_3
    sget-object v0, Leqn;->BYTE_SEGMENTS:Leqn;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 323
    if-eqz v0, :cond_4

    .line 324
    const/4 v1, 0x0

    .line 325
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 327
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 328
    goto :goto_0

    .line 331
    :cond_4
    if-eqz p1, :cond_5

    .line 332
    const-string v0, "SCAN_RESULT_IMAGE_PATH"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    :cond_5
    return-object v2
.end method

.method static synthetic a(Lfda;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lfda;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 405
    sput p0, Lfda;->b:I

    .line 406
    return-void
.end method

.method static synthetic b(Lfda;)Lerk;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lfda;->j:Lerk;

    return-object v0
.end method

.method private b(Lfcq;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 346
    iget-boolean v1, p0, Lfda;->g:Z

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {p1}, Lfcq;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 349
    :try_start_0
    const-string v2, "barcodeimage"

    const-string v3, ".jpg"

    iget-object v4, p0, Lfda;->c:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 350
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 351
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 352
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 353
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 358
    :cond_0
    :goto_0
    return-object v0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    sget-object v2, Lfda;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create temporary file and store bitmap! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lfda;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lfda;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lfda;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lfda;->k()V

    return-void
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 401
    sget v0, Lfda;->b:I

    return v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lfda;->a:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 234
    iget-object v0, p0, Lfda;->c:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lfda;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->b()V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-boolean v0, p0, Lfda;->n:Z

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lfda;->c:Landroid/app/Activity;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    sget v2, Lfda;->b:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 241
    iput-boolean v4, p0, Lfda;->n:Z

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lfda;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 363
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 185
    iget v2, p0, Lfda;->e:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 187
    iget-object v2, p0, Lfda;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 189
    iget-object v3, p0, Lfda;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 191
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 192
    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_2

    .line 205
    :cond_0
    :goto_0
    iput v0, p0, Lfda;->e:I

    .line 208
    :cond_1
    iget-object v0, p0, Lfda;->c:Landroid/app/Activity;

    iget v1, p0, Lfda;->e:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 209
    return-void

    .line 195
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 197
    :cond_3
    if-ne v3, v1, :cond_0

    .line 198
    if-eqz v2, :cond_4

    const/4 v0, 0x3

    if-ne v2, v0, :cond_5

    :cond_4
    move v0, v1

    .line 199
    goto :goto_0

    .line 201
    :cond_5
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 256
    sget v0, Lfda;->b:I

    if-ne p1, v0, :cond_0

    .line 257
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lfda;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->b()V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0}, Lfda;->g()V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 139
    iget-object v0, p0, Lfda;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 140
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 142
    if-eqz p2, :cond_0

    .line 146
    const-string v0, "SAVED_ORIENTATION_LOCK"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfda;->e:I

    .line 149
    :cond_0
    if-eqz p1, :cond_5

    .line 151
    const-string v0, "SCAN_ORIENTATION_LOCKED"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 152
    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lfda;->a()V

    .line 156
    :cond_1
    const-string v0, "com.google.zxing.client.android.SCAN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lfda;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a(Landroid/content/Intent;)V

    .line 160
    :cond_2
    const-string v0, "BEEP_ENABLED"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 161
    iget-object v0, p0, Lfda;->j:Lerk;

    invoke-virtual {v0, v7}, Lerk;->a(Z)V

    .line 164
    :cond_3
    const-string v0, "TIMEOUT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    new-instance v0, Lfdf;

    invoke-direct {v0, p0}, Lfdf;-><init>(Lfda;)V

    .line 171
    iget-object v1, p0, Lfda;->k:Landroid/os/Handler;

    const-string v2, "TIMEOUT"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :cond_4
    const-string v0, "BARCODE_IMAGE_ENABLED"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    iput-boolean v6, p0, Lfda;->g:Z

    .line 178
    :cond_5
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 288
    const-string v0, "SAVED_ORIENTATION_LOCK"

    iget v1, p0, Lfda;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    return-void
.end method

.method protected a(Lfcq;)V
    .locals 3

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lfda;->b(Lfcq;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lfda;->a(Lfcq;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lfda;->c:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 375
    invoke-direct {p0}, Lfda;->k()V

    .line 376
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lfda;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    iget-object v1, p0, Lfda;->l:Lfco;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a(Lfco;)V

    .line 216
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 223
    invoke-direct {p0}, Lfda;->j()V

    .line 227
    :goto_0
    iget-object v0, p0, Lfda;->i:Lerq;

    invoke-virtual {v0}, Lerq;->b()V

    .line 228
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lfda;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->b()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lfda;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a()V

    .line 273
    iget-object v0, p0, Lfda;->i:Lerq;

    invoke-virtual {v0}, Lerq;->c()V

    .line 274
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfda;->h:Z

    .line 281
    iget-object v0, p0, Lfda;->i:Lerq;

    invoke-virtual {v0}, Lerq;->c()V

    .line 282
    return-void
.end method

.method protected f()V
    .locals 3

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    const-string v1, "TIMEOUT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    iget-object v1, p0, Lfda;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 369
    invoke-direct {p0}, Lfda;->k()V

    .line 370
    return-void
.end method

.method protected g()V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lfda;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfda;->h:Z

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lfda;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    iget-object v1, p0, Lfda;->c:Landroid/app/Activity;

    sget v2, Lesc;->zxing_app_name:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 384
    iget-object v1, p0, Lfda;->c:Landroid/app/Activity;

    sget v2, Lesc;->zxing_msg_camera_framework_bug:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 385
    sget v1, Lesc;->zxing_button_ok:I

    new-instance v2, Lfdg;

    invoke-direct {v2, p0}, Lfdg;-><init>(Lfda;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    new-instance v1, Lfdh;

    invoke-direct {v1, p0}, Lfdh;-><init>(Lfda;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
