.class final Leh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field static final b:I

.field static final c:J = 0x1L

.field private static final d:Leh;

.field private static final f:I


# instance fields
.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Leh;

    invoke-direct {v0}, Leh;-><init>()V

    sput-object v0, Leh;->d:Leh;

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Leh;->f:I

    .line 59
    sget v0, Leh;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Leh;->a:I

    .line 60
    sget v0, Leh;->f:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Leh;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lej;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lej;-><init>(Lei;)V

    iput-object v0, p0, Leh;->e:Ljava/util/concurrent/Executor;

    .line 46
    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 8

    .prologue
    .line 74
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Leh;->a:I

    sget v3, Leh;->b:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 80
    const/4 v0, 0x1

    invoke-static {v1, v0}, Leh;->a(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    .line 82
    return-object v1
.end method

.method public static a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .locals 9

    .prologue
    .line 97
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Leh;->a:I

    sget v3, Leh;->b:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 104
    const/4 v0, 0x1

    invoke-static {v1, v0}, Leh;->a(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    .line 106
    return-object v1
.end method

.method public static a(Ljava/util/concurrent/ThreadPoolExecutor;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Leh;->d:Leh;

    iget-object v0, v0, Leh;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method
