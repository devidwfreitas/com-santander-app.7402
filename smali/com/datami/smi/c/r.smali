.class public final Lcom/datami/smi/c/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static final e:[B

.field private static f:I


# instance fields
.field private b:Ljava/util/TimerTask;

.field private c:Ljava/util/concurrent/ScheduledFuture;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x45

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/r;->e:[B

    const/16 v0, 0x1b

    sput v0, Lcom/datami/smi/c/r;->f:I

    sget-object v0, Lcom/datami/smi/c/r;->e:[B

    const/16 v1, 0x23

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/c/r;->e:[B

    const/16 v2, 0xb

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    or-int/lit8 v2, v1, 0x20

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/r;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/r;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x77t
        -0x3ct
        -0x29t
        -0x69t
        -0xct
        0x1ft
        -0x1ft
        0xct
        -0xet
        0x2t
        -0x7t
        0x5t
        0x12t
        -0x23t
        0x11t
        -0x15t
        0xdt
        0x20t
        -0x27t
        0x5t
        -0xft
        0x5t
        0x0t
        -0x1t
        0x42t
        -0x50t
        0x7t
        -0x14t
        0x55t
        -0x55t
        -0x3t
        0x11t
        -0x15t
        0x52t
        -0x1ct
        0x18t
        -0x3t
        0x3t
        -0x3t
        0x46t
        -0x3t
        -0xbt
        -0xbt
        0x2t
        0xat
        0x6t
        -0x1ft
        0xft
        -0xet
        0x17t
        -0x17t
        -0x6t
        0x6t
        -0xft
        0x1ct
        -0xft
        -0x14t
        0x6t
        -0x31t
        -0x1ft
        0x6t
        0x42t
        -0x35t
        -0x23t
        0x11t
        -0x15t
        0x52t
        -0x1ct
        0x18t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/datami/smi/c/r;->c:Ljava/util/concurrent/ScheduledFuture;

    iput-object v0, p0, Lcom/datami/smi/c/r;->d:Landroid/content/Context;

    iput-object p1, p0, Lcom/datami/smi/c/r;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/datami/smi/c/r;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/r;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    mul-int/lit8 v0, p1, 0x3

    add-int/lit8 v6, v0, 0x6

    sget-object v7, Lcom/datami/smi/c/r;->e:[B

    new-instance v8, Ljava/lang/String;

    rsub-int/lit8 v0, p0, 0x73

    add-int/lit8 v1, p2, 0x4

    new-array v2, v6, [B

    if-nez v7, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x2

    move v0, v3

    :goto_1
    add-int/lit8 v3, v0, 0x1

    int-to-byte v9, v1

    aput-byte v9, v2, v0

    if-ne v3, v6, :cond_0

    invoke-direct {v8, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    aget-byte v0, v7, v5

    goto :goto_0

    :cond_1
    move v5, v1

    move v1, v0

    move v0, v4

    goto :goto_1
.end method

.method static synthetic a(ZZ)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/c/r;->e:[B

    const/16 v2, 0x2c

    aget-byte v1, v1, v2

    add-int/lit8 v2, v1, -0x1

    sget-object v3, Lcom/datami/smi/c/r;->e:[B

    const/16 v4, 0x17

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/r;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/r;->e:[B

    const/16 v2, 0x21

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/datami/smi/c/r;->e:[B

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/r;->e:[B

    const/16 v4, 0x3e

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/r;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 1

    new-instance v0, Lcom/datami/smi/c/s;

    invoke-direct {v0, p0}, Lcom/datami/smi/c/s;-><init>(Lcom/datami/smi/c/r;)V

    iput-object v0, p0, Lcom/datami/smi/c/r;->b:Ljava/util/TimerTask;

    return-void
.end method

.method private static b(ZZ)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/c/r;->e:[B

    const/16 v2, 0x2c

    aget-byte v1, v1, v2

    add-int/lit8 v2, v1, -0x1

    sget-object v3, Lcom/datami/smi/c/r;->e:[B

    const/16 v4, 0x17

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/r;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/r;->e:[B

    const/16 v2, 0x21

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/datami/smi/c/r;->e:[B

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/r;->e:[B

    const/16 v4, 0x3e

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/r;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/datami/smi/c/r;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/datami/smi/c/r;->e:[B

    const/16 v1, 0x16

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/c/r;->e:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    invoke-static {v0, v0, v1}, Lcom/datami/smi/c/r;->a(III)Ljava/lang/String;

    iget-object v0, p0, Lcom/datami/smi/c/r;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/c/r;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iput-object v3, p0, Lcom/datami/smi/c/r;->c:Ljava/util/concurrent/ScheduledFuture;

    iput-object v3, p0, Lcom/datami/smi/c/r;->b:Ljava/util/TimerTask;

    return-void
.end method

.method public final a(I)V
    .locals 7

    new-instance v0, Lcom/datami/smi/c/s;

    invoke-direct {v0, p0}, Lcom/datami/smi/c/s;-><init>(Lcom/datami/smi/c/r;)V

    iput-object v0, p0, Lcom/datami/smi/c/r;->b:Ljava/util/TimerTask;

    sget-object v0, Lcom/datami/smi/b/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/datami/smi/c/r;->b:Ljava/util/TimerTask;

    int-to-long v2, p1

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/r;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
