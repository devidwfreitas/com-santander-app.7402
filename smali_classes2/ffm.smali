.class public Lffm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:Ljava/lang/String; = "Configuration-key"

.field public static final e:Ljava/lang/String; = "Timeout-key"

.field public static final f:Ljava/lang/String; = "Silent-period-key"

.field public static final g:Ljava/lang/String; = "Best-location-age-key"

.field public static final h:Ljava/lang/String; = "Max-location-age-key"

.field public static final i:Ljava/lang/String; = "Max-accuracy-key"

.field public static final j:Ljava/lang/String; = "Add-timestamp-key"

.field public static final k:I = 0x0

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x3

.field public static final o:I = 0x2

.field public static final p:I = 0x64

.field public static final q:I = 0x400

.field private static final r:Ljava/lang/String; = "MobileAPI"

.field private static final t:I = 0x16

.field private static final u:Ljava/lang/String; = "-1"

.field private static x:Lffm;


# instance fields
.field private A:Lffa;

.field private B:Lffg;

.field private C:Lffd;

.field private D:I

.field private E:[I

.field private F:Z

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lffp;

.field private final v:Landroid/telephony/TelephonyManager;

.field private final w:Landroid/content/Context;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    sput-object v0, Lffm;->x:Lffm;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lffp;->LooperMissing:Lffp;

    iput-object v0, p0, Lffm;->s:Lffp;

    .line 272
    iput v1, p0, Lffm;->D:I

    .line 276
    const/16 v0, 0x17

    new-array v0, v0, [I

    iput-object v0, p0, Lffm;->E:[I

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lffm;->F:Z

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lffm;->L:Ljava/util/HashMap;

    .line 334
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lffm;->w:Landroid/content/Context;

    .line 340
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_1

    .line 342
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 343
    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 344
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 346
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lffm;->y:I

    .line 347
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lffm;->z:I

    .line 357
    :goto_0
    iget-object v0, p0, Lffm;->w:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lffm;->v:Landroid/telephony/TelephonyManager;

    .line 359
    return-void

    .line 349
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lffm;->y:I

    .line 350
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lffm;->z:I

    goto :goto_0

    .line 353
    :cond_1
    iput v1, p0, Lffm;->y:I

    .line 354
    iput v1, p0, Lffm;->z:I

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/app/Activity;)Lffm;
    .locals 2

    .prologue
    .line 320
    const-class v1, Lffm;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lffm;->x:Lffm;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lffm;

    invoke-direct {v0, p0}, Lffm;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lffm;->x:Lffm;

    .line 323
    :cond_0
    sget-object v0, Lffm;->x:Lffm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lffm;)[I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lffm;->E:[I

    return-object v0
.end method

.method static synthetic b(Lffm;)Lffa;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lffm;->A:Lffa;

    return-object v0
.end method

.method private b(Ljava/util/Properties;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 434
    const-string v0, "Configuration-key"

    invoke-static {p1, v0, v1}, Lfgf;->a(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lffm;->D:I

    .line 435
    iget v0, p0, Lffm;->D:I

    if-ltz v0, :cond_0

    iget v0, p0, Lffm;->D:I

    if-le v0, v2, :cond_1

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid configuration key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lffm;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    const-string v0, "Add-timestamp-key"

    invoke-static {p1, v0, v1}, Lfgf;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lffm;->F:Z

    .line 440
    iget v0, p0, Lffm;->D:I

    if-ne v0, v2, :cond_b

    .line 442
    const-string v0, "Timeout-key"

    invoke-static {p1, v0, v2}, Lfgf;->a(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lffm;->G:I

    .line 444
    iget v0, p0, Lffm;->G:I

    if-lt v0, v3, :cond_2

    iget v0, p0, Lffm;->G:I

    if-le v0, v5, :cond_3

    .line 445
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid TIMEOUT_MINUTES_KEY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lffm;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_3
    const-string v0, "Silent-period-key"

    invoke-static {p1, v0, v4}, Lfgf;->a(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lffm;->H:I

    .line 450
    iget v0, p0, Lffm;->H:I

    if-lt v0, v3, :cond_4

    iget v0, p0, Lffm;->H:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_5

    .line 451
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SILENT_PERIOD_MINUTES_KEY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lffm;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_5
    const-string v0, "Best-location-age-key"

    invoke-static {p1, v0, v4}, Lfgf;->a(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lffm;->I:I

    .line 457
    iget v0, p0, Lffm;->I:I

    if-lt v0, v2, :cond_6

    iget v0, p0, Lffm;->I:I

    if-le v0, v5, :cond_7

    .line 458
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid BEST_LOCATION_AGE_MINUTES_KEY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lffm;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_7
    const-string v0, "Max-location-age-key"

    invoke-static {p1, v0, v2}, Lfgf;->a(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lffm;->J:I

    .line 463
    iget v0, p0, Lffm;->J:I

    if-lt v0, v3, :cond_8

    iget v0, p0, Lffm;->J:I

    if-le v0, v4, :cond_9

    .line 464
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid MAX_LOCATION_AGE_DAYS_KEY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lffm;->J:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_9
    const-string v0, "Max-accuracy-key"

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lfgf;->a(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lffm;->K:I

    .line 469
    iget v0, p0, Lffm;->K:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_a

    iget v0, p0, Lffm;->K:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_b

    .line 470
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid MAX_ACCURACY_KEY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lffm;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_b
    return-void
.end method

.method private c(Ljava/util/Properties;)V
    .locals 13

    .prologue
    .line 501
    iget-object v0, p0, Lffm;->B:Lffg;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lffg;

    invoke-direct {v0}, Lffg;-><init>()V

    iput-object v0, p0, Lffm;->B:Lffg;

    .line 505
    :cond_0
    iget-object v0, p0, Lffm;->B:Lffg;

    iget-object v1, p0, Lffm;->w:Landroid/content/Context;

    iget v2, p0, Lffm;->G:I

    int-to-long v2, v2

    iget v4, p0, Lffm;->H:I

    int-to-long v4, v4

    iget v6, p0, Lffm;->I:I

    int-to-long v6, v6

    iget v8, p0, Lffm;->J:I

    int-to-long v8, v8

    iget v10, p0, Lffm;->K:I

    iget-object v11, p0, Lffm;->A:Lffa;

    iget-object v11, v11, Lffa;->j:Lffb;

    new-instance v12, Lffn;

    invoke-direct {v12, p0}, Lffn;-><init>(Lffm;)V

    invoke-virtual/range {v0 .. v12}, Lffg;->a(Landroid/content/Context;JJJJILffb;Lffj;)V

    .line 519
    iget-object v0, p0, Lffm;->A:Lffa;

    iget-object v0, v0, Lffa;->r:Lffc;

    invoke-virtual {p0, v0}, Lffm;->a(Lffc;)Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->x:Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->y:Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->s:Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->t:Ljava/lang/String;

    .line 524
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 482
    new-instance v0, Lffd;

    iget-object v1, p0, Lffm;->w:Landroid/content/Context;

    invoke-direct {v0, v1}, Lffd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lffm;->C:Lffd;

    .line 484
    iget-object v0, p0, Lffm;->A:Lffa;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lffa;->f:Ljava/util/Date;

    .line 485
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->g:Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->h:Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->i:Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->v:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->n()I

    move-result v1

    iput v1, v0, Lffa;->z:I

    .line 490
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->o()I

    move-result v1

    iput v1, v0, Lffa;->A:I

    .line 491
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->k:Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->j()Z

    move-result v1

    iput-boolean v1, v0, Lffa;->l:Z

    .line 533
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->m:Ljava/lang/String;

    .line 534
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->n:Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->o:Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->u:Ljava/lang/String;

    .line 537
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->p:Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->q:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {p0}, Lffm;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lffa;->B:Ljava/lang/String;

    .line 541
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lffm;->s:Lffp;

    sget-object v1, Lffp;->LooperCreated:Lffp;

    invoke-virtual {v0, v1}, Lffp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1052
    sget-object v0, Lffp;->LooperMissing:Lffp;

    iput-object v0, p0, Lffm;->s:Lffp;

    .line 1054
    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1058
    iget-object v0, p0, Lffm;->A:Lffa;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lffm;->A:Lffa;

    invoke-virtual {v0}, Lffa;->a()V

    .line 1060
    iput-object v1, p0, Lffm;->A:Lffa;

    .line 1062
    :cond_0
    iget-object v0, p0, Lffm;->L:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1064
    iget-object v0, p0, Lffm;->C:Lffd;

    if-eqz v0, :cond_1

    .line 1065
    iput-object v1, p0, Lffm;->C:Lffd;

    .line 1067
    :cond_1
    return-void
.end method

.method private z()V
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lffm;->B:Lffg;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lffm;->B:Lffg;

    invoke-virtual {v0}, Lffg;->a()V

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Lffm;->B:Lffg;

    .line 1075
    :cond_0
    return-void
.end method


# virtual methods
.method a(I)I
    .locals 1

    .prologue
    .line 973
    if-ltz p1, :cond_0

    iget-object v0, p0, Lffm;->E:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 974
    iget-object v0, p0, Lffm;->E:[I

    aget v0, v0, p1

    .line 976
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 551
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 555
    :try_start_0
    iget-object v0, p0, Lffm;->w:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lffm;->v:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 568
    :goto_0
    return-object v0

    .line 560
    :cond_0
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 561
    const-string v0, "-1"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    iget-object v1, p0, Lffm;->E:[I

    aput v4, v1, v4

    .line 567
    const-string v1, "MobileAPI"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v0, "-1"

    goto :goto_0
.end method

.method a(Lffc;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 856
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, -0x1

    aput v1, v0, v3

    .line 858
    :try_start_0
    iget-object v0, p0, Lffm;->w:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 860
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 861
    invoke-virtual {p1, v0}, Lffc;->a(Landroid/net/wifi/WifiInfo;)V

    .line 862
    iget-object v0, p0, Lffm;->E:[I

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 863
    invoke-virtual {p1}, Lffc;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 869
    :goto_0
    return-object v0

    .line 865
    :catch_0
    move-exception v0

    .line 866
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x1

    aput v2, v1, v3

    .line 867
    invoke-virtual {p1}, Lffc;->a()V

    .line 868
    const-string v1, "MobileAPI"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/util/Properties;)V
    .locals 3

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    const-string v0, "MobileAPI"

    const-string v1, "initSDK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lffm;->A:Lffa;

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "MobileAPI"

    const-string v1, "SDK already initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :goto_0
    monitor-exit p0

    return-void

    .line 388
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 389
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 390
    sget-object v0, Lffp;->LooperCreated:Lffp;

    iput-object v0, p0, Lffm;->s:Lffp;

    .line 395
    :goto_1
    if-nez p1, :cond_2

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 392
    :cond_1
    :try_start_2
    sget-object v0, Lffp;->LooperExist:Lffp;

    iput-object v0, p0, Lffm;->s:Lffp;

    goto :goto_1

    .line 400
    :cond_2
    invoke-direct {p0, p1}, Lffm;->b(Ljava/util/Properties;)V

    .line 402
    new-instance v0, Lffa;

    iget v1, p0, Lffm;->D:I

    invoke-direct {v0, v1}, Lffa;-><init>(I)V

    iput-object v0, p0, Lffm;->A:Lffa;

    .line 403
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lffm;->E:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 404
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 408
    :cond_3
    iget v0, p0, Lffm;->D:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 410
    :pswitch_0
    invoke-direct {p0}, Lffm;->v()V

    goto :goto_0

    .line 413
    :pswitch_1
    invoke-direct {p0}, Lffm;->v()V

    .line 414
    invoke-direct {p0}, Lffm;->w()V

    goto :goto_0

    .line 417
    :pswitch_2
    invoke-direct {p0}, Lffm;->v()V

    .line 418
    invoke-direct {p0}, Lffm;->w()V

    .line 419
    invoke-direct {p0, p1}, Lffm;->c(Ljava/util/Properties;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized a(Lffo;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/16 v2, 0x400

    const/4 v0, 0x0

    .line 1099
    monitor-enter p0

    :try_start_0
    instance-of v1, p3, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1100
    sget-object v1, Lffo;->INT:Lffo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v1, :cond_2

    .line 1122
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1103
    :cond_1
    :try_start_1
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 1104
    sget-object v1, Lffo;->BOOLEAN:Lffo;

    if-ne p1, v1, :cond_0

    .line 1121
    :cond_2
    iget-object v0, p0, Lffm;->L:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const/4 v0, 0x1

    goto :goto_0

    .line 1107
    :cond_3
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1108
    sget-object v1, Lffo;->STRING:Lffo;

    if-ne p1, v1, :cond_0

    .line 1110
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 1113
    :cond_4
    instance-of v1, p3, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 1114
    sget-object v1, Lffo;->FLOAT:Lffo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 1099
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 581
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 583
    :try_start_0
    iget-object v0, p0, Lffm;->v:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_0
    return-object v0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x1

    aput v2, v1, v4

    .line 589
    const-string v1, "MobileAPI"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v0, "-1"

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 603
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 605
    :try_start_0
    iget-object v0, p0, Lffm;->v:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_0
    return-object v0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x1

    aput v2, v1, v4

    .line 611
    const-string v1, "MobileAPI"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v0, "-1"

    goto :goto_0
.end method

.method d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lffm;->E:[I

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lffm;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lffm;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 641
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 643
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 648
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    const-string v0, "he"

    .line 656
    :cond_0
    :goto_0
    iget-object v1, p0, Lffm;->E:[I

    const/16 v2, 0xa

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 662
    :goto_1
    return-object v0

    .line 650
    :cond_1
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 651
    const-string v0, "id"

    goto :goto_0

    .line 652
    :cond_2
    const-string v1, "ji"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    const-string v0, "yi"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x1

    aput v2, v1, v4

    .line 661
    const-string v1, "MobileAPI"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v0, "-1"

    goto :goto_1
.end method

.method f()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 675
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 677
    :try_start_0
    iget-object v0, p0, Lffm;->w:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 679
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lffm;->E:[I

    const/16 v2, 0xb

    const/4 v3, 0x0

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :goto_0
    return-object v0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x1

    aput v2, v1, v4

    .line 686
    const-string v1, "MobileAPI"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v0, "-1"

    goto :goto_0
.end method

.method g()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/16 v4, 0x12

    .line 701
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 703
    :try_start_0
    iget-object v0, p0, Lffm;->v:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 704
    iget-object v1, p0, Lffm;->E:[I

    const/16 v2, 0x12

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 705
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 706
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 717
    :goto_0
    return-object v0

    .line 708
    :cond_0
    iget-object v0, p0, Lffm;->w:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    .line 709
    if-nez v0, :cond_1

    .line 710
    const/4 v0, 0x0

    goto :goto_0

    .line 712
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x1

    aput v2, v1, v4

    .line 716
    const-string v1, "MobileAPI"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string v0, "-1"

    goto :goto_0
.end method

.method h()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/16 v4, 0x13

    .line 731
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 733
    :try_start_0
    iget-object v0, p0, Lffm;->v:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 734
    iget-object v1, p0, Lffm;->E:[I

    const/16 v2, 0x13

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 735
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 736
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    :goto_0
    return-object v0

    .line 738
    :cond_0
    iget-object v0, p0, Lffm;->w:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mnc:I

    .line 739
    if-nez v0, :cond_1

    .line 740
    const/4 v0, 0x0

    goto :goto_0

    .line 742
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x1

    aput v2, v1, v4

    .line 746
    const-string v1, "MobileAPI"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v0, "-1"

    goto :goto_0
.end method

.method i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 759
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method j()Z
    .locals 3

    .prologue
    .line 769
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 770
    const/4 v0, 0x1

    return v0
.end method

.method k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 781
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 783
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 784
    if-eqz v0, :cond_1

    .line 785
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-object v0

    .line 790
    :catch_0
    move-exception v0

    .line 793
    :cond_1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 794
    invoke-virtual {p0}, Lffm;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 807
    iget-object v0, p0, Lffm;->E:[I

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 808
    const-string v0, "Android"

    return-object v0
.end method

.method m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 818
    iget-object v0, p0, Lffm;->E:[I

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n()I
    .locals 3

    .prologue
    .line 829
    iget-object v0, p0, Lffm;->E:[I

    const/16 v1, 0x15

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 830
    iget-object v0, p0, Lffm;->w:Landroid/content/Context;

    invoke-static {v0}, Lfge;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method o()I
    .locals 3

    .prologue
    .line 838
    iget-object v0, p0, Lffm;->E:[I

    const/16 v1, 0x16

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 839
    iget-object v0, p0, Lffm;->C:Lffd;

    invoke-virtual {v0}, Lffd;->a()I

    move-result v0

    return v0
.end method

.method p()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xd

    .line 888
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 890
    :try_start_0
    iget-object v0, p0, Lffm;->v:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 891
    const/4 v1, 0x0

    .line 892
    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_0

    .line 893
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 898
    :goto_0
    iget-object v1, p0, Lffm;->E:[I

    const/16 v2, 0xd

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 903
    :goto_1
    return-object v0

    .line 894
    :cond_0
    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_1

    .line 895
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 900
    :catch_0
    move-exception v0

    .line 901
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x1

    aput v2, v1, v4

    .line 902
    const-string v1, "MobileAPI"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v0, "-1"

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method q()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xe

    .line 918
    iget-object v0, p0, Lffm;->E:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 920
    :try_start_0
    iget-object v0, p0, Lffm;->v:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 921
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, p0, Lffm;->E:[I

    const/16 v2, 0xe

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 923
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 930
    :goto_0
    return-object v0

    .line 925
    :catch_0
    move-exception v0

    .line 926
    iget-object v1, p0, Lffm;->E:[I

    const/4 v2, 0x1

    aput v2, v1, v4

    .line 927
    const-string v1, "MobileAPI"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const-string v0, "-1"

    goto :goto_0

    .line 930
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lffm;->w:Landroid/content/Context;

    invoke-static {v0}, Lfey;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 948
    return-object v0
.end method

.method s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 959
    iget-object v0, p0, Lffm;->E:[I

    const/16 v1, 0x14

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 960
    iget-object v0, p0, Lffm;->w:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 962
    return-object v0
.end method

.method public declared-synchronized t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1026
    monitor-enter p0

    :try_start_0
    const-string v0, "MobileAPI"

    const-string v1, "collectInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lffm;->A:Lffa;

    if-nez v0, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mobile SDK was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1031
    :cond_0
    :try_start_1
    iget-object v0, p0, Lffm;->A:Lffa;

    iget-boolean v1, p0, Lffm;->F:Z

    iget-object v2, p0, Lffm;->L:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lffa;->a(ZLjava/util/HashMap;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized u()V
    .locals 2

    .prologue
    .line 1043
    monitor-enter p0

    :try_start_0
    const-string v0, "MobileAPI"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-direct {p0}, Lffm;->z()V

    .line 1045
    invoke-direct {p0}, Lffm;->y()V

    .line 1046
    invoke-direct {p0}, Lffm;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    monitor-exit p0

    return-void

    .line 1043
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
