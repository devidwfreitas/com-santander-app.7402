.class public Lcom/ca/mdo/MDOSSLPinning;
.super Ljava/lang/Object;
.source "MDOSSLPinning.java"


# static fields
.field public static cert:[B

.field public static mSSLPinningMode:Ljava/lang/String;

.field private static ourInstance:Lcom/ca/mdo/MDOSSLPinning;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "none"

    sput-object v0, Lcom/ca/mdo/MDOSSLPinning;->mSSLPinningMode:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/ca/mdo/MDOSSLPinning;

    invoke-direct {v0}, Lcom/ca/mdo/MDOSSLPinning;-><init>()V

    sput-object v0, Lcom/ca/mdo/MDOSSLPinning;->ourInstance:Lcom/ca/mdo/MDOSSLPinning;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static getCert()[B
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/ca/mdo/MDOSSLPinning;->cert:[B

    return-object v0
.end method

.method public static getHTTPClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 46
    const/4 v5, 0x0

    .line 48
    .local v5, "trustStore":Ljava/security/KeyStore;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 49
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 51
    new-instance v4, Lcom/ca/mdo/MDOSSLSocketFactory;

    invoke-direct {v4, v5}, Lcom/ca/mdo/MDOSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 52
    .local v4, "sf":Lcom/ca/mdo/MDOSSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lcom/ca/mdo/MDOSSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 54
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 55
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 56
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 58
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 59
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v6, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 60
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    const/16 v9, 0x1bb

    invoke-direct {v6, v8, v4, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 62
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 64
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "sf":Lcom/ca/mdo/MDOSSLSocketFactory;
    :goto_0
    return-object v6

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in SSL Handshake with Pinning Mode"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/ca/mdo/MDOSSLPinning;->mSSLPinningMode:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 71
    goto :goto_0
.end method

.method public static getInstance()Lcom/ca/mdo/MDOSSLPinning;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/ca/mdo/MDOSSLPinning;->ourInstance:Lcom/ca/mdo/MDOSSLPinning;

    return-object v0
.end method

.method public static getmSSLPinningMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/ca/mdo/MDOSSLPinning;->mSSLPinningMode:Ljava/lang/String;

    return-object v0
.end method

.method public static setCert([B)V
    .locals 0
    .param p0, "cert"    # [B

    .prologue
    .line 40
    sput-object p0, Lcom/ca/mdo/MDOSSLPinning;->cert:[B

    .line 41
    return-void
.end method

.method public static setmSSLPinningMode(Ljava/lang/String;)V
    .locals 0
    .param p0, "mSSLPinningMode"    # Ljava/lang/String;

    .prologue
    .line 32
    sput-object p0, Lcom/ca/mdo/MDOSSLPinning;->mSSLPinningMode:Ljava/lang/String;

    .line 33
    return-void
.end method
