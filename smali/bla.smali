.class public Lbla;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.facebook.sdk.appEventPreferences"

.field public static final b:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSHED"

.field public static final c:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

.field public static final d:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

.field private static final e:Ljava/lang/String;

.field private static final f:I = 0x15180

.field private static final g:I = 0x1e

.field private static final h:Ljava/lang/String; = "_fbSourceApplicationHasBeenSet"

.field private static final i:Ljava/lang/String; = "fb_push_payload"

.field private static final j:Ljava/lang/String; = "campaign"

.field private static final k:Ljava/lang/String; = "fb_mobile_push_opened"

.field private static final l:Ljava/lang/String; = "fb_push_campaign"

.field private static final m:Ljava/lang/String; = "fb_push_action"

.field private static p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static q:Lblf;

.field private static r:Ljava/lang/Object;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Z

.field private static v:Z

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;


# instance fields
.field private final n:Ljava/lang/String;

.field private final o:Lbkf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-class v0, Lbla;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbla;->e:Ljava/lang/String;

    .line 189
    sget-object v0, Lblf;->AUTO:Lblf;

    sput-object v0, Lbla;->q:Lblf;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbla;->r:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 1

    .prologue
    .line 837
    .line 838
    invoke-static {p1}, Lbqq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-direct {p0, v0, p2, p3}, Lbla;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 841
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 2

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    invoke-static {}, Lbqx;->b()V

    .line 848
    iput-object p1, p0, Lbla;->n:Ljava/lang/String;

    .line 850
    if-nez p3, :cond_0

    .line 851
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 855
    :cond_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 856
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 858
    :cond_1
    new-instance v0, Lbkf;

    invoke-direct {v0, p3}, Lbkf;-><init>(Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lbla;->o:Lbkf;

    .line 868
    :goto_0
    invoke-static {}, Lbla;->n()V

    .line 869
    return-void

    .line 861
    :cond_2
    if-nez p2, :cond_3

    .line 863
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 862
    invoke-static {v0}, Lbqq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 865
    :cond_3
    new-instance v0, Lbkf;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lbkf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lbla;->o:Lbkf;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/AccessToken;)Lbla;
    .locals 2

    .prologue
    .line 416
    new-instance v0, Lbla;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lbla;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)Lbla;
    .locals 1

    .prologue
    .line 435
    new-instance v0, Lbla;

    invoke-direct {v0, p0, p1, p2}, Lbla;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static a()Lblf;
    .locals 2

    .prologue
    .line 471
    sget-object v1, Lbla;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_0
    sget-object v0, Lbla;->q:Lblf;

    monitor-exit v1

    return-object v0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 388
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbla;->o:Lbkf;

    .line 387
    invoke-static {v0, v1, p0, p1, p2}, Lblg;->a(Landroid/content/Context;Lbkf;Lbla;J)V

    .line 392
    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 379
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbla;->o:Lbkf;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    .line 378
    invoke-static/range {v1 .. v6}, Lblg;->a(Landroid/content/Context;Lbkf;Lbla;JLjava/lang/String;)V

    .line 384
    return-void
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 968
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 969
    if-eqz v0, :cond_1

    .line 970
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 971
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    invoke-static {}, Lbla;->j()V

    .line 1011
    :goto_0
    return-void

    .line 976
    :cond_0
    sput-object v0, Lbla;->t:Ljava/lang/String;

    .line 982
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 983
    if-eqz v0, :cond_2

    const-string v1, "_fbSourceApplicationHasBeenSet"

    const/4 v2, 0x0

    .line 984
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 985
    :cond_2
    invoke-static {}, Lbla;->j()V

    goto :goto_0

    .line 989
    :cond_3
    invoke-static {v0}, Leq;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 991
    if-nez v1, :cond_4

    .line 992
    invoke-static {}, Lbla;->j()V

    goto :goto_0

    .line 996
    :cond_4
    sput-boolean v3, Lbla;->u:Z

    .line 998
    const-string v2, "referer_app_link"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1000
    if-nez v1, :cond_5

    .line 1001
    const/4 v0, 0x0

    sput-object v0, Lbla;->t:Ljava/lang/String;

    goto :goto_0

    .line 1005
    :cond_5
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    sput-object v1, Lbla;->t:Ljava/lang/String;

    .line 1009
    const-string v1, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbla;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lbhv;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lbhp;

    const-string v1, "The Facebook sdk must be initialized before calling activateApp"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    invoke-static {}, Lbki;->a()V

    .line 232
    if-nez p1, :cond_1

    .line 233
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object p1

    .line 239
    :cond_1
    invoke-static {p0, p1}, Lbhv;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    invoke-static {p0, p1}, Lblt;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Lblt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lbla;->e:Ljava/lang/String;

    const-string v1, "activateApp events are being logged automatically. There\'s no need to call activateApp explicitly, this is safe to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {p0}, Lbhv;->a(Landroid/content/Context;)V

    .line 266
    invoke-static {p0}, Lbqq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbla;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lbkl;Lbkf;)V
    .locals 3

    .prologue
    .line 932
    invoke-static {p2, p1}, Lbkq;->a(Lbkf;Lbkl;)V

    .line 935
    invoke-virtual {p1}, Lbkl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lbla;->v:Z

    if-nez v0, :cond_0

    .line 936
    invoke-virtual {p1}, Lbkl;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fb_mobile_activate_app"

    if-ne v0, v1, :cond_1

    .line 937
    const/4 v0, 0x1

    sput-boolean v0, Lbla;->v:Z

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    sget-object v0, Lbjb;->APP_EVENTS:Lbjb;

    const-string v1, "AppEvents"

    const-string v2, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {v0, v1, v2}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Lblt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lbla;->e:Ljava/lang/String;

    const-string v1, "activateApp events are being logged automatically. There\'s no need to call activateApp explicitly, this is safe to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return-void

    .line 286
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both context and applicationId must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_2
    invoke-static {}, Lbki;->a()V

    .line 292
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 293
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lbla;->a(Landroid/app/Activity;)V

    .line 305
    :goto_1
    invoke-static {p0, p1}, Lbhv;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    new-instance v0, Lbla;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbla;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 309
    invoke-static {}, Lbla;->i()Ljava/lang/String;

    move-result-object v1

    .line 310
    sget-object v4, Lbla;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lblb;

    invoke-direct {v5, v0, v2, v3, v1}, Lblb;-><init>(Lbla;JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 296
    :cond_3
    invoke-static {}, Lbla;->j()V

    .line 297
    const-class v0, Lbla;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "To set source application the context of activateApp must be an instance of Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static a(Landroid/os/Bundle;Lbim;)V
    .locals 1

    .prologue
    .line 748
    .line 750
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v0

    .line 748
    invoke-static {p0, v0, p1}, Lbla;->a(Landroid/os/Bundle;Ljava/lang/String;Lbim;)V

    .line 752
    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Lbim;)V
    .locals 3

    .prologue
    .line 758
    invoke-static {}, Lbla;->e()Ljava/lang/String;

    move-result-object v0

    .line 759
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    :cond_0
    sget-object v0, Lbjb;->APP_EVENTS:Lbjb;

    sget-object v1, Lbla;->e:Ljava/lang/String;

    const-string v2, "AppEventsLogger userID cannot be null or empty"

    invoke-static {v0, v1, v2}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :goto_0
    return-void

    .line 767
    :cond_1
    invoke-static {}, Lbla;->k()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lbld;

    invoke-direct {v2, v0, p0, p1, p2}, Lbld;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lbim;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lbla;J)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lbla;->a(J)V

    return-void
