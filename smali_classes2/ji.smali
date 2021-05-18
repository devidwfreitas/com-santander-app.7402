.class public Lji;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lji; = null

.field private static final g:Ljava/lang/String; = "1.2"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/security/KeyPair;

.field private final d:Ljava/lang/String;

.field private final e:Ljavax/crypto/spec/IvParameterSpec;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "AES/CBC/PKCS5Padding"

    iput-object v0, p0, Lji;->d:Ljava/lang/String;

    .line 37
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v0, p0, Lji;->e:Ljavax/crypto/spec/IvParameterSpec;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lji;->b:Ljava/security/KeyPair;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lji;->f:Z

    return-void

    .line 37
    :array_0
    .array-data 1
        0xft
        0xet
        0xdt
        0xct
        0xbt
        0xat
        0x9t
        0x8t
        0x7t
        0x6t
        0x5t
        0x4t
        0x3t
        0x2t
        0x1t
        0x0t
    .end array-data
.end method

.method public static a()Lji;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lji;->c:Lji;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lji;

    invoke-direct {v0}, Lji;-><init>()V

    sput-object v0, Lji;->c:Lji;

    .line 48
    :cond_0
    sget-object v0, Lji;->c:Lji;

    return-object v0
.end method

.method private b(Z)[B
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lji;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Null derived Key"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    if-eqz p1, :cond_1

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lji;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    invoke-static {v0}, Lka;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 267
    return-object v0

    .line 265
    :cond_1
    iget-object v0, p0, Lji;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 248
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 250
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 251
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 253
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lji;->f:Z

    if-nez v0, :cond_0

    .line 60
    iput-object p1, p0, Lji;->a:Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 238
    iput-boolean p1, p0, Lji;->f:Z

    .line 239
    if-nez p1, :cond_0

    .line 241
    iput-object v0, p0, Lji;->a:Ljava/lang/String;

    .line 242
    iput-object v0, p0, Lji;->b:Ljava/security/KeyPair;

    .line 244
    :cond_0
    return-void
.end method

.method public a([B)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0}, Lji;->b(Z)[B

    move-result-object v2

    .line 119
    array-length v1, v2

    new-array v1, v1, [B

    .line 120
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 122
    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lji;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    const-string v1, "AES"

    invoke-direct {v3, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 125
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 126
    const/4 v1, 0x2

    iget-object v2, p0, Lji;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 127
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 128
    return-object v0

    :cond_1
    move-object v0, v2

    .line 124
    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lji;->f:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lji;->a:Ljava/lang/String;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-static {p1}, Lka;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 83
    const-string v1, "DH"

    invoke-static {v1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lji;->b:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 87
    const-string v2, "DH"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 88
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 89
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 92
    invoke-virtual {v1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v0

    .line 93
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 94
    array-length v2, v1

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 96
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lkb;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lji;->a:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public b([B)[B
    .locals 4

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lji;->b(Z)[B

    move-result-object v0

    .line 134
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 135
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 136
    const/4 v2, 0x2

    iget-object v3, p0, Lji;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 137
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 138
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    const/16 v0, 0x400

    .line 66
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 67
    invoke-static {v0, v1}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v2

    .line 68
    invoke-static {v0, v1}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    .line 70
    const-string v1, "DH"

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 71
    new-instance v3, Ljavax/crypto/spec/DHParameterSpec;

    invoke-direct {v3, v2, v0}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 72
    invoke-virtual {v1, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 73
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lji;->b:Ljava/security/KeyPair;

    .line 74
    iget-object v0, p0, Lji;->b:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 75
    invoke-static {v0}, Lkb;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Lji;->b(Z)[B

    move-result-object v2

    .line 102
    array-length v1, v2

    new-array v1, v1, [B

    .line 103
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 105
    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lji;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    const-string v1, "AES"

    invoke-direct {v3, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 108
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 109
    const/4 v1, 0x2

    iget-object v2, p0, Lji;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 110
    invoke-static {p1}, Ljy;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 112
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 113
    return-object v1

    :cond_1
    move-object v0, v2

    .line 107
    goto :goto_1
.end method

.method public c([B)[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 155
    invoke-direct {p0, v3}, Lji;->b(Z)[B

    move-result-object v0

    .line 156
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 157
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 158
    iget-object v2, p0, Lji;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 159
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 160
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string v0, "1.2"

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lji;->b(Z)[B

    move-result-object v0

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

    iget-object v3, p0, Lji;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 147
    invoke-static {p1}, Ljy;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 149
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 150
    return-object v1
.end method

.method public d([B)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0}, Lji;->b(Z)[B

    move-result-object v1

    .line 195
    array-length v2, v1

    new-array v2, v2, [B

    .line 196
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 198
    aget-byte v3, v1, v0

    xor-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lji;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    const-string v1, "AES"

    invoke-direct {v3, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 202
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 203
    const/4 v1, 0x1

    iget-object v2, p0, Lji;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 204
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 205
    return-object v0

    :cond_1
    move-object v0, v2

    .line 201
    goto :goto_1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 165
    invoke-direct {p0, v3}, Lji;->b(Z)[B

    move-result-object v0

    .line 166
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 167
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 168
    iget-object v2, p0, Lji;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 170
    invoke-static {v0}, Ljz;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lji;->f:Z

    return v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, v0}, Lji;->b(Z)[B

    move-result-object v1

    .line 177
    array-length v2, v1

    new-array v2, v2, [B

    .line 178
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 180
    aget-byte v3, v1, v0

    xor-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lji;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    const-string v1, "AES"

    invoke-direct {v3, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 184
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 185
    const/4 v1, 0x1

    iget-object v2, p0, Lji;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 187
    invoke-static {v0}, Ljz;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 188
    return-object v0

    :cond_1
    move-object v0, v2

    .line 183
    goto :goto_1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lji;->h(Ljava/lang/String;)[B

    move-result-object v0

    .line 211
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lji;->b(Z)[B

    move-result-object v1

    .line 212
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 213
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 214
    const/4 v3, 0x1

    iget-object v4, p0, Lji;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 215
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 216
    invoke-static {v0}, Ljz;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 217
    return-object v0
.end method
