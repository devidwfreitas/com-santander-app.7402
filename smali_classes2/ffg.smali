.class Lffg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "LocationRetriever"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Landroid/location/LocationManager;

.field private g:Landroid/location/LocationProvider;

.field private h:Landroid/location/LocationProvider;

.field private i:Landroid/content/Context;

.field private j:J

.field private k:J

.field private l:J

.field private m:I

.field private n:J

.field private o:Landroid/location/Location;

.field private p:Lffi;

.field private q:I

.field private r:Lffj;

.field private s:Z

.field private t:Z

.field private u:Lffb;

.field private v:Lffl;

.field private w:Lffk;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x4b0

    iput v0, p0, Lffg;->b:I

    .line 35
    const/16 v0, 0x4b1

    iput v0, p0, Lffg;->c:I

    .line 41
    const/16 v0, 0x7530

    iput v0, p0, Lffg;->d:I

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lffg;->e:I

    .line 44
    iput-object v1, p0, Lffg;->f:Landroid/location/LocationManager;

    .line 45
    iput-object v1, p0, Lffg;->g:Landroid/location/LocationProvider;

    .line 46
    iput-object v1, p0, Lffg;->h:Landroid/location/LocationProvider;

    .line 47
    iput-object v1, p0, Lffg;->i:Landroid/content/Context;

    .line 49
    iput-wide v2, p0, Lffg;->j:J

    .line 50
    iput-wide v2, p0, Lffg;->k:J

    .line 51
    iput-wide v2, p0, Lffg;->l:J

    .line 52
    iput v4, p0, Lffg;->m:I

    .line 53
    iput-wide v2, p0, Lffg;->n:J

    .line 55
    iput-object v1, p0, Lffg;->o:Landroid/location/Location;

    .line 56
    iput-object v1, p0, Lffg;->p:Lffi;

    .line 57
    iput v4, p0, Lffg;->q:I

    .line 58
    iput-object v1, p0, Lffg;->r:Lffj;

    .line 91
    new-instance v0, Lffl;

    invoke-direct {v0, p0}, Lffl;-><init>(Lffg;)V

    iput-object v0, p0, Lffg;->v:Lffl;

    .line 111
    new-instance v0, Lffk;

    invoke-direct {v0, p0}, Lffk;-><init>(Lffg;)V

    iput-object v0, p0, Lffg;->w:Lffk;

    .line 300
    return-void
.end method

