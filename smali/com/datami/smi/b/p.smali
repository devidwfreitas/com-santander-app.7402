.class final Lcom/datami/smi/b/p;
.super Landroid/os/AsyncTask;


# static fields
.field private static final a:[B

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/p;->a:[B

    const/16 v0, 0xe7

    sput v0, Lcom/datami/smi/b/p;->b:I

    return-void

    :array_0
    .array-data 1
        0x65t
        0x18t
        -0x3at
        -0x77t
        0x7t
        0x4t
        0x1t
        -0x54t
        0x52t
        -0xdt
        0xet
        -0x4t
        -0x3t
        0xat
        -0x11t
        -0x45t
        0x46t
        -0x5t
        0x8t
        0x3t
        -0x7t
        -0x1t
        -0x44t
        0x46t
        0x9t
        0x3t
        -0x52t
        0x7t
        0x4t
        0x1t
        -0x54t
        0x52t
        -0xdt
        0xet
        -0x4t
        -0x3t
        0xat
        -0x11t
        -0x45t
        0x53t
        0x2t
        -0x12t
        0x0t
        0x2t
        0xet
        0x0t
        -0x39t
        -0x1at
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 8

    const/4 v3, -0x1

    mul-int/lit8 v0, p0, 0x2

    rsub-int/lit8 v4, v0, 0x18

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/datami/smi/b/p;->a:[B

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, v0, 0x68

    mul-int/lit8 v0, p1, 0x17

    rsub-int/lit8 v0, v0, 0x1a

    new-array v2, v4, [B

    add-int/lit8 v7, v4, -0x1

    if-nez v6, :cond_1

    move v4, v0

    :goto_0
    add-int/2addr v1, v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v7, :cond_0

    const/4 v0, 0x0

    invoke-direct {v5, v2, v0}, Ljava/lang/String;-><init>([BI)V

    return-object v5

    :cond_0
    aget-byte v0, v6, v4

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x6

    const/16 v7, 0x2a

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/b/m;->J:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/b/p;->a:[B

    const/4 v4, 0x6

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/b/p;->a:[B

    const/16 v5, 0x2a

    aget-byte v4, v4, v5

    invoke-static {v3, v4, v4}, Lcom/datami/smi/b/p;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/datami/smi/b/m;->J:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/b/p;->a:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/b/p;->a:[B

    aget-byte v2, v2, v8

    sget-object v3, Lcom/datami/smi/b/p;->a:[B

    aget-byte v3, v3, v7

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/p;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p0, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/datami/smi/b/p;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
