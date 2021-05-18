.class public final Lcom/datami/smi/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final b:[B

.field private static c:I


# instance fields
.field private a:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/g/b;->b:[B

    const/16 v0, 0xb7

    sput v0, Lcom/datami/smi/g/b;->c:I

    return-void

    :array_0
    .array-data 1
        0x1dt
        -0x1ft
        0x16t
        -0x75t
        -0x1t
        0x4ft
        -0x54t
        0x2t
        -0x3t
        0x2t
        -0x1t
        0x54t
        -0x4dt
        0xct
        -0xdt
        0xdt
        -0x6t
        0x2t
        -0xdt
        0x52t
        -0x46t
        -0x9t
        -0x6t
        0x7t
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/datami/smi/g/b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    sget-object v1, Lcom/datami/smi/g/b;->b:[B

    const/4 v2, 0x4

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v1, v1}, Lcom/datami/smi/g/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    iput-object v0, p0, Lcom/datami/smi/g/b;->a:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    mul-int/lit8 v0, p0, 0x4

    rsub-int/lit8 v0, v0, 0x3

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/datami/smi/g/b;->b:[B

    const/4 v3, -0x1

    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v4, v1, 0x6e

    mul-int/lit8 v1, p1, 0x3

    rsub-int/lit8 v1, v1, 0x16

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v7, :cond_1

    move v4, v3

    move v5, v0

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v2, v0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    int-to-byte v0, v2

    aput-byte v0, v3, v4

    if-ne v4, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {v6, v3, v0}, Ljava/lang/String;-><init>([BI)V

    return-object v6

    :cond_0
    aget-byte v0, v7, v5

    goto :goto_0

    :cond_1
    move v5, v0

    move v8, v3

    move-object v3, v2

    move v2, v4

    move v4, v8

    goto :goto_1
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/g/b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    :cond_0
    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/g/b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
