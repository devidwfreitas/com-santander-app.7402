.class public Lblt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

.field private static final c:J = 0x3e8L

.field private static final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile e:Ljava/util/concurrent/ScheduledFuture;

.field private static f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile g:Lbmd;

.field private static h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static i:Ljava/lang/String;

.field private static j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const-class v0, Lblt;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lblt;->a:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lblt;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lblt;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lblt;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lbmd;)Lbmd;
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lblt;->g:Lbmd;

    return-object p0
.end method

.method static synthetic a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lblt;->e:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 7

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 118
    invoke-static {p0}, Lbqq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {p0}, Lbmh;->a(Landroid/app/Activity;)Lbmf;

    move-result-object v6

    .line 121
    new-instance v1, Lblv;

    invoke-direct/range {v1 .. v6}, Lblv;-><init>(Landroid/content/Context;Ljava/lang/String;JLbmf;)V

    .line 146
    sget-object v0, Lblt;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lblt;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 64
    :cond_0
    sput-object p1, Lblt;->i:Ljava/lang/String;

    .line 66
    new-instance v0, Lblu;

    invoke-direct {v0}, Lblu;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lblt;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lblt;->g:Lbmd;

    if-eqz v0, :cond_0

    sget-object v0, Lblt;->g:Lbmd;

    invoke-virtual {v0}, Lbmd;->h()Ljava/util/UUID;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 151
    sget-object v0, Lblt;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 152
    invoke-static {}, Lblt;->j()V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    sput-wide v0, Lblt;->j:J

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 156
    invoke-static {p0}, Lbqq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 157
    new-instance v4, Lblw;

    invoke-direct {v4, v0, v1, v2, v3}, Lblw;-><init>(JLandroid/content/Context;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lblt;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method static synthetic c()Lbmd;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lblt;->g:Lbmd;

    return-object v0
.end method

.method static synthetic c(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0}, Lblt;->d(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lblt;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 198
    sget-object v0, Lblt;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 199
    if-gez v0, :cond_0

    .line 202
    sget-object v0, Lblt;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 204
    sget-object v0, Lblt;->a:Ljava/lang/String;

    const-string v1, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    invoke-static {}, Lblt;->j()V

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 212
    invoke-static {p0}, Lbqq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 214
    new-instance v4, Lblx;

    invoke-direct {v4, v0, v1, v2, v3}, Lblx;-><init>(JLandroid/content/Context;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lblt;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lblt;->i()I

    move-result v0

    return v0
.end method

.method static synthetic f()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lblt;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic g()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lblt;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic h()J
    .locals 2

    .prologue
    .line 43
    sget-wide v0, Lblt;->j:J

    return-wide v0
.end method

.method private static i()I
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbol;->a(Ljava/lang/String;)Lboj;

    move-result-object v0

    .line 269
    if-nez v0, :cond_0

    .line 270
    invoke-static {}, Lbmb;->a()I

    move-result v0

    .line 273
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lboj;->e()I

    move-result v0

    goto :goto_0
.end method

.method private static j()V
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lblt;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lblt;->e:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 281
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lblt;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 282
    return-void
.end method
