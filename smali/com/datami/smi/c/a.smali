.class public final Lcom/datami/smi/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "AES"

.field private static final b:Ljava/lang/String; = "Crypto"

.field private static final d:[B

.field private static e:I


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/a;->d:[B

    const/16 v0, 0xf3

    sput v0, Lcom/datami/smi/c/a;->e:I

    return-void

    :array_0
    .array-data 1
        0x59t
        -0x1bt
        0x2at
        0x15t
        -0x28t
        0x0t
        0x10t
        0x3t
        0xct
        0x15t
        -0x2t
        0xet
        0x5t
        0x1bt
        -0x1et
        -0xbt
        -0x4t
        0x13t
        0x27t
        -0x1et
        0x13t
        0x5t
        0x17t
        0x12t
        0xet
        0x17t
        0x3t
        -0x7t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/datami/smi/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    sget-object v6, Lcom/datami/smi/c/a;->d:[B

    new-instance v7, Ljava/lang/String;

    rsub-int/lit8 v0, p1, 0x50

    mul-int/lit8 v1, p0, 0x3

    rsub-int/lit8 v3, v1, 0x12

    rsub-int/lit8 v1, p2, 0x19

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v6, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x7

    :goto_1
    add-int/lit8 v5, v5, 0x1

    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v1

    move v1, v0

    goto :goto_1
.end method

.method private a()Ljavax/crypto/SecretKey;
    .locals 6

    sget-object v0, Lcom/datami/smi/c/a;->d:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0x11

    invoke-static {v0, v0, v1}, Lcom/datami/smi/c/a;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v2, p0, Lcom/datami/smi/c/a;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/datami/smi/c/a;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0x14

    const/16 v5, 0x100

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/datami/smi/c/a;->d:[B

    const/16 v1, 0xc

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0xa

    sget-object v2, Lcom/datami/smi/c/a;->d:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/a;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-direct {p0}, Lcom/datami/smi/c/a;->a()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/datami/smi/c/a;->d:[B

    const/16 v1, 0xc

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0xa

    sget-object v2, Lcom/datami/smi/c/a;->d:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/a;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-direct {p0}, Lcom/datami/smi/c/a;->a()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
