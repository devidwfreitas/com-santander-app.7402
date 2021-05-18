.class public Lart;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lart;

.field private static b:Ljavax/crypto/Cipher;

.field private static c:Ljavax/crypto/KeyGenerator;

.field private static d:Ljava/lang/String;

.field private static e:Ljavax/crypto/SecretKey;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 367
    const-string v0, ""

    sput-object v0, Lart;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/16 v0, 0x10

    iput v0, p0, Lart;->f:I

    .line 362
    return-void
.end method

.method public static a(Ljava/lang/String;)Lart;
    .locals 3

    .prologue
    .line 372
    sget-object v0, Lart;->a:Lart;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lart;

    invoke-direct {v0}, Lart;-><init>()V

    sput-object v0, Lart;->a:Lart;

    .line 376
    :cond_0
    sget-object v0, Lart;->b:Ljavax/crypto/Cipher;

    if-nez v0, :cond_1

    .line 378
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sput-object v0, Lart;->b:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 388
    :cond_1
    :goto_0
    sget-object v0, Lart;->c:Ljavax/crypto/KeyGenerator;

    if-nez v0, :cond_2

    .line 391
    :try_start_1
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    sput-object v0, Lart;->c:Ljavax/crypto/KeyGenerator;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 401
    :cond_2
    :goto_1
    sget-object v0, Lart;->e:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 402
    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Empty key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    const-string v1, "[ChatSecurity]"

    const-string v2, "Cipher getInstance AES_CBC_PKSC5 NoSuchAlgorithmException"

    .line 381
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    .line 383
    const-string v1, "[ChatSecurity]"

    const-string v2, "Cipher getInstance AES_CBC_PKSC5 NoSuchPaddingException"

    .line 384
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    :catch_2
    move-exception v0

    .line 393
    const-string v1, "[ChatSecurity]"

    const-string v2, "KeyGenerator getInstance AES_FLEXICORE NoSuchAlgorithmException "

    .line 394
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 405
    :cond_4
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 406
    sget-object v0, Lart;->e:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_5

    sget-object v0, Lart;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 407
    :cond_5
    invoke-static {p0}, Lart;->b(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    sput-object v0, Lart;->e:Ljavax/crypto/SecretKey;

    .line 411
    :cond_6
    sget-object v0, Lart;->a:Lart;

    return-object v0
.end method

.method public static a()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 434
    sget-object v0, Lart;->c:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljavax/crypto/SecretKey;)V
    .locals 0

    .prologue
    .line 443
    sput-object p0, Lart;->e:Ljavax/crypto/SecretKey;

    .line 444
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 5

    .prologue
    .line 421
    if-eqz p0, :cond_0

    .line 422
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 423
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x0

    array-length v3, v1

    const-string v4, "AES"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 425
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b()Ljavax/crypto/Cipher;
    .locals 4

    .prologue
    .line 455
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 456
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 457
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 458
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 460
    sget-object v1, Lart;->b:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    sget-object v3, Lart;->e:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    :goto_0
    sget-object v0, Lart;->b:Ljavax/crypto/Cipher;

    return-object v0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    const-string v1, "[ChatSecurity]"

    const-string v2, "Cipher getEncryptCipher InvalidKeyException"

    .line 464
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :catch_1
    move-exception v0

    .line 466
    const-string v1, "[ChatSecurity]"

    const-string v2, "Cipher getEncryptCipher InvalidAlgorithmParameterException"

    .line 467
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c()Ljavax/crypto/Cipher;
    .locals 3

    .prologue
    .line 479
    :try_start_0
    sget-object v0, Lart;->b:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    sget-object v2, Lart;->e:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    sget-object v0, Lart;->b:Ljavax/crypto/Cipher;

    return-object v0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    const-string v1, "[ChatSecurity]"

    const-string v2, "Cipher getDecryptCipher InvalidKeyException"

    .line 482
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
