.class public Lbsp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "publish"

.field private static final b:Ljava/lang/String; = "manage"

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile d:Lbsp;


# instance fields
.field private e:Lbse;

.field private f:Lbrn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lbsp;->a()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lbsp;->c:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lbse;->NATIVE_WITH_FALLBACK:Lbse;

    iput-object v0, p0, Lbsp;->e:Lbse;

    .line 69
    sget-object v0, Lbrn;->FRIENDS:Lbrn;

    iput-object v0, p0, Lbsp;->f:Lbrn;

    .line 72
    invoke-static {}, Lbqx;->b()V

    .line 73
    return-void
.end method

.method static a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lbsx;
    .locals 3

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/util/Set;

    move-result-object v0

    .line 561
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 565
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 569
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 570
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 571
    new-instance v0, Lbsx;

    invoke-direct {v0, p1, v1, v2}, Lbsx;-><init>(Lcom/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private a(Lbix;)Lcom/facebook/login/LoginClient$Request;
    .locals 1

    .prologue
    .line 142
    const-string v0, "response"

    invoke-static {p1, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lbix;->e()Lcom/facebook/GraphRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->f()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lbsp;->a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Lbsr;

    invoke-direct {v0}, Lbsr;-><init>()V

    .line 423
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lbsk;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbsk;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 489
    invoke-static {p1}, Lbsw;->a(Landroid/content/Context;)Lbso;

    move-result-object v0

    .line 490
    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 493
    :cond_0
    if-nez p6, :cond_1

    .line 495
    const-string v1, "fb_mobile_login_complete"

    const-string v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v2}, Lbso;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 501
    const-string v3, "try_login_activity"

    if-eqz p5, :cond_2

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 507
    invoke-virtual/range {v0 .. v5}, Lbso;->a(Ljava/lang/String;Ljava/util/Map;Lbsk;Ljava/util/Map;Ljava/lang/Exception;)V

    goto :goto_0

    .line 501
    :cond_2
    const-string v1, "0"

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 1

    .prologue
    .line 476
    invoke-static {p1}, Lbsw;->a(Landroid/content/Context;)Lbso;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 478
    invoke-virtual {v0, p2}, Lbso;->a(Lcom/facebook/login/LoginClient$Request;)V

    .line 480
    :cond_0
    return-void
.end method

.method private a(Lbpa;Lbix;)V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lbsv;

    invoke-direct {v0, p1}, Lbsv;-><init>(Lbpa;)V

    .line 137
    invoke-direct {p0, p2}, Lbsp;->a(Lbix;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 135
    invoke-direct {p0, v0, v1}, Lbsp;->a(Lbsz;Lcom/facebook/login/LoginClient$Request;)V

    .line 139
    return-void
.end method

.method private a(Lbpa;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbpa;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0, p2}, Lbsp;->b(Ljava/util/Collection;)V

    .line 317
    invoke-virtual {p0, p2}, Lbsp;->a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 318
    new-instance v1, Lbsv;

    invoke-direct {v1, p1}, Lbsv;-><init>(Lbpa;)V

    invoke-direct {p0, v1, v0}, Lbsp;->a(Lbsz;Lcom/facebook/login/LoginClient$Request;)V

    .line 319
    return-void
.end method

.method private a(Lbsz;Lcom/facebook/login/LoginClient$Request;)V
    .locals 7

    .prologue
    .line 444
    invoke-interface {p1}, Lbsz;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lbsp;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 447
    sget-object v0, Lbnl;->Login:Lbnl;

    .line 448
    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    new-instance v1, Lbss;

    invoke-direct {v1, p0}, Lbss;-><init>(Lbsp;)V

    .line 447
    invoke-static {v0, v1}, Lbnj;->a(ILbnk;)V

    .line 457
    invoke-direct {p0, p1, p2}, Lbsp;->b(Lbsz;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v0

    .line 459
    if-nez v0, :cond_0

    .line 460
    new-instance v4, Lbhp;

    const-string v0, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v4, v0}, Lbhp;-><init>(Ljava/lang/String;)V

    .line 463
    const/4 v5, 0x0

    .line 465
    invoke-interface {p1}, Lbsz;->a()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lbsk;->ERROR:Lbsk;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 464
    invoke-direct/range {v0 .. v6}, Lbsp;->a(Landroid/content/Context;Lbsk;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 471
    throw v4

    .line 473
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lbhp;ZLbhl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/facebook/login/LoginClient$Request;",
            "Lbhp;",
            "Z",
            "Lbhl",
            "<",
            "Lbsx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    if-eqz p1, :cond_0

    .line 581
    invoke-static {p1}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 582
    invoke-static {}, Lcom/facebook/Profile;->b()V

    .line 585
    :cond_0
    if-eqz p5, :cond_2

    .line 586
    if-eqz p1, :cond_3

    .line 587
    invoke-static {p2, p1}, Lbsp;->a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lbsx;

    move-result-object v0

    .line 590
    :goto_0
    if-nez p4, :cond_1

    if-eqz v0, :cond_4

    .line 592
    invoke-virtual {v0}, Lbsx;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 593
    :cond_1
    invoke-interface {p5}, Lbhl;->a()V

    .line 600
    :cond_2
    :goto_1
    return-void

    .line 587
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 594
    :cond_4
    if-eqz p3, :cond_5

    .line 595
    invoke-interface {p5, p3}, Lbhl;->a(Lbhp;)V

    goto :goto_1

    .line 596
    :cond_5
    if-eqz p1, :cond_2

    .line 597
    invoke-interface {p5, v0}, Lbhl;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbso;Lbjc;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Lbsp;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbso;Lbjc;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 538
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 539
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 540
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 411
    if-eqz p0, :cond_1

    const-string v0, "publish"

    .line 412
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    .line 413
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lbsp;->c:Ljava/util/Set;

    .line 414
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    .line 414
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lbjc;)V
    .locals 7

    .prologue
    .line 605
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v5

    .line 606
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    new-instance v6, Lbsy;

    invoke-direct {v6, p1, v5, v2}, Lbsy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v3, Lbso;

    invoke-direct {v3, p1, v5}, Lbso;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 615
    new-instance v0, Lbst;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lbst;-><init>(Lbsp;Ljava/lang/String;Lbso;Lbjc;Ljava/lang/String;)V

    .line 676
    invoke-virtual {v6, v0}, Lbsy;->a(Lbql;)V

    .line 677
    invoke-virtual {v3, v2}, Lbso;->b(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v6}, Lbsy;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    invoke-virtual {v3, v2}, Lbso;->d(Ljava/lang/String;)V

    .line 680
    invoke-interface {p2}, Lbjc;->a()V

    .line 682
    :cond_0
    return-void
.end method

.method private b(Lbpa;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbpa;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0, p2}, Lbsp;->c(Ljava/util/Collection;)V

    .line 365
    invoke-virtual {p0, p2}, Lbsp;->a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 366
    new-instance v1, Lbsv;

    invoke-direct {v1, p1}, Lbsv;-><init>(Lbpa;)V

    invoke-direct {p0, v1, v0}, Lbsp;->a(Lbsz;Lcom/facebook/login/LoginClient$Request;)V

    .line 367
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbso;Lbjc;)V
    .locals 3

    .prologue
    .line 690
    new-instance v0, Lbhp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p3, p2, v0}, Lbso;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 692
    invoke-interface {p4, v0}, Lbjc;->a(Ljava/lang/Exception;)V

    .line 693
    return-void
