.class public Ldk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private b:Ljava/security/KeyPair;

.field private c:Ljava/lang/String;

.field private d:Ljava/security/KeyStore;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Ldk;->c:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Ldk;->e:Landroid/content/Context;

    .line 97
    :try_start_0
    invoke-static {}, Ldx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Ldk;->a:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    invoke-static {}, Ldx;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Ldk;->d:Ljava/security/KeyStore;

    .line 107
    iget-object v0, p0, Ldk;->d:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 109
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Ldk;->b:Ljava/security/KeyPair;

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Ldk;->d:Ljava/security/KeyStore;

    .line 185
    iget-object v1, p0, Ldk;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 187
    new-instance v1, Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v1, p0, Ldk;->b:Ljava/security/KeyPair;

    .line 191
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 116
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 117
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 118
    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 122
    :try_start_0
    new-instance v2, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v3, p0, Ldk;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    iget-object v3, p0, Ldk;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v2

    .line 124
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CN="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ldk;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v2

    .line 125
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v2

    .line 126
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v0

    .line 130
    const-string v1, "RSA"

    invoke-static {}, Ldx;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 132
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Ldk;->b:Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a([B)[B
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Ldk;->a()V

    .line 145
    invoke-direct {p0}, Ldk;->b()V

    .line 147
    iget-object v0, p0, Ldk;->a:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Ldk;->b:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 149
    iget-object v0, p0, Ldk;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 153
    invoke-static {v0}, Laz;->a([B)[B

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([B)[B
    .locals 3

    .prologue
    .line 163
    invoke-direct {p0}, Ldk;->b()V

    .line 165
    iget-object v0, p0, Ldk;->a:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    iget-object v2, p0, Ldk;->b:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 167
    if-eqz p1, :cond_0

    .line 169
    invoke-static {p1}, Laz;->b([B)[B

    move-result-object p1

    .line 173
    :cond_0
    iget-object v0, p0, Ldk;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
