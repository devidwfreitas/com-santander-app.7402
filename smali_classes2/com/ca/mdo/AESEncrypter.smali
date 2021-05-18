.class Lcom/ca/mdo/AESEncrypter;
.super Ljava/lang/Object;
.source "AESEncrypter.java"

# interfaces
.implements Lcom/ca/mdo/Encrypter;


# static fields
.field private static final CIPHER_ALGO:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final INITIAL_VECTOR_SEED:Ljava/lang/String; = "Mobility#M@@15$1"

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final PKCS5_PADDING_BYTES:I = 0x8

.field private static final SYMMETRIC_KEY_SIZE:I = 0x100

.field private static _instance:Lcom/ca/mdo/AESEncrypter;


# instance fields
.field private iv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/ca/mdo/AESEncrypter;->_instance:Lcom/ca/mdo/AESEncrypter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/ca/mdo/AESEncrypter;->init()V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/ca/mdo/AESEncrypter;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/ca/mdo/AESEncrypter;->_instance:Lcom/ca/mdo/AESEncrypter;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/ca/mdo/AESEncrypter;

    invoke-direct {v0}, Lcom/ca/mdo/AESEncrypter;-><init>()V

    sput-object v0, Lcom/ca/mdo/AESEncrypter;->_instance:Lcom/ca/mdo/AESEncrypter;

    .line 91
    :cond_0
    sget-object v0, Lcom/ca/mdo/AESEncrypter;->_instance:Lcom/ca/mdo/AESEncrypter;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    const-string v1, "Mobility#M@@15$1"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mdo/AESEncrypter;->iv:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while init IV :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public encryptData([BLjava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "base64Bytes"    # [B
    .param p2, "key"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    move-object v2, p2

    check-cast v2, Ljavax/crypto/SecretKey;

    .line 60
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 61
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v5, p0, Lcom/ca/mdo/AESEncrypter;->iv:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 62
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 63
    .local v1, "encryptedBytes":[B
    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public generateSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 5

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 72
    .local v1, "keyGen":Ljavax/crypto/KeyGenerator;
    const/16 v3, 0x100

    invoke-virtual {v1, v3}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 73
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 78
    .end local v1    # "keyGen":Ljavax/crypto/KeyGenerator;
    :goto_0
    return-object v2

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while AES "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPaddingBytes()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x8

    return v0
.end method