.end method

.method private b(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    if-nez p1, :cond_1

    .line 394
    :cond_0
    return-void

    .line 385
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    invoke-static {v0}, Lbsp;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    new-instance v1, Lbhp;

    const-string v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 388
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b(Lbsz;Lcom/facebook/login/LoginClient$Request;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 520
    invoke-virtual {p0, p2}, Lbsp;->a(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object v1

    .line 522
    invoke-direct {p0, v1}, Lbsp;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 534
    :goto_0
    return v0

    .line 529
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginClient;->d()I

    move-result v2

    .line 527
    invoke-interface {p1, v1, v2}, Lbsz;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    const/4 v0, 0x1

    goto :goto_0

    .line 530
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c()Lbsp;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lbsp;->d:Lbsp;

    if-nez v0, :cond_1

    .line 81
    const-class v1, Lbsp;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lbsp;->d:Lbsp;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lbsp;

    invoke-direct {v0}, Lbsp;-><init>()V

    sput-object v0, Lbsp;->d:Lbsp;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    sget-object v0, Lbsp;->d:Lbsp;

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    if-nez p1, :cond_1

    .line 408
    :cond_0
    return-void

    .line 400
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    invoke-static {v0}, Lbsp;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 402
    new-instance v1, Lbhp;

    const-string v2, "Cannot pass a read permission (%s) to a request for publish authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 403
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected a(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 544
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 545
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 546
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->b()Lbse;

    move-result-object v1

    invoke-virtual {v1}, Lbse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 550
    const-string v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 551
    const-string v2, "com.facebook.LoginFragment:Request"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 553
    return-object v0
.end method

.method public a(Lbrn;)Lbsp;
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lbsp;->f:Lbrn;

    .line 259
    return-object p0
.end method

.method public a(Lbse;)Lbsp;
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lbsp;->e:Lbse;

    .line 241
    return-object p0
.end method

.method protected a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lbsp;->e:Lbse;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 429
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lbsp;->f:Lbrn;

    .line 432
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient$Request;-><init>(Lbse;Ljava/util/Set;Lbrn;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient$Request;->a(Z)V

    .line 436
    return-object v0

    .line 427
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 435
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;Lbix;)V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lbsu;

    invoke-direct {v0, p1}, Lbsu;-><init>(Landroid/app/Activity;)V

    .line 101
    invoke-direct {p0, p2}, Lbsp;->a(Lbix;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 99
    invoke-direct {p0, v0, v1}, Lbsp;->a(Lbsz;Lcom/facebook/login/LoginClient$Request;)V

    .line 103
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0, p2}, Lbsp;->b(Ljava/util/Collection;)V

    .line 329
    invoke-virtual {p0, p2}, Lbsp;->a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 330
    new-instance v1, Lbsu;

    invoke-direct {v1, p1}, Lbsu;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lbsp;->a(Lbsz;Lcom/facebook/login/LoginClient$Request;)V

    .line 331
    return-void
.end method

.method public a(Landroid/app/Fragment;Lbix;)V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lbsp;->a(Lbpa;Lbix;)V

    .line 125
    return-void
.end method

.method public a(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lbsp;->a(Lbpa;Ljava/util/Collection;)V

    .line 305
    return-void
.end method

.method public a(Landroid/content/Context;Lbjc;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lbsp;->b(Landroid/content/Context;Lbjc;)V

    .line 283
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Lbix;)V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lbsp;->a(Lbpa;Lbix;)V

    .line 114
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lbsp;->a(Lbpa;Ljava/util/Collection;)V

    .line 294
    return-void
.end method

.method public a(Lbhd;Lbhl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhd;",
            "Lbhl",
            "<",
            "Lbsx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    instance-of v0, p1, Lbnj;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lbhp;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    check-cast p1, Lbnj;

    sget-object v0, Lbnl;->Login:Lbnl;

    .line 160
    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    new-instance v1, Lbsq;

    invoke-direct {v1, p0, p2}, Lbsq;-><init>(Lbsp;Lbhl;)V

    .line 159
    invoke-virtual {p1, v0, v1}, Lbnj;->b(ILbnk;)V

    .line 171
    return-void
.end method

.method a(ILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsp;->a(ILandroid/content/Intent;Lbhl;)Z

    move-result v0

    return v0
.end method

.method a(ILandroid/content/Intent;Lbhl;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lbhl",
            "<",
            "Lbsx;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 178
    const/4 v4, 0x0

    .line 179
    const/4 v3, 0x0

    .line 180
    sget-object v7, Lbsk;->ERROR:Lbsk;

    .line 181
    const/4 v6, 0x0

    .line 182
    const/4 v5, 0x0

    .line 184
    const/4 v2, 0x0

    .line 185
    if-eqz p2, :cond_4

    .line 186
    const-string v1, "com.facebook.LoginFragment:Result"

    .line 187
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/login/LoginClient$Result;

    .line 188
    if-eqz v1, :cond_6

    .line 189
    iget-object v5, v1, Lcom/facebook/login/LoginClient$Result;->e:Lcom/facebook/login/LoginClient$Request;

    .line 190
    iget-object v6, v1, Lcom/facebook/login/LoginClient$Result;->a:Lbsk;

    .line 191
    const/4 v7, -0x1

    move/from16 v0, p1

    if-ne v0, v7, :cond_3

    .line 192
    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->a:Lbsk;

    sget-object v8, Lbsk;->SUCCESS:Lbsk;

    if-ne v7, v8, :cond_2

    .line 193
    iget-object v3, v1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    .line 200
    :cond_0
    :goto_0
    iget-object v1, v1, Lcom/facebook/login/LoginClient$Result;->f:Ljava/util/Map;

    move-object v14, v5

    move-object v5, v3

    move-object v3, v1

    move-object v1, v14

    move-object v15, v6

    move-object v6, v4

    move-object v4, v15

    :goto_1
    move v12, v2

    move-object v7, v1

    move-object v9, v5

    move-object v5, v6

    move-object v14, v3

    move-object v3, v4

    move-object v4, v14

    .line 207
    :goto_2
    if-nez v5, :cond_1

    if-nez v9, :cond_1

    if-nez v12, :cond_1

    .line 208
    new-instance v5, Lbhp;

    const-string v1, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v5, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    .line 211
    :cond_1
    const/4 v6, 0x1

    .line 212
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 213
    invoke-direct/range {v1 .. v7}, Lbsp;->a(Landroid/content/Context;Lbsk;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    move-object/from16 v8, p0

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v13, p3

    .line 221
    invoke-direct/range {v8 .. v13}, Lbsp;->a(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lbhp;ZLbhl;)V

    .line 223
    const/4 v1, 0x1

    return v1

    .line 195
    :cond_2
    new-instance v4, Lbhi;

    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->c:Ljava/lang/String;

    invoke-direct {v4, v7}, Lbhi;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_3
    if-nez p1, :cond_0

    .line 198
    const/4 v2, 0x1

    goto :goto_0

    .line 202
    :cond_4
    if-nez p1, :cond_5

    .line 203
    const/4 v2, 0x1

    .line 204
    sget-object v7, Lbsk;->CANCEL:Lbsk;

    move v12, v2

    move-object v9, v3

    move-object v3, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    goto :goto_2

    :cond_5
    move v12, v2

    move-object v9, v3

    move-object v3, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    goto :goto_2

    :cond_6
    move-object v1, v5

    move-object v5, v3

    move-object v3, v6

    move-object v6, v4

    move-object v4, v7

    goto :goto_1
.end method

.method public b(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    invoke-direct {p0, p2}, Lbsp;->c(Ljava/util/Collection;)V

    .line 377
    invoke-virtual {p0, p2}, Lbsp;->a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 378
    new-instance v1, Lbsu;

    invoke-direct {v1, p1}, Lbsu;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lbsp;->a(Lbsz;Lcom/facebook/login/LoginClient$Request;)V

    .line 379
    return-void
.end method

.method public b(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lbsp;->b(Lbpa;Ljava/util/Collection;)V

    .line 353
    return-void
.end method

.method public b(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lbsp;->b(Lbpa;Ljava/util/Collection;)V

    .line 342
    return-void
.end method

.method public d()Lbse;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lbsp;->e:Lbse;

    return-object v0
.end method

.method public e()Lbrn;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lbsp;->f:Lbrn;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-static {v0}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 267
    invoke-static {v0}, Lcom/facebook/Profile;->a(Lcom/facebook/Profile;)V

    .line 268
    return-void
.end method
