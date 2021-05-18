.class public Lcom/ca/mdo/MDOPublicKeyHash;
.super Ljava/lang/Object;
.source "MDOPublicKeyHash.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SHA256_HEX_PATTERN:Ljava/util/regex/Pattern;

.field private static final hexadecimal:[C

.field private static final hexadecimal_upper:[C


# instance fields
.field private final hash:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 16
    const-string v0, "[a-f0-9]{64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/MDOPublicKeyHash;->SHA256_HEX_PATTERN:Ljava/util/regex/Pattern;

    .line 161
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ca/mdo/MDOPublicKeyHash;->hexadecimal:[C

    .line 162
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ca/mdo/MDOPublicKeyHash;->hexadecimal_upper:[C

    return-void

    .line 161
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 162
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ca/mdo/MDOPublicKeyHash;->hash:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static fromHashString(Ljava/lang/String;)Lcom/ca/mdo/MDOPublicKeyHash;
    .locals 3
    .param p0, "hashString"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "hash":Ljava/lang/String;
    sget-object v1, Lcom/ca/mdo/MDOPublicKeyHash;->SHA256_HEX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid key hash string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    new-instance v1, Lcom/ca/mdo/MDOPublicKeyHash;

    invoke-direct {v1, v0}, Lcom/ca/mdo/MDOPublicKeyHash;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static fromPublicKey(Ljava/security/PublicKey;)Lcom/ca/mdo/MDOPublicKeyHash;
    .locals 2
    .param p0, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 31
    new-instance v0, Lcom/ca/mdo/MDOPublicKeyHash;

    invoke-static {p0}, Lcom/ca/mdo/MDOPublicKeyHash;->toHash(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ca/mdo/MDOPublicKeyHash;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static hexDump([BIIZ)Ljava/lang/String;
    .locals 7
    .param p0, "binaryData"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "upperCase"    # Z

    .prologue
    .line 148
    if-eqz p3, :cond_0

    sget-object v1, Lcom/ca/mdo/MDOPublicKeyHash;->hexadecimal_upper:[C

    .line 149
    .local v1, "hex":[C
    :goto_0
    if-nez p0, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 148
    .end local v1    # "hex":[C
    :cond_0
    sget-object v1, Lcom/ca/mdo/MDOPublicKeyHash;->hexadecimal:[C

    goto :goto_0

    .line 150
    .restart local v1    # "hex":[C
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    add-int v5, p1, p2

    array-length v6, p0

    if-le v5, v6, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 151
    :cond_3
    mul-int/lit8 v5, p2, 0x2

    new-array v0, v5, [C

    .line 152
    .local v0, "buffer":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p2, :cond_4

    .line 153
    add-int v5, p1, v3

    aget-byte v5, p0, v5

    and-int/lit8 v4, v5, 0xf

    .line 154
    .local v4, "low":I
    add-int v5, p1, v3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v2, v5, 0x4

    .line 155
    .local v2, "high":I
    mul-int/lit8 v5, v3, 0x2

    aget-char v6, v1, v2

    aput-char v6, v0, v5

    .line 156
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v6, v1, v4

    aput-char v6, v0, v5

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 158
    .end local v2    # "high":I
    .end local v4    # "low":I
    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method public static toHash(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 8
    .param p0, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 104
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 105
    .local v2, "encoded":[B
    if-eqz v2, :cond_0

    array-length v5, v2

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 106
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "public key cannot be encoded"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    :cond_1
    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "format":Ljava/lang/String;
    const-string v5, "X.509"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "x509"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 110
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "public key encoding format is not X.509"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 113
    :cond_2
    :try_start_0
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 114
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 115
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 116
    .local v0, "digest":[B
    const/4 v5, 0x0

    array-length v6, v0

    const/4 v7, 0x0

    invoke-static {v0, v5, v6, v7}, Lcom/ca/mdo/MDOPublicKeyHash;->hexDump([BIIZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 117
    .end local v0    # "digest":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static toHash(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/MDOPublicKeyHash;->toHash(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    if-ne p0, p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 128
    check-cast v0, Lcom/ca/mdo/MDOPublicKeyHash;

    .line 130
    .local v0, "that":Lcom/ca/mdo/MDOPublicKeyHash;
    iget-object v3, p0, Lcom/ca/mdo/MDOPublicKeyHash;->hash:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ca/mdo/MDOPublicKeyHash;->hash:Ljava/lang/String;

    iget-object v4, v0, Lcom/ca/mdo/MDOPublicKeyHash;->hash:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/ca/mdo/MDOPublicKeyHash;->hash:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ca/mdo/MDOPublicKeyHash;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ca/mdo/MDOPublicKeyHash;->hash:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ca/mdo/MDOPublicKeyHash;->hash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "otherHash"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ca/mdo/MDOPublicKeyHash;->hash:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ca/mdo/MDOPublicKeyHash;->hash:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/security/PublicKey;)Z
    .locals 1
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 65
    invoke-static {p1}, Lcom/ca/mdo/MDOPublicKeyHash;->toHash(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ca/mdo/MDOPublicKeyHash;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ca/mdo/MDOPublicKeyHash;->matches(Ljava/security/PublicKey;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PublicKeyHash{hash=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mdo/MDOPublicKeyHash;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
