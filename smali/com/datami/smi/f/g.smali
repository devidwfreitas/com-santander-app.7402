.class public final Lcom/datami/smi/f/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = null

.field public static final b:Ljava/lang/String; = "127.0.0.1"

.field private static final d:I = 0x5

.field private static final e:I = 0x80

.field private static l:Lcom/datami/smi/f/i;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/util/concurrent/BlockingQueue;

.field private static o:J

.field private static p:J

.field private static q:J

.field private static r:I

.field private static volatile s:J

.field private static t:J

.field private static u:J

.field private static final v:[B

.field private static w:I


# instance fields
.field c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private f:Lcom/datami/smi/b/m;

.field private g:Ljava/nio/channels/ServerSocketChannel;

.field private h:Lcom/datami/smi/f/a;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/16 v0, 0x15c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/f/g;->v:[B

    const/16 v0, 0x45

    sput v0, Lcom/datami/smi/f/g;->w:I

    sget-object v0, Lcom/datami/smi/f/g;->v:[B

    const/16 v1, 0xbf

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    const/16 v2, 0xe9

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    const/16 v3, 0x8c

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/f/g;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/datami/smi/f/g;->m:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/datami/smi/f/g;->n:Ljava/util/concurrent/BlockingQueue;

    sput-wide v4, Lcom/datami/smi/f/g;->o:J

    sput-wide v4, Lcom/datami/smi/f/g;->p:J

    sput-wide v4, Lcom/datami/smi/f/g;->q:J

    const/4 v0, 0x7

    sput v0, Lcom/datami/smi/f/g;->r:I

    sput-wide v4, Lcom/datami/smi/f/g;->s:J

    sput-wide v4, Lcom/datami/smi/f/g;->t:J

    sput-wide v4, Lcom/datami/smi/f/g;->u:J

    return-void

    :array_0
    .array-data 1
        0x5dt
        -0x45t
        -0x20t
        0x5dt
        -0x42t
        -0xct
        -0x7t
        0xct
        0x3t
        -0x4t
        -0x16t
        0x58t
        -0x43t
        -0x4t
        -0x1t
        -0xat
        0x4dt
        -0x54t
        0xat
        -0xet
        0x0t
        0xft
        -0xct
        -0x9t
        0x8t
        -0xat
        -0xat
        0x3t
        0xbt
        0x9t
        -0x1bt
        0x3t
        0x1ct
        -0x24t
        0xbt
        0x1t
        -0xct
        -0x4et
        0x18t
        -0x1ct
        -0x2t
        -0x6t
        0x4t
        0x2dt
        -0x38t
        0x4t
        0xet
        -0xft
        0x52t
        -0x58t
        0xdt
        -0xct
        0xbt
        0x47t
        -0x4et
        0x17t
        -0x1ft
        0xdt
        0x0t
        0x21t
        -0x38t
        0x4t
        0xet
        -0xft
        0x52t
        -0x2t
        -0x6t
        0x8t
        -0x3t
        0x1t
        -0x3t
        0x1t
        -0x4t
        -0x2dt
        -0x7t
        0x8t
        0x7t
        -0xbt
        0x46t
        -0x4et
        0x53t
        -0x4at
        -0x6t
        0xat
        -0x10t
        0xct
        -0x9t
        0x7t
        -0xat
        -0x7t
        0x53t
        -0x56t
        0x1t
        0x11t
        -0x7t
        0x1t
        0x44t
        -0x44t
        -0xdt
        -0x7t
        0x6t
        -0x7t
        0x52t
        -0x4at
        -0xbt
        0x52t
        -0x54t
        0xat
        -0xet
        0x0t
        0xft
        -0xct
        -0x9t
        0x8t
        -0x1dt
        0x6t
        0x3t
        -0x13t
        0xdt
        0x44t
        -0x54t
        0xat
        -0xet
        0x0t
        0xft
        -0xct
        -0x9t
        0x8t
        0x4dt
        -0x44t
        -0xdt
        0x0t
        -0x1t
        0x8t
        0x1t
        -0x12t
        0x4t
        -0x4t
        0x50t
        -0x34t
        0x14t
        -0x3t
        -0xct
        -0x5t
        0xat
        -0x7t
        0x0t
        0x4dt
        -0x4at
        -0x6t
        0x4dt
        -0x44t
        -0x10t
        0xct
        0x3t
        -0x14t
        0xat
        -0x6t
        0x6t
        0x46t
        -0x54t
        0xdt
        -0xet
        -0x5t
        0x10t
        -0xet
        0x51t
        -0x54t
        0x3t
        0xbt
        -0x9t
        0x5t
        -0x10t
        0x39t
        0x19t
        -0x22t
        0x12t
        -0x12t
        -0x3t
        0xat
        -0x6t
        0x6t
        0x46t
        -0x54t
        -0x2t
        0x12t
        -0x12t
        -0x3t
        0xet
        0x0t
        -0x4et
        0x1at
        -0x14t
        -0xct
        0xat
        0x3t
        -0x14t
        -0x58t
        0x7t
        -0x4t
        0x6t
        0x5t
        -0xet
        -0x2t
        0x4t
        0xbt
        0x2t
        -0x14t
        0xet
        0x0t
        0x43t
        -0x42t
        -0x15t
        0x0t
        0xbt
        -0x4et
        0x20t
        -0x1at
        -0x2t
        -0xft
        0x31t
        -0x38t
        0x4t
        0xet
        -0xft
        0x52t
        -0x1bt
        0x3t
        0x1ct
        -0x24t
        0xbt
        0x1t
        -0xct
        0x1bt
        -0x23t
        0x2t
        -0xat
        -0x2t
        0x58t
        -0x54t
        0xdt
        -0xet
        -0x5t
        0x10t
        -0xet
        0x51t
        -0x50t
        0x0t
        0x4dt
        -0x51t
        0x0t
        -0x4t
        -0x3t
        0x53t
        -0x22t
        0x12t
        -0x12t
        -0x3t
        0xat
        -0x6t
        0x6t
        0x46t
        -0x54t
        0xat
        -0xet
        0x0t
        0xft
        -0xct
        -0x9t
        0x8t
        0x4dt
        0x1t
        -0xct
        -0x1t
        0x2t
        -0x6t
        0x6t
        0x46t
        -0x54t
        0xdt
        -0x10t
        0x32t
        -0x35t
        0x0t
        0xbt
        0x47t
        -0x4et
        0x18t
        -0x1ct
        -0x6t
        0x12t
        -0xct
        0x17t
        -0x1ft
        0x10t
        -0xet
        -0x6t
        0xct
        0x0t
        -0xet
        -0x1t
        0xct
        0x0t
        0x21t
        -0x38t
        0x4t
        0x0t
        0xdt
        0x44t
        -0x34t
        0x14t
        -0x3t
        -0xct
        -0x5t
        0xat
        -0x7t
        0x0t
        0x4dt
        -0x4at
        -0x6t
        0x4dt
        -0x54t
        0xdt
        -0x10t
        -0x1t
        0xat
        -0x6t
        0x6t
        0x46t
        -0x11t
        0xft
        -0x55t
        0x4t
        0x4et
        -0x36t
        -0x1ft
        0x11t
        -0x7t
        0x1t
        0x44t
        -0x2et
        -0x23t
        0x0t
        0x4t
        -0xct
        0x4t
        -0x4t
        0x51t
    .end array-data
.end method

.method public constructor <init>(Lcom/datami/smi/b/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/datami/smi/f/g;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/f/g;->j:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/datami/smi/f/g;->a(Lcom/datami/smi/b/m;)V

    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/datami/smi/f/g;->p:J

    return-wide p0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    rsub-int/lit8 v1, p1, 0x28

    new-instance v7, Ljava/lang/String;

    rsub-int/lit8 v0, p0, 0x75

    sget-object v8, Lcom/datami/smi/f/g;->v:[B

    add-int/lit8 v3, p2, 0x4

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x1

    :goto_1
    int-to-byte v0, v2

    aput-byte v0, v3, v4

    if-ne v4, v1, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    goto :goto_1
.end method

.method public static a(I)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/datami/smi/f/g;->l:Lcom/datami/smi/f/i;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/f/g;->l:Lcom/datami/smi/f/i;

    invoke-virtual {v0}, Lcom/datami/smi/f/i;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/datami/smi/f/g;->n:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/datami/smi/f/g;->v:[B

    const/16 v1, 0x119

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    const/16 v2, 0x1d

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    const/16 v3, 0x60

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(J)J
    .locals 0

    sput-wide p0, Lcom/datami/smi/f/g;->s:J

    return-wide p0
.end method

.method static synthetic c(J)J
    .locals 0

    sput-wide p0, Lcom/datami/smi/f/g;->o:J

    return-wide p0
.end method

.method public static e()J
    .locals 2

    sget-wide v0, Lcom/datami/smi/f/g;->s:J

    return-wide v0
.end method

.method static synthetic f()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    sget-object v0, Lcom/datami/smi/f/g;->n:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic g()J
    .locals 2

    sget-wide v0, Lcom/datami/smi/f/g;->p:J

    return-wide v0
.end method

.method static synthetic h()J
    .locals 2

    sget-wide v0, Lcom/datami/smi/f/g;->s:J

    return-wide v0
.end method

.method static synthetic i()J
    .locals 2

    sget-wide v0, Lcom/datami/smi/f/g;->o:J

    return-wide v0
.end method

.method static synthetic j()J
    .locals 2

    sget-wide v0, Lcom/datami/smi/f/g;->q:J

    return-wide v0
.end method

.method static synthetic k()J
    .locals 2

    sget-wide v0, Lcom/datami/smi/f/g;->u:J

    return-wide v0
.end method

.method static synthetic l()I
    .locals 1

    sget v0, Lcom/datami/smi/f/g;->r:I

    return v0
.end method

.method private m()I
    .locals 7

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/datami/smi/f/g;->g:Ljava/nio/channels/ServerSocketChannel;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/datami/smi/f/g;->g:Ljava/nio/channels/ServerSocketChannel;

    iget-object v1, p0, Lcom/datami/smi/f/g;->g:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    new-instance v2, Ljava/net/InetSocketAddress;

    sget-object v3, Lcom/datami/smi/f/g;->v:[B

    const/16 v4, 0x60

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/g;->v:[B

    const/16 v5, 0x38

    aget-byte v4, v4, v5

    neg-int v4, v4

    const/16 v5, 0x3c

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/f/g;->v:[B

    const/16 v4, 0xdc

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/datami/smi/f/g;->v:[B

    const/16 v5, 0x8

    aget-byte v4, v4, v5

    const/16 v5, 0x86

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static n()I
    .locals 2

    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    return v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/f/g;->i:I

    return v0
.end method

.method public final a(Lcom/datami/smi/b/m;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v6, 0xd8

    const/16 v4, 0x20

    const/16 v5, 0x14b

    iput-object p1, p0, Lcom/datami/smi/f/g;->f:Lcom/datami/smi/b/m;

    iget-object v0, p0, Lcom/datami/smi/f/g;->h:Lcom/datami/smi/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/f/g;->h:Lcom/datami/smi/f/a;

    invoke-virtual {v0, p1}, Lcom/datami/smi/f/a;->a(Lcom/datami/smi/b/m;)V

    :cond_0
    sget-object v0, Lcom/datami/smi/f/g;->m:Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/b/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v0, Lcom/datami/smi/f/g;->q:J

    invoke-static {}, Lcom/datami/smi/b/m;->n()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    sget-wide v0, Lcom/datami/smi/f/g;->u:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_1

    sget-wide v0, Lcom/datami/smi/f/g;->t:J

    invoke-static {}, Lcom/datami/smi/b/m;->o()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/datami/smi/b/m;->h()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/f/g;->m:Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/b/m;->n()J

    move-result-wide v0

    sput-wide v0, Lcom/datami/smi/f/g;->q:J

    sput-wide v8, Lcom/datami/smi/f/g;->u:J

    invoke-static {}, Lcom/datami/smi/b/m;->o()J

    move-result-wide v0

    sput-wide v0, Lcom/datami/smi/f/g;->t:J

    sget-object v0, Lcom/datami/smi/f/g;->v:[B

    const/16 v1, 0x14

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    aget-byte v1, v1, v4

    sget v2, Lcom/datami/smi/f/g;->w:I

    or-int/lit16 v2, v2, 0x82

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/datami/smi/b/m;->s()I

    move-result v0

    sput v0, Lcom/datami/smi/f/g;->r:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    const/16 v2, 0xb0

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    const/16 v3, 0x23

    aget-byte v2, v2, v3

    const/16 v3, 0x10a

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/f/g;->s:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    aget-byte v1, v1, v5

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    aget-byte v2, v2, v4

    const/16 v3, 0xd2

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/f/g;->q:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    aget-byte v1, v1, v5

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    const/16 v3, 0xe9

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/g;->v:[B

    aget-byte v3, v3, v6

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/f/g;->u:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    aget-byte v1, v1, v5

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    aget-byte v2, v2, v4

    sget-object v3, Lcom/datami/smi/f/g;->v:[B

    const/16 v4, 0xdc

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/f/g;->t:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    aget-byte v1, v1, v5

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    aget-byte v2, v2, v6

    or-int/lit16 v3, v2, 0x99

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/datami/smi/f/g;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b()I
    .locals 4

    iget-object v0, p0, Lcom/datami/smi/f/g;->k:[Ljava/lang/Thread;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x25

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    const/16 v3, 0x2e

    aget-byte v2, v2, v3

    sget v3, Lcom/datami/smi/f/g;->w:I

    or-int/lit8 v3, v3, 0x28

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/datami/smi/f/g;->m()I

    move-result v0

    iput v0, p0, Lcom/datami/smi/f/g;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    const/16 v2, 0xaf

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    const/16 v3, 0x1c

    aget-byte v2, v2, v3

    sget v3, Lcom/datami/smi/f/g;->w:I

    or-int/lit16 v3, v3, 0x98

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/datami/smi/f/g;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/f/g;->j:Ljava/lang/String;

    iget v0, p0, Lcom/datami/smi/f/g;->i:I

    return v0
.end method

.method public final c()V
    .locals 9

    const/16 v8, 0xd8

    const/16 v5, 0xaf

    const/4 v7, 0x5

    const/4 v1, 0x0

    const/16 v6, 0x14b

    iget-object v0, p0, Lcom/datami/smi/f/g;->k:[Ljava/lang/Thread;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x25

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    const/16 v3, 0x2e

    aget-byte v2, v2, v3

    sget v3, Lcom/datami/smi/f/g;->w:I

    or-int/lit8 v3, v3, 0x28

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    aget-byte v2, v2, v5

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/g;->v:[B

    const/16 v4, 0x38

    aget-byte v3, v3, v4

    neg-int v3, v3

    const/16 v4, 0xaa

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/datami/smi/f/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    aget-byte v2, v2, v6

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/g;->v:[B

    aget-byte v3, v3, v5

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/f/g;->v:[B

    const/16 v5, 0x2b

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    aget-byte v2, v2, v6

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/g;->v:[B

    aget-byte v3, v3, v8

    const/16 v4, 0xc0

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/datami/smi/f/g;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/datami/smi/f/a;

    iget-object v2, p0, Lcom/datami/smi/f/g;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, p0, Lcom/datami/smi/f/g;->f:Lcom/datami/smi/b/m;

    iget-object v4, p0, Lcom/datami/smi/f/g;->g:Ljava/nio/channels/ServerSocketChannel;

    invoke-direct {v0, v2, v3, v4}, Lcom/datami/smi/f/a;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/datami/smi/b/m;Ljava/nio/channels/ServerSocketChannel;)V

    iput-object v0, p0, Lcom/datami/smi/f/g;->h:Lcom/datami/smi/f/a;

    iget-object v0, p0, Lcom/datami/smi/f/g;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lcom/datami/smi/f/g;->h:Lcom/datami/smi/f/a;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    new-array v0, v7, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/datami/smi/f/g;->k:[Ljava/lang/Thread;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/datami/smi/f/g;->k:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/datami/smi/f/g;->k:[Ljava/lang/Thread;

    new-instance v3, Lcom/datami/smi/f/k;

    iget-object v4, p0, Lcom/datami/smi/f/g;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3, v4}, Lcom/datami/smi/f/k;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/datami/smi/f/g;->k:[Ljava/lang/Thread;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/datami/smi/f/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/datami/smi/f/i;-><init>(Lcom/datami/smi/f/g;Lcom/datami/smi/f/h;)V

    sput-object v0, Lcom/datami/smi/f/g;->l:Lcom/datami/smi/f/i;

    invoke-virtual {v0}, Lcom/datami/smi/f/i;->start()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/datami/smi/f/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    aget-byte v1, v1, v6

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    aget-byte v2, v2, v8

    or-int/lit16 v3, v2, 0x92

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final d()V
    .locals 7

    const/16 v6, 0x14b

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/datami/smi/f/g;->k:[Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/datami/smi/f/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    aget-byte v1, v1, v6

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    const/16 v3, 0xb0

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/g;->v:[B

    const/16 v4, 0xe

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    const/16 v2, 0xaf

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    const/16 v3, 0xa

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0xf9

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/smi/f/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/datami/smi/f/g;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v5, p0, Lcom/datami/smi/f/g;->k:[Ljava/lang/Thread;

    iput-object v5, p0, Lcom/datami/smi/f/g;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sput-object v5, Lcom/datami/smi/f/g;->l:Lcom/datami/smi/f/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/datami/smi/f/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/f/g;->v:[B

    aget-byte v1, v1, v6

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    const/16 v3, 0x20

    aget-byte v2, v2, v3

    const/16 v3, 0x62

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/f/g;->v:[B

    const/16 v3, 0xdc

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/f/g;->v:[B

    const/16 v4, 0x14

    aget-byte v3, v3, v4

    or-int/lit16 v4, v3, 0x130

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/g;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
