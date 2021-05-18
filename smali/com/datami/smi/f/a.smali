.class Lcom/datami/smi/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/datami/smi/f/d;


# static fields
.field private static a:Ljava/lang/String;

.field private static final e:[B

.field private static f:I


# instance fields
.field private final b:Ljava/util/Queue;

.field private c:Lcom/datami/smi/b/m;

.field private final d:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xb

    const/16 v0, 0x55

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/f/a;->e:[B

    const/16 v0, 0xb5

    sput v0, Lcom/datami/smi/f/a;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/f/a;->e:[B

    aget-byte v1, v1, v4

    or-int/lit8 v2, v1, 0x4c

    sget-object v3, Lcom/datami/smi/f/a;->e:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/datami/smi/f/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/f/a;->a:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x78t
        -0x7dt
        -0xet
        -0x17t
        -0x1et
        -0xdt
        0x47t
        -0x4dt
        0x54t
        -0x41t
        -0x2t
        0x0t
        -0x2t
        -0xbt
        -0x4t
        0x54t
        -0x43t
        -0x9t
        0x3t
        0x4t
        -0x9t
        -0x6t
        0x54t
        -0x43t
        -0xct
        0x1t
        0x0t
        0x9t
        0x2t
        -0x11t
        0xbt
        -0x6t
        0x1t
        0x4dt
        -0x1et
        -0xdt
        0x47t
        -0x4dt
        0x54t
        -0x52t
        0xdt
        -0x2t
        -0x2t
        -0xat
        -0x1t
        0xft
        -0xdt
        0x52t
        -0x53t
        0xet
        -0xdt
        -0x4t
        0x11t
        -0xdt
        0x52t
        -0x46t
        -0x9t
        -0x3t
        0x52t
        -0x41t
        -0x2t
        0x0t
        -0x2t
        -0xbt
        -0x4t
        0xbt
        -0x5t
        0x7t
        0x47t
        -0x43t
        -0xct
        0x1t
        0x0t
        0x9t
        0x2t
        -0x11t
        0xbt
        -0x6t
        0x1t
        -0x5t
        0x52t
        -0x9t
        -0x9t
        0x4t
        0xct
    .end array-data
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/datami/smi/b/m;Ljava/nio/channels/ServerSocketChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/datami/smi/f/a;->c:Lcom/datami/smi/b/m;

    iput-object p1, p0, Lcom/datami/smi/f/a;->b:Ljava/util/Queue;

    iput-object p3, p0, Lcom/datami/smi/f/a;->d:Ljava/nio/channels/ServerSocketChannel;

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    mul-int/lit8 v0, p0, 0x18

    rsub-int/lit8 v0, v0, 0x5b

    sget-object v7, Lcom/datami/smi/f/a;->e:[B

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x5

    add-int/lit8 v3, p1, 0x4

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v7, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v2, v0

    move v0, v4

    :goto_1
    int-to-byte v4, v2

    aput-byte v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v5

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/datami/smi/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/f/a;->c:Lcom/datami/smi/b/m;

    return-void
.end method

.method public final a(Ljava/nio/channels/SelectionKey;)V
    .locals 4

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/smi/f/a;->b:Ljava/util/Queue;

    new-instance v2, Lcom/datami/smi/f/e;

    iget-object v3, p0, Lcom/datami/smi/f/a;->c:Lcom/datami/smi/b/m;

    invoke-direct {v2, v0, v3}, Lcom/datami/smi/f/e;-><init>(Ljava/nio/channels/SocketChannel;Lcom/datami/smi/b/m;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/datami/smi/f/a;->e:[B

    const/16 v1, 0x19

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/a;->e:[B

    const/16 v2, 0x2c

    aget-byte v1, v1, v2

    and-int/lit8 v2, v1, 0x1a

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/a;->a(III)Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/nio/channels/Selector;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/datami/smi/f/a;->d:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v0, p0, Lcom/datami/smi/f/a;->d:Ljava/nio/channels/ServerSocketChannel;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1, p0}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/datami/smi/f/a;->e:[B

    const/16 v1, 0x19

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0x1c

    const/16 v2, 0x2b

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/a;->a(III)Ljava/lang/String;

    goto :goto_0
.end method
