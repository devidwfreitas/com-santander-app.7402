.class public Lnaf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static p:Ljavax/crypto/spec/IvParameterSpec;


# instance fields
.field public a:Ljava/security/KeyPairGenerator;

.field public b:Ljava/security/KeyPair;

.field public c:Ljava/security/PublicKey;

.field public d:Ljava/security/PrivateKey;

.field public e:[B

.field public f:[B

.field public g:Ljavax/crypto/Cipher;

.field public h:Ljavax/crypto/Cipher;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field private n:Lmiq;

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 120
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 121
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v1, Lnaf;->p:Ljavax/crypto/spec/IvParameterSpec;

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, "AES/CBC/PKCS5Padding"

    iput-object v0, p0, Lnaf;->o:Ljava/lang/String;

    .line 43
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lnaf;->n:Lmiq;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 51
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public a([BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-static {p2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 99
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 100
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 102
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 103
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 85
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iput-object v0, p0, Lnaf;->a:Ljava/security/KeyPairGenerator;

    .line 86
    iget-object v0, p0, Lnaf;->a:Ljava/security/KeyPairGenerator;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 87
    iget-object v0, p0, Lnaf;->a:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lnaf;->b:Ljava/security/KeyPair;

    .line 88
    iget-object v0, p0, Lnaf;->b:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lnaf;->c:Ljava/security/PublicKey;

    .line 89
    iget-object v0, p0, Lnaf;->b:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lnaf;->d:Ljava/security/PrivateKey;

    .line 91
    iget-object v0, p0, Lnaf;->d:Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnaf;->c:Ljava/security/PublicKey;

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lnaf;->k:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnaf;->d:Ljava/security/PrivateKey;

    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lnaf;->l:Ljava/lang/String;

    .line 95
    :cond_0
    return-void
.end method

.method public b([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lnaf;->n:Lmiq;

    invoke-virtual {v0}, Lmiq;->h()[B

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 130
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 131
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 132
    const/4 v2, 0x1

    sget-object v3, Lnaf;->p:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 133
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 134
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 107
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 108
    const/4 v1, 0x2

    iget-object v2, p0, Lnaf;->d:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 109
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 110
    return-object v0
.end method

.method public c([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lnaf;->n:Lmiq;

    invoke-virtual {v0}, Lmiq;->h()[B

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 144
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 145
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 146
    const/4 v2, 0x2

    sget-object v3, Lnaf;->p:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 147
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 148
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
