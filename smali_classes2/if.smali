.class public Lif;
.super Liz;
.source "SourceFile"


# instance fields
.field private a:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Liz;-><init>()V

    return-void
.end method

.method private b(Ljava/net/HttpURLConnection;)V
    .locals 4

    .prologue
    .line 79
    sget-object v0, Lii;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 81
    :try_start_0
    iget-object v0, p0, Lif;->a:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/io/BufferedInputStream;

    sget-object v2, Lii;->b:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 85
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 87
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 89
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 90
    const-string v2, "ca"

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 92
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 96
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lif;->a:Ljavax/net/ssl/SSLContext;

    .line 97
    iget-object v1, p0, Lif;->a:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 101
    :cond_0
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 102
    iget-object v0, p0, Lif;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lir;)Lis;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1}, Lir;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lif;->a(Ljava/lang/Boolean;)V

    .line 36
    const/4 v3, 0x0

    .line 37
    new-instance v2, Ljava/net/URL;

    sget-object v0, Lii;->a:Ljava/net/URL;

    invoke-virtual {p1}, Lir;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 40
    :try_start_0
    invoke-static {v2}, Lcom/ca/android/app/CaMDOHTTPClient;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    invoke-virtual {p0, p1, v2, v0}, Lif;->a(Liq;Ljava/net/URL;Ljava/net/HttpURLConnection;)V

    .line 44
    invoke-virtual {p0, p1, v0}, Lif;->c(Liq;Ljava/net/HttpURLConnection;)V

    .line 46
    invoke-virtual {p0, p1, v0}, Lif;->a(Liq;Ljava/net/HttpURLConnection;)V

    .line 48
    invoke-static {}, Lit;->a()Lit;

    move-result-object v2

    invoke-virtual {v2}, Lit;->b()Ljava/lang/String;

    move-result-object v2

    .line 49
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lir;->g()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bearer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-direct {p0, v0}, Lif;->b(Ljava/net/HttpURLConnection;)V

    .line 55
    invoke-virtual {p0, p1, v0}, Lif;->d(Liq;Ljava/net/HttpURLConnection;)V

    .line 61
    invoke-virtual {p0, v0}, Lif;->a(Ljava/net/HttpURLConnection;)Lis;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 67
    :goto_1
    :try_start_2
    invoke-virtual {p0, v3, v2, v0}, Lif;->a(Lis;Ljava/net/HttpURLConnection;Ljava/lang/Exception;)Lis;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 66
    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1
.end method
