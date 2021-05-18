.class Lcom/ca/mdo/RSAEncrypter;
.super Ljava/lang/Object;
.source "RSAEncrypter.java"

# interfaces
.implements Lcom/ca/mdo/Encrypter;


# static fields
.field private static final CIPHER_ALGO:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final PKCS1_PADDING_BYTES:I = 0xb

.field private static _instance:Lcom/ca/mdo/RSAEncrypter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ca/mdo/RSAEncrypter;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/ca/mdo/RSAEncrypter;->_instance:Lcom/ca/mdo/RSAEncrypter;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/ca/mdo/RSAEncrypter;

    invoke-direct {v0}, Lcom/ca/mdo/RSAEncrypter;-><init>()V

    sput-object v0, Lcom/ca/mdo/RSAEncrypter;->_instance:Lcom/ca/mdo/RSAEncrypter;

    .line 69
    :cond_0
    sget-object v0, Lcom/ca/mdo/RSAEncrypter;->_instance:Lcom/ca/mdo/RSAEncrypter;

    return-object v0
.end method

.method private getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 6
    .param p1, "publicK"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 34
    const-string v4, "utf-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 35
    .local v1, "keyBytes":[B
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 36
    .local v3, "spec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 37
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 38
    .local v0, "key":Ljava/security/PublicKey;
    return-object v0
.end method


# virtual methods
.method public encryptData([BLjava/lang/Object;)Ljava/lang/String;
    .locals 5
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
    .line 52
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 53
    .local v2, "pubkey":Ljava/lang/String;
    const-string v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 54
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-direct {p0, v2}, Lcom/ca/mdo/RSAEncrypter;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 55
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 56
    .local v1, "encryptedBytes":[B
    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getPaddingBytes()I
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0xb

    return v0
.end method
