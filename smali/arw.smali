.class public Larw;
.super Laru;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "[FileCryptor]"

.field private static final b:Ljava/lang/String; = "AES"

.field private static final c:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Laru;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I[B)[B
    .locals 5

    .prologue
    const/16 v3, 0x10

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Larw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 67
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 69
    invoke-virtual {p0, p1}, Larw;->a(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-virtual {p0}, Larw;->b()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v3

    invoke-virtual {v2, p2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 70
    invoke-virtual {p0}, Larw;->b()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    .line 72
    array-length v1, v3

    array-length v4, p3

    add-int/2addr v1, v4

    new-array v4, v1, [B

    .line 74
    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_1

    .line 75
    array-length v1, v3

    if-ge v0, v1, :cond_0

    aget-byte v1, v3, v0

    :goto_1
    aput-byte v1, v4, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    array-length v1, v3

    sub-int v1, v0, v1

    aget-byte v1, p3, v1

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v2, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 86
    :goto_2
    return-object v0

    .line 82
    :cond_2
    invoke-static {p3, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 84
    invoke-virtual {p0, p1}, Larw;->a(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-virtual {p0, v0}, Larw;->a([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v0

    invoke-virtual {v2, p2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 86
    array-length v0, p3

    invoke-static {p3, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "AES/CBC/PKCS5Padding"

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 94
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method a([B)Ljavax/crypto/spec/IvParameterSpec;
    .locals 3

    .prologue
    .line 45
    const-string v0, "[FileCryptor]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log - IvParameterSpec - bytes.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0
.end method

.method public a(Ljava/lang/String;[B)[B
    .locals 3

    .prologue
    .line 52
    const-string v0, "[FileCryptor]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log - decrypt - value.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Larw;->a(Ljava/lang/String;I[B)[B

    move-result-object v0

    return-object v0
.end method

.method b()Ljavax/crypto/spec/IvParameterSpec;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 39
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 40
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 41
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0
.end method

.method public b(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Larw;->a(Ljava/lang/String;I[B)[B

    move-result-object v0

    return-object v0
.end method
