.class public final Lbhv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:I = 0x1

.field private static B:I = 0x0

.field private static final C:Ljava/lang/Object;

.field private static final D:I

.field private static E:Ljava/lang/String; = null

.field private static final F:I = 0x64

.field private static final G:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field private static final H:Ljava/lang/String; = "%s/activities"

.field private static final I:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final J:Ljava/util/concurrent/ThreadFactory;

.field private static K:Ljava/lang/Boolean; = null

.field static final a:Ljava/lang/String; = "The callback request code offset can\'t be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method"

.field static final b:Ljava/lang/String; = "The callback request code offset can\'t be negative."

.field public static final c:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field public static final d:Ljava/lang/String; = "com.facebook.sdk.ApplicationName"

.field public static final e:Ljava/lang/String; = "com.facebook.sdk.ClientToken"

.field public static final f:Ljava/lang/String; = "com.facebook.sdk.WebDialogTheme"

.field public static final g:Ljava/lang/String; = "com.facebook.sdk.AutoLogAppEventsEnabled"

.field public static final h:Ljava/lang/String; = "com.facebook.sdk.CallbackOffset"

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lbjb;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:I = 0xface

.field private static volatile l:Ljava/util/concurrent/Executor; = null

.field private static volatile m:Ljava/lang/String; = null

.field private static volatile n:Ljava/lang/String; = null

.field private static volatile o:Ljava/lang/String; = null

.field private static volatile p:I = 0x0

.field private static volatile q:Ljava/lang/Boolean; = null

.field private static final r:Ljava/lang/String; = "facebook.com"

.field private static volatile s:Ljava/lang/String; = null

.field private static t:Ljava/util/concurrent/atomic/AtomicLong; = null

.field private static volatile u:Z = false

.field private static v:Z = false

.field private static w:Lbps; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbps",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static x:Landroid/content/Context; = null

.field private static final y:I = 0x5

