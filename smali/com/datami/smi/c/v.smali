.class public final Lcom/datami/smi/c/v;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static final g:[B

.field private static h:I


# instance fields
.field private b:Ljava/util/TimerTask;

.field private c:Ljava/util/concurrent/ScheduledFuture;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Lcom/datami/smi/c/u;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/v;->g:[B

    const/16 v0, 0xf6

    sput v0, Lcom/datami/smi/c/v;->h:I

    sget-object v0, Lcom/datami/smi/c/v;->g:[B

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/datami/smi/c/v;->g:[B

    const/16 v2, 0xd

    aget-byte v1, v1, v2

    invoke-static {v0, v1, v1}, Lcom/datami/smi/c/v;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/v;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x3bt
        0x4at
        0x45t
        -0x45t
        0xat
        0x4t
        0xat
        -0x3ft
        0xat
        0x12t
        0x12t
        0x5t
        -0x3t
        0x1t
        0x26t
        -0x8t
        0x15t
        -0x10t
        0x1et
        0xdt
        0x1t
        0x16t
        -0x15t
        0x16t
        0x1bt
        0x1t
        0x38t
        -0x4t
        0x5t
        0x1ct
        -0x6t
        0x8t
        -0x3bt
        0x3et
        0x26t
        -0x8t
        0x15t
        -0x10t
        0x1et
        0xdt
        0x1t
        0x16t
        -0x15t
        0x16t
        0x1bt
        0x1t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/datami/smi/c/v;->c:Ljava/util/concurrent/ScheduledFuture;

    iput-object v0, p0, Lcom/datami/smi/c/v;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/datami/smi/c/v;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/datami/smi/c/v;->f:Lcom/datami/smi/c/u;

    sget-object v0, Lcom/datami/smi/c/v;->g:[B

    const/16 v1, 0xd

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v0, 0x2

    invoke-static {v0, v0, v1}, Lcom/datami/smi/c/v;->a(III)Ljava/lang/String;

    iput-object p1, p0, Lcom/datami/smi/c/v;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/datami/smi/c/v;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/datami/smi/c/v;Lcom/datami/smi/c/u;)Lcom/datami/smi/c/u;
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/v;->f:Lcom/datami/smi/c/u;

    return-object p1
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    mul-int/lit8 v0, p2, 0x18

    rsub-int/lit8 v3, v0, 0x73

    sget-object v7, Lcom/datami/smi/c/v;->g:[B

    new-instance v8, Ljava/lang/String;

    rsub-int/lit8 v0, p0, 0x1a

    mul-int/lit8 v1, p1, 0x3

    rsub-int/lit8 v1, v1, 0x15

    new-array v2, v1, [B

    if-nez v7, :cond_1

    move-object v3, v2

    move v4, v5

    move v6, v0

    move v2, v0

    move v0, v1

    :goto_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x9

    :goto_1
    int-to-byte v0, v2

    aput-byte v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v1, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v0

    move v9, v3

    move-object v3, v2

    move v2, v9

    goto :goto_1
.end method

.method static synthetic a(Lcom/datami/smi/c/v;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/v;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/datami/smi/c/w;

    invoke-direct {v0, p0}, Lcom/datami/smi/c/w;-><init>(Lcom/datami/smi/c/v;)V

    iput-object v0, p0, Lcom/datami/smi/c/v;->b:Ljava/util/TimerTask;

    return-void
.end method

.method private a(I)V
    .locals 7

    new-instance v0, Lcom/datami/smi/c/w;

    invoke-direct {v0, p0}, Lcom/datami/smi/c/w;-><init>(Lcom/datami/smi/c/v;)V

    iput-object v0, p0, Lcom/datami/smi/c/v;->b:Ljava/util/TimerTask;

    sget-object v0, Lcom/datami/smi/b/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/datami/smi/c/v;->b:Ljava/util/TimerTask;

    int-to-long v2, p1

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/v;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic b(Lcom/datami/smi/c/v;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/v;->d:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/datami/smi/c/v;->g:[B

    const/16 v1, 0x15

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/c/v;->g:[B

    const/16 v2, 0xb

    aget-byte v1, v1, v2

    add-int/lit8 v2, v1, -0x5

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/v;->a(III)Ljava/lang/String;

    iget-object v0, p0, Lcom/datami/smi/c/v;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/c/v;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iput-object v3, p0, Lcom/datami/smi/c/v;->c:Ljava/util/concurrent/ScheduledFuture;

    iput-object v3, p0, Lcom/datami/smi/c/v;->b:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic c(Lcom/datami/smi/c/v;)Lcom/datami/smi/c/u;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/v;->f:Lcom/datami/smi/c/u;

    return-object v0
.end method

.method private static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/datami/smi/c/v;->a:Ljava/lang/String;

    return-object v0
.end method
