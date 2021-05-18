.class Lcom/ca/mdo/MDOSSLSocketFactory$1;
.super Ljava/lang/Object;
.source "MDOSSLSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mdo/MDOSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ca/mdo/MDOSSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/ca/mdo/MDOSSLSocketFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ca/mdo/MDOSSLSocketFactory;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ca/mdo/MDOSSLSocketFactory$1;->this$0:Lcom/ca/mdo/MDOSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 36
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 13
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 40
    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getCert()[B

    move-result-object v11

    if-eqz v11, :cond_c

    .line 43
    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getmSSLPinningMode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "certificate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 45
    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getCert()[B

    move-result-object v11

    invoke-static {v11}, Lcom/ca/mdo/MDOSSLSocketFactory;->createCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 47
    .local v2, "pinningCert":Ljava/security/cert/X509Certificate;
    const/4 v7, 0x0

    .line 48
    .local v7, "sawCert":Z
    array-length v11, p1

    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v0, p1, v10

    .line 50
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2, v0}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 51
    const/4 v7, 0x1

    .line 56
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    if-nez v7, :cond_d

    .line 57
    new-instance v10, Ljava/security/cert/CertificateException;

    const-string v11, "Server certificate chain did not contain the pinned certificate"

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 48
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "pinningCert":Ljava/security/cert/X509Certificate;
    .end local v7    # "sawCert":Z
    :cond_2
    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getmSSLPinningMode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "pk"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 60
    const/4 v8, 0x0

    .line 61
    .local v8, "sawPin":Z
    array-length v11, p1

    :goto_1
    if-ge v10, v11, :cond_3

    aget-object v0, p1, v10

    .line 62
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 63
    .local v3, "pk":Ljava/security/PublicKey;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 65
    .local v4, "pkBytes":[B
    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getCert()[B

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 66
    const/4 v8, 0x1

    .line 71
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "pk":Ljava/security/PublicKey;
    .end local v4    # "pkBytes":[B
    :cond_3
    if-nez v8, :cond_d

    .line 72
    new-instance v10, Ljava/security/cert/CertificateException;

    const-string v11, "Server certificate chain did not contain the pinned public key"

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 61
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "pk":Ljava/security/PublicKey;
    .restart local v4    # "pkBytes":[B
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 75
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "pk":Ljava/security/PublicKey;
    .end local v4    # "pkBytes":[B
    .end local v8    # "sawPin":Z
    :cond_5
    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getmSSLPinningMode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "hash"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 76
    const/4 v8, 0x0

    .line 78
    .restart local v8    # "sawPin":Z
    new-instance v6, Ljava/lang/String;

    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getCert()[B

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>([B)V

    .line 79
    .local v6, "pkHashStr":Ljava/lang/String;
    array-length v11, p1

    :goto_2
    if-ge v10, v11, :cond_6

    aget-object v0, p1, v10

    .line 80
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 81
    .restart local v3    # "pk":Ljava/security/PublicKey;
    invoke-static {v3}, Lcom/ca/mdo/MDOPublicKeyHash;->toHash(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "pkHash":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 85
    const/4 v8, 0x1

    .line 90
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "pk":Ljava/security/PublicKey;
    .end local v5    # "pkHash":Ljava/lang/String;
    :cond_6
    if-nez v8, :cond_d

    .line 91
    new-instance v10, Ljava/security/cert/CertificateException;

    const-string v11, "Server certificate chain did not contain the pinned public key HASH"

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 79
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "pk":Ljava/security/PublicKey;
    .restart local v5    # "pkHash":Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 93
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "pk":Ljava/security/PublicKey;
    .end local v5    # "pkHash":Ljava/lang/String;
    .end local v6    # "pkHashStr":Ljava/lang/String;
    .end local v8    # "sawPin":Z
    :cond_8
    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getmSSLPinningMode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "sha1signature"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 94
    const/4 v8, 0x0

    .line 96
    .restart local v8    # "sawPin":Z
    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getCert()[B

    move-result-object v1

    .line 97
    .local v1, "pinnedSignature":[B
    array-length v11, p1

    :goto_3
    if-ge v10, v11, :cond_9

    aget-object v0, p1, v10

    .line 98
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v9

    .line 99
    .local v9, "signature":[B
    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 101
    const/4 v8, 0x1

    .line 106
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v9    # "signature":[B
    :cond_9
    if-nez v8, :cond_d

    .line 107
    new-instance v10, Ljava/security/cert/CertificateException;

    const-string v11, "Server certificate chain did not contain matching signature"

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 97
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v9    # "signature":[B
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 111
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "pinnedSignature":[B
    .end local v8    # "sawPin":Z
    .end local v9    # "signature":[B
    :cond_b
    new-instance v10, Ljava/security/cert/CertificateException;

    const-string v11, "No proper Mode is set"

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 116
    :cond_c
    new-instance v10, Ljava/security/cert/CertificateException;

    const-string v11, "No data for pinning is found"

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 119
    :cond_d
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method
