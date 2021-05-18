.class final Lcom/datami/smi/f/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x1000

.field private static final e:[B

.field private static f:I


# instance fields
.field private final b:Ljava/nio/ByteBuffer;

.field private c:Lcom/datami/smi/f/c;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/f/b;->e:[B

    const/16 v0, 0x56

    sput v0, Lcom/datami/smi/f/b;->f:I

    return-void

    :array_0
    .array-data 1
        0x12t
        -0x2ft
        0x7ct
        -0x67t
        0x42t
        0x17t
        -0x5t
        -0xft
        0xet
        -0x53t
        0x54t
        -0x5t
        -0x4ft
        0x53t
        -0x8t
        0x9t
        -0x54t
        0x42t
        0x17t
        -0x5t
        -0xft
        0xet
        -0x53t
        0x46t
        0xct
        -0x3t
        -0x2t
        -0x4dt
        0x53t
        -0x8t
        0x9t
        -0x54t
        -0x5t
        -0x9t
        0xbt
        0x0t
        -0xbt
        0x5t
        -0x7t
        -0x47t
        -0xdt
        -0x4t
        0x3t
        -0x44t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/f/b;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/datami/smi/f/c;->a:Lcom/datami/smi/f/c;

    iput-object v0, p0, Lcom/datami/smi/f/b;->c:Lcom/datami/smi/f/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/datami/smi/f/b;->d:Z

    iput-boolean p1, p0, Lcom/datami/smi/f/b;->d:Z

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    rsub-int/lit8 v2, p1, 0x10

    sget-object v7, Lcom/datami/smi/f/b;->e:[B

    rsub-int/lit8 v0, p2, 0x77

    rsub-int/lit8 v3, p0, 0x28

    new-instance v8, Ljava/lang/String;

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v7, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    add-int/2addr v1, v0

    add-int/lit8 v6, v6, 0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v3, v4

    if-ne v4, v2, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/nio/channels/SocketChannel;)I
    .locals 7

    const/16 v6, 0x23

    iget-object v0, p0, Lcom/datami/smi/f/b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_0
    sget-object v1, Lcom/datami/smi/f/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/f/b;->e:[B

    aget-byte v2, v2, v6

    sget-object v3, Lcom/datami/smi/f/b;->e:[B

    const/16 v4, 0x22

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/b;->e:[B

    const/16 v5, 0x25

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/b;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/f/b;->e:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/b;->e:[B

    aget-byte v3, v3, v6

    or-int/lit8 v4, v3, 0x57

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/b;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v0, :cond_2

    div-int/lit16 v1, v0, 0x584

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v1, v1, 0x88

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/datami/smi/f/b;->d:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/datami/smi/f/g;->a(I)V

    iget-object v1, p0, Lcom/datami/smi/f/b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    sget-object v1, Lcom/datami/smi/f/c;->b:Lcom/datami/smi/f/c;

    iput-object v1, p0, Lcom/datami/smi/f/b;->c:Lcom/datami/smi/f/c;

    :cond_2
    return v0
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/datami/smi/f/b;->c:Lcom/datami/smi/f/c;

    sget-object v1, Lcom/datami/smi/f/c;->b:Lcom/datami/smi/f/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/nio/channels/SocketChannel;)V
    .locals 5

    sget-object v0, Lcom/datami/smi/f/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/f/b;->e:[B

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/b;->e:[B

    const/16 v3, 0x26

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/b;->e:[B

    const/16 v4, 0x23

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/smi/f/b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24

    sget-object v2, Lcom/datami/smi/f/b;->e:[B

    const/16 v3, 0x1a

    aget-byte v2, v2, v3

    neg-int v2, v2

    or-int/lit8 v3, v2, 0x55

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/datami/smi/f/b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lcom/datami/smi/f/b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/f/b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v0, Lcom/datami/smi/f/c;->a:Lcom/datami/smi/f/c;

    iput-object v0, p0, Lcom/datami/smi/f/b;->c:Lcom/datami/smi/f/c;

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/datami/smi/f/b;->c:Lcom/datami/smi/f/c;

    sget-object v1, Lcom/datami/smi/f/c;->a:Lcom/datami/smi/f/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
