.class public Lcom/datami/smi/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field private static final b:[B

.field private static c:I


# instance fields
.field private a:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/g/a;->b:[B

    const/16 v0, 0x3f

    sput v0, Lcom/datami/smi/g/a;->c:I

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x58t
        0x14t
        0x43t
        -0x8t
        0x7t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/datami/smi/g/a;->a:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method private static a()Ljavax/net/ssl/SSLContext;
    .locals 8

    const/16 v0, 0x54

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_0
    sget-object v6, Lcom/datami/smi/g/a;->b:[B

    new-instance v7, Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [B

    if-nez v6, :cond_1

    move v5, v4

    move v4, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v1, v0

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_0

    const/4 v0, 0x0

    invoke-direct {v7, v3, v0}, Ljava/lang/String;-><init>([BI)V

    invoke-static {v7}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/datami/smi/g/b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/datami/smi/g/b;-><init>(Ljava/security/KeyStore;)V

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v0

    :cond_0
    aget-byte v0, v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v5, v4

    move v4, v3

    move-object v3, v1

    move v1, v0

    goto :goto_1
.end method

.method private b()Ljavax/net/ssl/SSLContext;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/g/a;->a:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/g/a;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/g/a;->a:Ljavax/net/ssl/SSLContext;

    :cond_0
    iget-object v0, p0, Lcom/datami/smi/g/a;->a:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 10

    const/16 v1, 0x54

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v3, 0x4

    sget-object v7, Lcom/datami/smi/g/a;->b:[B

    new-instance v8, Ljava/lang/String;

    new-array v0, v6, [B

    if-nez v7, :cond_1

    move v5, v6

    move v4, v3

    move v3, v1

    move v1, v2

    :goto_0
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v5

    :goto_1
    int-to-byte v5, v3

    aput-byte v5, v0, v1

    add-int/lit8 v5, v1, 0x1

    if-ne v5, v6, :cond_0

    invoke-direct {v8, v0, v2}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    aget-byte v1, v7, v4

    move v9, v1

    move v1, v5

    move v5, v3

    move v3, v9

    goto :goto_0

    :cond_1
    move v4, v3

    move v3, v1

    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 5

    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    if-eqz p1, :cond_3

    move-object v0, p1

    :goto_0
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    if-nez p4, :cond_0

    if-lez p5, :cond_2

    :cond_0
    if-gez p5, :cond_1

    const/4 p5, 0x0

    :cond_1
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    :cond_2
    invoke-virtual {v0, v3, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/datami/smi/g/a;->createSocket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/g/a;->a:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/g/a;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/g/a;->a:Ljavax/net/ssl/SSLContext;

    :cond_0
    iget-object v0, p0, Lcom/datami/smi/g/a;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/g/a;->a:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/g/a;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/g/a;->a:Ljavax/net/ssl/SSLContext;

    :cond_0
    iget-object v0, p0, Lcom/datami/smi/g/a;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/datami/smi/g/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const-class v0, Lcom/datami/smi/g/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