.field private static final z:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    const-class v0, Lbhv;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhv;->i:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lbjb;

    sget-object v2, Lbjb;->DEVELOPER_ERRORS:Lbjb;

    aput-object v2, v1, v4

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lbhv;->j:Ljava/util/HashSet;

    .line 76
    const-string v0, "facebook.com"

    sput-object v0, Lbhv;->s:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, 0x10000

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lbhv;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 78
    sput-boolean v4, Lbhv;->u:Z

    .line 79
    sput-boolean v4, Lbhv;->v:Z

    .line 85
    const v0, 0xface

    sput v0, Lbhv;->B:I

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbhv;->C:Ljava/lang/Object;

    .line 87
    sget v0, Lbjy;->com_facebook_activity_theme:I

    sput v0, Lbhv;->D:I

    .line 88
    invoke-static {}, Lbqn;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhv;->E:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lbhv;->I:Ljava/util/concurrent/BlockingQueue;

    .line 98
    new-instance v0, Lbhw;

    invoke-direct {v0}, Lbhw;-><init>()V

    sput-object v0, Lbhv;->J:Ljava/util/concurrent/ThreadFactory;

    .line 145
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lbhv;->K:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 849
    if-eqz p0, :cond_0

    :goto_0
    sput p0, Lbhv;->p:I

    .line 850
    return-void

    .line 849
    :cond_0
    sget p0, Lbhv;->D:I

    goto :goto_0
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 678
    sget-object v0, Lbhv;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 679
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    const-class v0, Lbhv;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lbhv;->a(Landroid/content/Context;Lbia;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit v0

    return-void

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    const-class v0, Lbhv;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lbhv;->a(Landroid/content/Context;ILbia;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit v0

    return-void

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;ILbia;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    const-class v1, Lbhv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbhv;->K:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lbhv;->B:I

    if-eq p1, v0, :cond_0

    .line 204
    new-instance v0, Lbhp;

    const-string v2, "The callback request code offset can\'t be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method"

    invoke-direct {v0, v2}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 206
    :cond_0
    if-gez p1, :cond_1

    .line 207
    :try_start_1
    new-instance v0, Lbhp;

    const-string v2, "The callback request code offset can\'t be negative."

    invoke-direct {v0, v2}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    sput p1, Lbhv;->B:I

    .line 211
    invoke-static {p0, p2}, Lbhv;->a(Landroid/content/Context;Lbia;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lbia;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    const-class v1, Lbhv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbhv;->K:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-interface {p1}, Lbia;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 261
    :cond_1
    :try_start_1
    const-string v0, "applicationContext"

    invoke-static {p0, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbqx;->b(Landroid/content/Context;Z)V

    .line 266
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbqx;->a(Landroid/content/Context;Z)V

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lbhv;->x:Landroid/content/Context;

    .line 271
    sget-object v0, Lbhv;->x:Landroid/content/Context;

    invoke-static {v0}, Lbhv;->c(Landroid/content/Context;)V

    .line 274
    sget-object v0, Lbhv;->m:Ljava/lang/String;

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    new-instance v0, Lbhp;

    const-string v2, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    invoke-direct {v0, v2}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 282
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lbhv;->K:Ljava/lang/Boolean;

    .line 285
    invoke-static {}, Lbol;->a()V

    .line 287
    invoke-static {}, Lbqa;->b()V

    .line 289
    sget-object v0, Lbhv;->x:Landroid/content/Context;

    invoke-static {v0}, Lbmz;->a(Landroid/content/Context;)Lbmz;

    .line 291
    new-instance v0, Lbps;

    new-instance v2, Lbhx;

    invoke-direct {v2}, Lbhx;-><init>()V

    invoke-direct {v0, v2}, Lbps;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v0, Lbhv;->w:Lbps;

    .line 299
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lbhy;

    invoke-direct {v2, p1, p0}, Lbhy;-><init>(Lbia;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 323
    invoke-static {}, Lbhv;->f()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 542
    invoke-static {}, Lbhv;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lbhz;

    invoke-direct {v2, v0, p1}, Lbhz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 548
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 657
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 658
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "limitEventUsage"

    .line 659
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 660
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 661
    return-void
.end method

.method public static a(Lbjb;)V
    .locals 2

    .prologue
    .line 358
    sget-object v1, Lbhv;->j:Ljava/util/HashSet;

    monitor-enter v1

    .line 359
    :try_start_0
    sget-object v0, Lbhv;->j:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-static {}, Lbhv;->t()V

    .line 361
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 886
    new-instance v0, Lbps;

    invoke-direct {v0, p0}, Lbps;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbhv;->w:Lbps;

    .line 887
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 495
    sget-object v0, Lbhv;->i:Ljava/lang/String;

    const-string v1, "WARNING: Calling setFacebookDomain from non-DEBUG code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    sput-object p0, Lbhv;->s:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 470
    const-string v0, "executor"

    invoke-static {p0, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    sget-object v1, Lbhv;->C:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_0
    sput-object p0, Lbhv;->l:Ljava/util/concurrent/Executor;

    .line 473
    monitor-exit v1

    .line 474
    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 419
    sput-boolean p0, Lbhv;->u:Z

    .line 420
    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 331
    const-class v1, Lbhv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbhv;->K:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Lbix;
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    .line 554
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 555
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Both context and applicationId must be non-null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 618
    const-string v0, "Facebook-publish"

    invoke-static {v0, v2}, Lbqq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 619
    new-instance v0, Lbix;

    new-instance v3, Lcom/facebook/FacebookRequestError;

    invoke-direct {v3, v1, v2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v0, v1, v1, v3}, Lbix;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    :goto_0
    return-object v0

    .line 557
    :cond_1
    :try_start_1
    invoke-static {p0}, Lbmv;->a(Landroid/content/Context;)Lbmv;

    move-result-object v0

    .line 558
    const-string v2, "com.facebook.sdk.attributionTracking"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 561
    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 562
    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 566
    :try_start_2
    sget-object v8, Lbmu;->MOBILE_INSTALL_EVENT:Lbmu;

    .line 569
    invoke-static {p0}, Lbla;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 570
    invoke-static {p0}, Lbhv;->b(Landroid/content/Context;)Z

    move-result v10

    .line 566
    invoke-static {v8, v0, v9, v10, p0}, Lbms;->a(Lbmu;Lbmv;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 576
    :try_start_3
    const-string v8, "%s/activities"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 577
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v8, v0, v10}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lbim;)Lcom/facebook/GraphRequest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v8

    .line 579
    cmp-long v0, v6, v12

    if-eqz v0, :cond_3

    .line 582
    if-eqz v5, :cond_5

    .line 583
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    move-object v2, v0

    .line 589
    :goto_2
    if-nez v2, :cond_2

    .line 590
    :try_start_5
    const-string v0, "true"

    const/4 v2, 0x0

    new-instance v3, Lbiu;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/facebook/GraphRequest;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-direct {v3, v4}, Lbiu;-><init>([Lcom/facebook/GraphRequest;)V

    invoke-static {v0, v2, v3}, Lbix;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lbiu;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 594
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbix;

    goto/16 :goto_0

    .line 572
    :catch_1
    move-exception v0

    .line 573
    new-instance v2, Lbhp;

    const-string v3, "An error occurred while publishing install."

    invoke-direct {v2, v3, v0}, Lbhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 586
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 596
    :cond_2
    new-instance v0, Lbix;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5, v2}, Lbix;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 601
    :cond_3
    invoke-virtual {v8}, Lcom/facebook/GraphRequest;->m()Lbix;

    move-result-object v0

    .line 604
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 606
    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-virtual {v0}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 610
    invoke-virtual {v0}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 612
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public static b()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lbjb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    sget-object v1, Lbhv;->j:Ljava/util/HashSet;

    monitor-enter v1

    .line 344
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lbhv;->j:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Lbjb;)V
    .locals 2

    .prologue
    .line 374
    sget-object v1, Lbhv;->j:Ljava/util/HashSet;

    monitor-enter v1

    .line 375
    :try_start_0
    sget-object v0, Lbhv;->j:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 376
    monitor-exit v1

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 517
    invoke-static {p0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lbhv;->E:Ljava/lang/String;

    .line 518
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    sput-object p0, Lbhv;->E:Ljava/lang/String;

    .line 521
    :cond_0
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 443
    sput-boolean p0, Lbhv;->v:Z

    .line 444
    return-void
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 910
    sget v0, Lbhv;->B:I

    if-lt p0, v0, :cond_0

    sget v0, Lbhv;->B:I

    add-int/lit8 v0, v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 641
    invoke-static {}, Lbqx;->b()V

    .line 642
    const-string v0, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 644
    const-string v1, "limitEventUsage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 386
    sget-object v1, Lbhv;->j:Ljava/util/HashSet;

    monitor-enter v1

    .line 387
    :try_start_0
    sget-object v0, Lbhv;->j:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 388
    monitor-exit v1

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static c(Landroid/content/Context;)V
    .locals 5

    .prologue
    const v4, 0xface

    .line 683
    if-nez p0, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 690
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 689
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 695
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 699
    sget-object v0, Lbhv;->m:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 700
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 701
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 702
    check-cast v0, Ljava/lang/String;

    .line 703
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 704
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhv;->m:Ljava/lang/String;

    .line 715
    :cond_2
    :goto_1
    sget-object v0, Lbhv;->n:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 716
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhv;->n:Ljava/lang/String;

    .line 719
    :cond_3
    sget-object v0, Lbhv;->o:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 720
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhv;->o:Ljava/lang/String;

    .line 723
    :cond_4
    sget v0, Lbhv;->p:I

    if-nez v0, :cond_5

    .line 724
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.WebDialogTheme"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lbhv;->a(I)V

    .line 727
    :cond_5
    sget v0, Lbhv;->B:I

    if-ne v0, v4, :cond_6

    .line 728
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.CallbackOffset"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbhv;->B:I

    .line 733
    :cond_6
    sget-object v0, Lbhv;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 734
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.AutoLogAppEventsEnabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lbhv;->q:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 706
    :cond_7
    sput-object v0, Lbhv;->m:Ljava/lang/String;

    goto :goto_1

    .line 708
    :cond_8
    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 709
    new-instance v0, Lbhp;

    const-string v1, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 795
    sput-object p0, Lbhv;->m:Ljava/lang/String;

    .line 796
    return-void
.end method

.method public static c(Z)V
    .locals 1

    .prologue
    .line 867
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lbhv;->q:Ljava/lang/Boolean;

    .line 868
    return-void
.end method

.method public static c(Lbjb;)Z
    .locals 2

    .prologue
    .line 402
    sget-object v1, Lbhv;->j:Ljava/util/HashSet;

    monitor-enter v1

    .line 403
    :try_start_0
    invoke-static {}, Lbhv;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbhv;->j:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 746
    invoke-static {}, Lbqx;->b()V

    .line 747
    if-nez p0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-object v0

    .line 750
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 751
    if-eqz v1, :cond_0

    .line 755
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 758
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 763
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 764
    if-eqz v2, :cond_0

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 770
    :try_start_1
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 775
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 776
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 759
    :catch_0
    move-exception v1

    goto :goto_0

    .line 771
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 814
    sput-object p0, Lbhv;->n:Ljava/lang/String;

    .line 815
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 411
    sget-boolean v0, Lbhv;->u:Z

    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 832
    sput-object p0, Lbhv;->o:Ljava/lang/String;

    .line 833
    return-void
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 428
    sget-boolean v0, Lbhv;->v:Z

    return v0
.end method

.method public static f()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 455
    sget-object v1, Lbhv;->C:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    sget-object v0, Lbhv;->l:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 457
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lbhv;->l:Ljava/util/concurrent/Executor;

    .line 459
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    sget-object v0, Lbhv;->l:Ljava/util/concurrent/Executor;

    return-object v0

    .line 459
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    sget-object v0, Lbhv;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Lbqx;->b()V

    .line 507
    sget-object v0, Lbhv;->x:Landroid/content/Context;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    sget-object v0, Lbhv;->E:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    const-string v0, "4.22.1"

    return-object v0
.end method

.method public static k()J
    .locals 2

    .prologue
    .line 667
    invoke-static {}, Lbqx;->b()V

    .line 668
    sget-object v0, Lbhv;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    invoke-static {}, Lbqx;->b()V

    .line 787
    sget-object v0, Lbhv;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    invoke-static {}, Lbqx;->b()V

    .line 806
    sget-object v0, Lbhv;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    invoke-static {}, Lbqx;->b()V

    .line 824
    sget-object v0, Lbhv;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static o()I
    .locals 1

    .prologue
    .line 840
    invoke-static {}, Lbqx;->b()V

    .line 841
    sget v0, Lbhv;->p:I

    return v0
.end method

.method public static p()Z
    .locals 1

    .prologue
    .line 857
    invoke-static {}, Lbqx;->b()V

    .line 858
    sget-object v0, Lbhv;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static q()Ljava/io/File;
    .locals 1

    .prologue
    .line 877
    invoke-static {}, Lbqx;->b()V

    .line 878
    sget-object v0, Lbhv;->w:Lbps;

    invoke-virtual {v0}, Lbps;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static r()I
    .locals 1

    .prologue
    .line 896
    invoke-static {}, Lbqx;->b()V

    .line 897
    sget v0, Lbhv;->B:I

    return v0
.end method

.method static synthetic s()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lbhv;->x:Landroid/content/Context;

    return-object v0
.end method

.method private static t()V
    .locals 2

    .prologue
    .line 432
    sget-object v0, Lbhv;->j:Ljava/util/HashSet;

    sget-object v1, Lbjb;->GRAPH_API_DEBUG_INFO:Lbjb;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbhv;->j:Ljava/util/HashSet;

    sget-object v1, Lbjb;->GRAPH_API_DEBUG_WARNING:Lbjb;

    .line 433
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    sget-object v0, Lbhv;->j:Ljava/util/HashSet;

    sget-object v1, Lbjb;->GRAPH_API_DEBUG_WARNING:Lbjb;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_0
    return-void
.end method
