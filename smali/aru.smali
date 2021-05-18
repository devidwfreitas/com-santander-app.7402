.class public abstract Laru;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AES"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I[B)[B
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Laru;->a(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Laru;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Laru;->b()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v2

    invoke-virtual {v1, p2, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    invoke-virtual {v1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 51
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Laru;->a(Ljava/lang/String;I[B)[B

    move-result-object v0

    return-object v0
.end method

.method abstract b()Ljavax/crypto/spec/IvParameterSpec;
.end method

.method public b(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Laru;->a(Ljava/lang/String;I[B)[B

    move-result-object v0

    return-object v0
.end method