.method static synthetic a(Lffg;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lffg;->q:I

    return p1
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 350
    .line 352
    invoke-direct {p0, p1}, Lffg;->b(Landroid/location/Location;)Z

    move-result v1

    .line 353
    invoke-direct {p0, p2}, Lffg;->b(Landroid/location/Location;)Z

    move-result v2

    .line 354
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    move-object p1, v0

    .line 401
    :cond_0
    :goto_0
    return-object p1

    .line 358
    :cond_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 360
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 361
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 362
    iget-wide v4, p0, Lffg;->k:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    iget-wide v4, p0, Lffg;->k:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 366
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    move-object p1, p2

    .line 370
    goto :goto_0

    .line 374
    :cond_2
    iget-wide v4, p0, Lffg;->k:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 377
    iget-wide v4, p0, Lffg;->k:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    move-object p1, p2

    .line 378
    goto :goto_0

    .line 384
    :cond_3
    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    move-object p1, p2

    .line 390
    goto :goto_0

    .line 394
    :cond_4
    if-nez v1, :cond_0

    .line 397
    if-eqz v2, :cond_5

    move-object p1, p2

    .line 398
    goto :goto_0

    :cond_5
    move-object p1, v0

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lffg;->o:Landroid/location/Location;

    invoke-direct {p0, v0, p1}, Lffg;->a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lffg;->o:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lffg;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lffg;->f()V

    return-void
.end method

.method static synthetic a(Lffg;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lffg;->a(Landroid/location/Location;)V

    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x7530

    const/4 v0, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v7, 0x1

    .line 202
    const-string v1, "LocationRetriever"

    const-string v5, "startLocationUpdate"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput-boolean v0, p0, Lffg;->s:Z

    iput-boolean v0, p0, Lffg;->t:Z

    .line 213
    :try_start_0
    iget-object v1, p0, Lffg;->f:Landroid/location/LocationManager;

    const-string v5, "gps"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    iput-object v1, p0, Lffg;->g:Landroid/location/LocationProvider;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    iget-object v1, p0, Lffg;->g:Landroid/location/LocationProvider;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lffg;->f:Landroid/location/LocationManager;

    const-string v5, "gps"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget-object v0, p0, Lffg;->f:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-direct {p0}, Lffg;->c()Lffi;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    move v0, v7

    .line 237
    :cond_0
    :goto_1
    :try_start_1
    iget-object v1, p0, Lffg;->f:Landroid/location/LocationManager;

    const-string v5, "network"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    iput-object v1, p0, Lffg;->h:Landroid/location/LocationProvider;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    :goto_2
    iget-object v1, p0, Lffg;->h:Landroid/location/LocationProvider;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lffg;->f:Landroid/location/LocationManager;

    const-string v5, "network"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 243
    iget-object v0, p0, Lffg;->f:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-direct {p0}, Lffg;->c()Lffi;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    move v0, v7

    .line 253
    :goto_3
    iget-boolean v1, p0, Lffg;->t:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lffg;->s:Z

    if-eqz v1, :cond_1

    .line 254
    iput v7, p0, Lffg;->q:I

    .line 259
    :cond_1
    if-eqz v0, :cond_2

    .line 260
    invoke-direct {p0}, Lffg;->h()V

    .line 262
    :cond_2
    return-void

    .line 214
    :catch_0
    move-exception v1

    .line 215
    iput-boolean v7, p0, Lffg;->t:Z

    goto :goto_0

    .line 229
    :cond_3
    iput-boolean v7, p0, Lffg;->t:Z

    goto :goto_1

    .line 238
    :catch_1
    move-exception v1

    .line 239
    iput-boolean v7, p0, Lffg;->s:Z

    goto :goto_2

    .line 250
    :cond_4
    iput-boolean v7, p0, Lffg;->s:Z

    goto :goto_3
.end method

.method static synthetic b(Lffg;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lffg;->g()V

    return-void
.end method

.method private b(Landroid/location/Location;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 335
    if-eqz p1, :cond_0

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 340
    iget-wide v4, p0, Lffg;->l:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 342
    :cond_0
    return v0
.end method

.method static synthetic b(Lffg;Landroid/location/Location;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lffg;->c(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lffg;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lffg;->o:Landroid/location/Location;

    return-object v0
.end method

.method private c()Lffi;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lffg;->p:Lffi;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lffi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lffi;-><init>(Lffg;Lffh;)V

    iput-object v0, p0, Lffg;->p:Lffi;

    .line 271
    :cond_0
    iget-object v0, p0, Lffg;->p:Lffi;

    return-object v0
.end method

.method private c(Landroid/location/Location;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 409
    if-eqz p1, :cond_0

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 411
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 412
    iget-wide v4, p0, Lffg;->k:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 413
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget v2, p0, Lffg;->m:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 416
    :cond_0
    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 278
    const-string v0, "LocationRetriever"

    const-string v1, "putResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lffg;->u:Lffb;

    iget-object v1, p0, Lffg;->o:Landroid/location/Location;

    iget v2, p0, Lffg;->q:I

    invoke-virtual {v0, v1, v2}, Lffb;->a(Landroid/location/Location;I)V

    .line 280
    iget-object v0, p0, Lffg;->r:Lffj;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lffg;->r:Lffj;

    invoke-interface {v0}, Lffj;->a()V

    .line 283
    :cond_0
    return-void
.end method

.method static synthetic d(Lffg;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lffg;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 289
    const-string v0, "LocationRetriever"

    const-string v1, "cancelAllRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lffg;->f:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lffg;->p:Lffi;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lffg;->f:Landroid/location/LocationManager;

    iget-object v1, p0, Lffg;->p:Lffi;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 293
    :cond_0
    return-void
.end method

.method static synthetic e(Lffg;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lffg;->i()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 424
    const-string v0, "LocationRetriever"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0}, Lffg;->i()V

    .line 426
    invoke-direct {p0}, Lffg;->k()V

    .line 428
    const/4 v0, 0x3

    iput v0, p0, Lffg;->q:I

    .line 429
    invoke-direct {p0}, Lffg;->e()V

    .line 430
    invoke-direct {p0}, Lffg;->d()V

    .line 431
    invoke-direct {p0}, Lffg;->j()V

    .line 432
    return-void
.end method

.method static synthetic f(Lffg;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lffg;->j()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 440
    const-string v0, "LocationRetriever"

    const-string v1, "handleSilenceExpired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0}, Lffg;->i()V

    .line 442
    invoke-direct {p0}, Lffg;->k()V

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Lffg;->q:I

    .line 445
    invoke-direct {p0}, Lffg;->b()V

    .line 446
    return-void
.end method

.method static synthetic g(Lffg;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lffg;->d()V

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 452
    invoke-direct {p0}, Lffg;->i()V

    .line 453
    iget-object v0, p0, Lffg;->v:Lffl;

    const/16 v1, 0x4b0

    iget-wide v2, p0, Lffg;->j:J

    invoke-virtual {v0, v1, v2, v3}, Lffl;->sendEmptyMessageDelayed(IJ)Z

    .line 455
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    const/16 v1, 0x4b0

    .line 461
    iget-object v0, p0, Lffg;->v:Lffl;

    invoke-virtual {v0, v1}, Lffl;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lffg;->v:Lffl;

    invoke-virtual {v0, v1}, Lffl;->removeMessages(I)V

    .line 464
    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 470
    invoke-direct {p0}, Lffg;->k()V

    .line 472
    iget-object v0, p0, Lffg;->w:Lffk;

    const/16 v1, 0x4b1

    iget-wide v2, p0, Lffg;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lffk;->sendEmptyMessageDelayed(IJ)Z

    .line 474
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    const/16 v1, 0x4b1

    .line 480
    iget-object v0, p0, Lffg;->w:Lffk;

    invoke-virtual {v0, v1}, Lffk;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lffg;->w:Lffk;

    invoke-virtual {v0, v1}, Lffk;->removeMessages(I)V

    .line 483
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 489
    invoke-direct {p0}, Lffg;->i()V

    .line 490
    invoke-direct {p0}, Lffg;->k()V

    .line 491
    invoke-direct {p0}, Lffg;->e()V

    .line 492
    iput-object v0, p0, Lffg;->f:Landroid/location/LocationManager;

    .line 493
    iput-object v0, p0, Lffg;->g:Landroid/location/LocationProvider;

    .line 494
    iput-object v0, p0, Lffg;->h:Landroid/location/LocationProvider;

    .line 495
    iput-object v0, p0, Lffg;->r:Lffj;

    .line 496
    iput-object v0, p0, Lffg;->p:Lffi;

    .line 497
    return-void
.end method

.method a(Landroid/content/Context;JJJJILffb;Lffj;)V
    .locals 6

    .prologue
    .line 125
    const-string v2, "LocationRetriever"

    const-string v3, "queryLocation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-nez p11, :cond_0

    .line 128
    const-string v2, "LocationRetriever"

    const-string v3, "mobile SDK: internal problem, queryLocation, null locationInfoBuffer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lffg;->q:I

    .line 133
    const/4 v2, 0x0

    iput-boolean v2, p0, Lffg;->t:Z

    iput-boolean v2, p0, Lffg;->s:Z

    .line 135
    iput-object p1, p0, Lffg;->i:Landroid/content/Context;

    .line 136
    move-object/from16 v0, p11

    iput-object v0, p0, Lffg;->u:Lffb;

    .line 137
    move-object/from16 v0, p12

    iput-object v0, p0, Lffg;->r:Lffj;

    .line 139
    iget-object v2, p0, Lffg;->i:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lffg;->f:Landroid/location/LocationManager;

    .line 144
    const-wide/16 v2, 0x3c

    mul-long/2addr v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lffg;->j:J

    .line 145
    const-wide/16 v2, 0x3c

    mul-long/2addr v2, p4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lffg;->n:J

    .line 146
    const-wide/16 v2, 0x3c

    mul-long/2addr v2, p6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lffg;->k:J

    .line 147
    const-wide/16 v2, 0x18

    mul-long/2addr v2, p8

    const-wide/16 v4, 0xe10

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lffg;->l:J

    .line 148
    move/from16 v0, p10

    iput v0, p0, Lffg;->m:I

    .line 154
    :try_start_0
    iget-object v2, p0, Lffg;->f:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    iput-object v2, p0, Lffg;->g:Landroid/location/LocationProvider;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_1
    iget-object v2, p0, Lffg;->g:Landroid/location/LocationProvider;

    if-eqz v2, :cond_4

    .line 161
    iget-object v2, p0, Lffg;->f:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    const/4 v2, 0x1

    iput-boolean v2, p0, Lffg;->t:Z

    .line 166
    :cond_1
    :try_start_1
    iget-object v2, p0, Lffg;->f:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 167
    invoke-direct {p0, v2}, Lffg;->a(Landroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :goto_2
    :try_start_2
    iget-object v2, p0, Lffg;->f:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    iput-object v2, p0, Lffg;->h:Landroid/location/LocationProvider;

    .line 182
    iget-object v2, p0, Lffg;->f:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    const/4 v2, 0x1

    iput-boolean v2, p0, Lffg;->s:Z

    .line 185
    :cond_2
    iget-object v2, p0, Lffg;->f:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 186
    invoke-direct {p0, v2}, Lffg;->a(Landroid/location/Location;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 191
    :goto_3
    iget-boolean v2, p0, Lffg;->t:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lffg;->s:Z

    if-eqz v2, :cond_3

    .line 192
    const/4 v2, 0x1

    iput v2, p0, Lffg;->q:I

    .line 194
    :cond_3
    invoke-direct {p0}, Lffg;->d()V

    .line 195
    invoke-direct {p0}, Lffg;->b()V

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v2

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Lffg;->t:Z

    goto :goto_1

    .line 168
    :catch_1
    move-exception v2

    .line 170
    const/4 v2, 0x1

    iput-boolean v2, p0, Lffg;->t:Z

    goto :goto_2

    .line 174
    :cond_4
    const/4 v2, 0x4

    iput v2, p0, Lffg;->q:I

    goto :goto_2

    .line 187
    :catch_2
    move-exception v2

    .line 188
    const/4 v2, 0x1

    iput-boolean v2, p0, Lffg;->s:Z

    goto :goto_3
.end method
