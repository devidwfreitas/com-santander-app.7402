.class Lcom/datami/smi/f/k;
.super Ljava/lang/Thread;


# static fields
.field private static a:Ljava/lang/String; = null

.field private static final b:J = 0x64L

.field private static final d:[B

.field private static e:I


# instance fields
.field private final c:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v3, 0x2c

    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/f/k;->d:[B

    sput v3, Lcom/datami/smi/f/k;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/f/k;->d:[B

    const/16 v2, 0x3a

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/k;->d:[B

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/k;->d:[B

    const/16 v4, 0x33

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/k;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/datami/smi/f/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/f/k;->a:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x51t
        -0x66t
        -0x25t
        -0x11t
        0x32t
        -0x16t
        0x1t
        0xat
        0x3t
        -0xct
        0x5t
        -0x2t
        -0x4ft
        0x56t
        -0xft
        0xat
        -0xdt
        -0x49t
        0x52t
        -0xft
        0x6t
        -0x8t
        -0x3t
        0x10t
        -0x6t
        0x2t
        -0x47t
        -0xdt
        0x56t
        -0x9t
        0x2t
        -0x8t
        -0x7t
        0xct
        -0x53t
        0x56t
        -0xft
        0x2t
        -0x1t
        -0x4dt
        0x41t
        0x2t
        -0x46t
        0x52t
        0x0t
        -0x6t
        0x0t
        -0x1t
        -0xct
        -0x2t
        -0x44t
        0x2bt
        0x5t
        -0xat
        -0x9t
        -0x45t
        0x4dt
        0x0t
        0x4t
        -0x55t
        0x42t
        0x8t
        0x2t
        0x3t
        -0xft
        -0x46t
        0x52t
        -0xft
        0x6t
        -0x8t
        -0x3t
        0x10t
        -0x6t
        0x2t
        -0x53t
        0x4ft
        0x1t
        -0x4t
        0x0t
        -0xct
        0xct
        -0x7t
        0xct
        -0x4ct
        0x8t
        0x8t
        -0x5t
        -0xdt
        0x19t
        -0x5t
        -0x13t
        0x17t
        0x2t
        -0x8t
        -0x7t
        0xct
    .end array-data
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 3

    sget-object v0, Lcom/datami/smi/f/k;->d:[B

    const/16 v1, 0x2c

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/k;->d:[B

    const/16 v2, 0x3a

    aget-byte v1, v1, v2

    or-int/lit8 v2, v1, 0x23

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/k;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/datami/smi/f/k;->c:Ljava/util/Queue;

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    rsub-int/lit8 v3, p0, 0x58

    sget-object v7, Lcom/datami/smi/f/k;->d:[B

    rsub-int/lit8 v1, p2, 0x30

    new-instance v8, Ljava/lang/String;

    mul-int/lit8 v0, p1, 0x2

    rsub-int/lit8 v0, v0, 0x5b

    new-array v2, v1, [B

    if-nez v7, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    move v0, v4

    :goto_1
    add-int/lit8 v4, v0, 0x1

    int-to-byte v9, v2

    aput-byte v9, v3, v0

    if-ne v4, v1, :cond_0

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
.method public run()V
    .locals 7

    const/16 v6, 0x21

    const/4 v5, 0x2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/datami/smi/f/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/f/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lcom/datami/smi/f/d;->a(Ljava/nio/channels/Selector;)V

    :cond_0
    const-wide/16 v0, 0x64

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/Selector;->select(J)I

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/datami/smi/f/d;

    invoke-interface {v1, v0}, Lcom/datami/smi/f/d;->a(Ljava/nio/channels/SelectionKey;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    const/16 v1, 0x54

    :try_start_2
    sget v2, Lcom/datami/smi/f/k;->e:I

    ushr-int/lit8 v2, v2, 0x2

    sget-object v3, Lcom/datami/smi/f/k;->d:[B

    const/16 v4, 0x2c

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/k;->a(III)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_3
    return-void

    :cond_2
    :try_start_4
    invoke-interface {v3}, Ljava/util/Set;->clear()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    throw v0

    :cond_4
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v0, Lcom/datami/smi/f/k;->d:[B

    aget-byte v0, v0, v5

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/f/k;->d:[B

    aget-byte v1, v1, v6

    add-int/lit8 v2, v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/k;->a(III)Ljava/lang/String;

    goto :goto_3

    :catch_2
    move-exception v0

    sget-object v0, Lcom/datami/smi/f/k;->d:[B

    aget-byte v0, v0, v5

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/f/k;->d:[B

    aget-byte v1, v1, v6

    add-int/lit8 v2, v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/k;->a(III)Ljava/lang/String;

    goto :goto_3

    :catch_3
    move-exception v1

    sget-object v1, Lcom/datami/smi/f/k;->d:[B

    aget-byte v1, v1, v5

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/k;->d:[B

    aget-byte v2, v2, v6

    add-int/lit8 v3, v2, 0x2

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/k;->a(III)Ljava/lang/String;

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_2
.end method