.end method

.method static synthetic a(Lbla;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lbla;->a(JLjava/lang/String;)V

    return-void
.end method

.method public static a(Lblf;)V
    .locals 2

    .prologue
    .line 483
    sget-object v1, Lbla;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 484
    :try_start_0
    sput-object p0, Lbla;->q:Lblf;

    .line 485
    monitor-exit v1

    .line 486
    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .locals 9
    .param p5    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 908
    :try_start_0
    new-instance v0, Lbkl;

    iget-object v1, p0, Lbla;->n:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lbkl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 915
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbla;->o:Lbkf;

    invoke-static {v1, v0, v2}, Lbla;->a(Landroid/content/Context;Lbkl;Lbkf;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lbhp; {:try_start_0 .. :try_end_0} :catch_1

    .line 927
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 918
    sget-object v1, Lbjb;->APP_EVENTS:Lbjb;

    const-string v2, "AppEvents"

    const-string v3, "JSON encoding for app event failed: \'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    .line 919
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 918
    invoke-static {v1, v2, v3, v4}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 921
    :catch_1
    move-exception v0

    .line 923
    sget-object v1, Lbjb;->APP_EVENTS:Lbjb;

    const-string v2, "AppEvents"

    const-string v3, "Invalid app event: %s"

    new-array v4, v8, [Ljava/lang/Object;

    .line 924
    invoke-virtual {v0}, Lbhp;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 923
    invoke-static {v1, v2, v3, v4}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1015
    sput-object p0, Lbla;->t:Ljava/lang/String;

    .line 1016
    sput-boolean p1, Lbla;->u:Z

    .line 1017
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    invoke-static {}, Lblt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lbla;->e:Ljava/lang/String;

    const-string v1, "deactivateApp events are being logged automatically. There\'s no need to call deactivateApp, this is safe to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-static {p0}, Lbqq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbla;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 355
    invoke-static {}, Lblt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lbla;->e:Ljava/lang/String;

    const-string v1, "deactivateApp events are being logged automatically. There\'s no need to call deactivateApp, this is safe to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    return-void

    .line 361
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 362
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both context and applicationId must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_2
    invoke-static {}, Lbla;->j()V

    .line 367
    new-instance v0, Lbla;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbla;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 369
    sget-object v1, Lbla;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v4, Lblc;

    invoke-direct {v4, v0, v2, v3}, Lblc;-><init>(Lbla;J)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 696
    sget-object v1, Lbla;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 697
    :try_start_0
    sget-object v0, Lbla;->w:Ljava/lang/String;

    invoke-static {v0, p0}, Lbqq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    sput-object p0, Lbla;->w:Ljava/lang/String;

    .line 702
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 701
    invoke-static {v0}, Lbla;->c(Landroid/content/Context;)Lbla;

    move-result-object v0

    .line 704
    const-string v2, "fb_mobile_obtain_push_token"

    invoke-virtual {v0, v2}, Lbla;->a(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lbla;->a()Lblf;

    move-result-object v2

    sget-object v3, Lblf;->EXPLICIT_ONLY:Lblf;

    if-eq v2, v3, :cond_0

    .line 707
    invoke-virtual {v0}, Lbla;->b()V

    .line 710
    :cond_0
    monitor-exit v1

    .line 711
    return-void

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c(Landroid/content/Context;)Lbla;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 404
    new-instance v0, Lbla;

    invoke-direct {v0, p0, v1, v1}, Lbla;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lbla;
    .locals 2

    .prologue
    .line 449
    new-instance v0, Lbla;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbla;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 678
    invoke-static {}, Lbkq;->a()V

    .line 679
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 728
    invoke-static {p0}, Lbki;->a(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 714
    sget-object v1, Lbla;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 715
    :try_start_0
    sget-object v0, Lbla;->w:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 716
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
    .line 1051
    sget-object v0, Lbla;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1052
    sget-object v1, Lbla;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 1053
    :try_start_0
    sget-object v0, Lbla;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1055
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1058
    const-string v2, "anonymousAppDeviceGUID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbla;->s:Ljava/lang/String;

    .line 1059
    sget-object v0, Lbla;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbla;->s:Ljava/lang/String;

    .line 1063
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1064
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "anonymousAppDeviceGUID"

    sget-object v3, Lbla;->s:Ljava/lang/String;

    .line 1065
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1066
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1069
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    :cond_1
    sget-object v0, Lbla;->s:Ljava/lang/String;

    return-object v0

    .line 1069
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 960
    sget-object v0, Lbjb;->DEVELOPER_ERRORS:Lbjb;

    const-string v1, "AppEvents"

    invoke-static {v0, v1, p0}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 735
    invoke-static {}, Lbki;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 742
    const/4 v0, 0x0

    invoke-static {v0}, Lbki;->a(Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method static h()V
    .locals 2

    .prologue
    .line 949
    invoke-static {}, Lbla;->a()Lblf;

    move-result-object v0

    sget-object v1, Lblf;->EXPLICIT_ONLY:Lblf;

    if-eq v0, v1, :cond_0

    .line 950
    sget-object v0, Lblm;->EAGER_FLUSHING_EVENT:Lblm;

    invoke-static {v0}, Lbkq;->a(Lblm;)V

    .line 952
    :cond_0
    return-void
.end method

.method static i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1020
    const-string v0, "Unclassified"

    .line 1021
    sget-boolean v1, Lbla;->u:Z

    if-eqz v1, :cond_0

    .line 1022
    const-string v0, "Applink"

    .line 1024
    :cond_0
    sget-object v1, Lbla;->t:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lbla;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    :cond_1
    return-object v0
.end method

.method static j()V
    .locals 1

    .prologue
    .line 1031
    const/4 v0, 0x0

    sput-object v0, Lbla;->t:Ljava/lang/String;

    .line 1032
    const/4 v0, 0x0

    sput-boolean v0, Lbla;->u:Z

    .line 1033
    return-void
.end method

.method static k()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 1036
    sget-object v0, Lbla;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 1037
    invoke-static {}, Lbla;->n()V

    .line 1040
    :cond_0
    sget-object v0, Lbla;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lbla;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lbla;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private static n()V
    .locals 7

    .prologue
    .line 872
    sget-object v1, Lbla;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 873
    :try_start_0
    sget-object v0, Lbla;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 874
    monitor-exit v1

    .line 899
    :goto_0
    return-void

    .line 876
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lbla;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 877
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    new-instance v1, Lble;

    invoke-direct {v1}, Lble;-><init>()V

    .line 893
    sget-object v0, Lbla;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x15180

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 877
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbla;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 635
    const/4 v0, 0x0

    .line 637
    :try_start_0
    const-string v1, "fb_push_payload"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-static {v1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    :goto_0
    return-void

    .line 642
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 643
    const-string v1, "campaign"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 647
    :goto_1
    if-nez v0, :cond_1

    .line 648
    sget-object v0, Lbjb;->DEVELOPER_ERRORS:Lbjb;

    sget-object v1, Lbla;->e:Ljava/lang/String;

    const-string v2, "Malformed payload specified for logging a push notification open."

    invoke-static {v0, v1, v2}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 654
    const-string v2, "fb_push_campaign"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    if-eqz p2, :cond_2

    .line 656
    const-string v0, "fb_push_action"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_2
    const-string v0, "fb_mobile_push_opened"

    invoke-virtual {p0, v0, v1}, Lbla;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 644
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbla;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 500
    return-void
.end method

.method public a(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lbla;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 518
    return-void
.end method

.method public a(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 569
    .line 571
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x0

    .line 574
    invoke-static {}, Lblt;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    .line 569
    invoke-direct/range {v0 .. v5}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 575
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 539
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 544
    invoke-static {}, Lblt;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 539
    invoke-direct/range {v0 .. v5}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 545
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 812
    const/4 v4, 0x1

    .line 817
    invoke-static {}, Lblt;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 812
    invoke-direct/range {v0 .. v5}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 818
    return-void
.end method

.method public a(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbla;->a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 588
    return-void
.end method

.method public a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 605
    if-nez p1, :cond_0

    .line 606
    const-string v0, "purchaseAmount cannot be null"

    invoke-static {v0}, Lbla;->d(Ljava/lang/String;)V

    .line 620
    :goto_0
    return-void

    .line 608
    :cond_0
    if-nez p2, :cond_1

    .line 609
    const-string v0, "currency cannot be null"

    invoke-static {v0}, Lbla;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_1
    if-nez p3, :cond_2

    .line 614
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 616
    :cond_2
    const-string v0, "fb_currency"

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v0, "fb_mobile_purchase"

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3, p3}, Lbla;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 619
    invoke-static {}, Lbla;->h()V

    goto :goto_0
.end method

.method public a(Lcom/facebook/AccessToken;)Z
    .locals 2

    .prologue
    .line 687
    new-instance v0, Lbkf;

    invoke-direct {v0, p1}, Lbkf;-><init>(Lcom/facebook/AccessToken;)V

    .line 688
    iget-object v1, p0, Lbla;->o:Lbkf;

    invoke-virtual {v1, v0}, Lbkf;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 666
    sget-object v0, Lblm;->EXPLICIT:Lblm;

    invoke-static {v0}, Lbkq;->a(Lblm;)V

    .line 667
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lbla;->o:Lbkf;

    invoke-virtual {v0}, Lbkf;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
