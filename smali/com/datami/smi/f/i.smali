.class final Lcom/datami/smi/f/i;
.super Ljava/lang/Thread;


# static fields
.field private static final b:[B

.field private static c:I


# instance fields
.field final synthetic a:Lcom/datami/smi/f/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/f/i;->b:[B

    const/16 v0, 0xda

    sput v0, Lcom/datami/smi/f/i;->c:I

    return-void

    :array_0
    .array-data 1
        0x51t
        -0x66t
        -0x25t
        -0x11t
        -0x7t
        0x3t
        -0x15t
        0x9t
        -0x4et
        0x40t
        0x15t
        -0x7t
        -0x11t
        0xct
        -0x55t
        0x51t
        -0x10t
        0x7t
        0x4t
        -0x56t
        0x52t
        -0x7t
        -0x51t
        0x51t
        -0x10t
        0xbt
        0x2t
        -0x13t
        0xbt
        -0x3at
        -0x1ct
        -0x7t
        0x3t
        -0x15t
        0x9t
        -0x4et
        0x40t
        0x15t
        -0x7t
        -0x11t
        0xct
        -0x55t
        0x50t
        -0x11t
        0x11t
        -0x14t
        -0x46t
        0x44t
        0xat
        -0x5t
        -0x4t
        -0x4ft
        0x51t
        -0x10t
        0xbt
        0x2t
        -0x13t
        0xbt
        -0x3at
        -0x1ct
        0x11t
        -0x11t
        0x9t
        -0xdt
        0x3t
        -0x9t
        -0x49t
        0x53t
        -0x4t
        -0x14t
        0x4t
        -0x4t
        -0x47t
        0x4bt
        0x0t
        -0x3t
        -0x7t
        0x9t
        -0x7t
        0x1t
        -0x54t
        0x52t
        -0xet
        0x8t
        -0xft
        -0x6t
        0x1t
        -0x7t
        0x3t
        -0x15t
        0x9t
        -0x4et
        0x40t
        0x15t
        -0x7t
        -0x11t
        0xct
        -0x55t
        0x56t
        -0x14t
        -0x3t
        0xbt
        -0x2t
        -0xft
        -0x3t
        -0x2ct
        -0x1ct
        0x2at
        0x4t
        -0xbt
        -0xat
        0x8t
        -0x49t
        0x4bt
        -0x56t
        0x4et
        0x0t
        -0x5t
        -0xet
        0x0t
        0xct
        -0x2t
        -0x55t
        0x53t
        -0x4t
        -0x14t
        0x4t
        -0x4t
        -0x24t
        0x2at
        0x4t
        -0x9t
        0x4t
        -0x25t
        0x22t
        -0x12t
        0xet
        -0x12t
        -0x46t
    .end array-data
.end method

.method private constructor <init>(Lcom/datami/smi/f/g;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/f/i;->a:Lcom/datami/smi/f/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/datami/smi/f/g;Lcom/datami/smi/f/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/datami/smi/f/i;-><init>(Lcom/datami/smi/f/g;)V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    add-int/lit8 v0, p1, 0x4

    rsub-int/lit8 v4, p2, 0x74

    sget-object v6, Lcom/datami/smi/f/i;->b:[B

    add-int/lit8 v2, p0, 0x15

    const/4 v3, -0x1

    new-instance v7, Ljava/lang/String;

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v6, :cond_1

    move v4, v3

    move v5, v0

    move-object v3, v1

    move v1, v2

    :goto_0
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    int-to-byte v0, v1

    aput-byte v0, v3, v4

    if-ne v4, v2, :cond_0

    const/4 v0, 0x0

    invoke-direct {v7, v3, v0}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v5, v0

    move v8, v3

    move-object v3, v1

    move v1, v4

    move v4, v8

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 6

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/datami/smi/f/g;->f()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    shr-int/lit8 v1, v0, 0x20

    and-int/lit8 v1, v1, 0x1

    and-int/lit8 v0, v0, -0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/datami/smi/f/g;->g()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/datami/smi/f/g;->a(J)J

    invoke-static {}, Lcom/datami/smi/f/g;->h()J

    move-result-wide v2

    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/datami/smi/f/g;->b(J)J

    sget-object v0, Lcom/datami/smi/f/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/f/i;->b:[B

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    or-int/lit8 v2, v1, 0x12

    sget-object v3, Lcom/datami/smi/f/i;->b:[B

    const/16 v4, 0x4a

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/datami/smi/f/g;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v0, Lcom/datami/smi/f/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/f/i;->b:[B

    const/16 v2, 0x4a

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/i;->b:[B

    const/16 v3, 0x43

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/i;->b:[B

    const/16 v4, 0x4a

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/datami/smi/f/g;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/datami/smi/f/g;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/f/g;->h()J

    move-result-wide v0

    invoke-static {}, Lcom/datami/smi/f/g;->j()J

    move-result-wide v2

    invoke-static {}, Lcom/datami/smi/f/g;->k()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->P()V

    invoke-static {}, Lcom/datami/smi/f/g;->l()I

    move-result v0

    invoke-static {v0}, Lcom/datami/smi/c;->a(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/datami/smi/f/g;->a:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/f/i;->b:[B

    const/16 v1, 0xd

    aget-byte v0, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x31

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/i;->a(III)Ljava/lang/String;

    :goto_2
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/datami/smi/f/g;->i()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/datami/smi/f/g;->c(J)J

    invoke-static {}, Lcom/datami/smi/f/g;->h()J

    move-result-wide v2

    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/datami/smi/f/g;->b(J)J

    sget-object v0, Lcom/datami/smi/f/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/f/i;->b:[B

    const/16 v2, 0x11

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/i;->b:[B

    const/16 v3, 0x4a

    aget-byte v2, v2, v3

    invoke-static {v1, v2, v2}, Lcom/datami/smi/f/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/datami/smi/f/g;->i()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/datami/smi/f/g;->a:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/f/i;->b:[B

    const/16 v1, 0x11

    aget-byte v0, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/datami/smi/f/i;->b:[B

    const/16 v3, 0x54

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/i;->a(III)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
