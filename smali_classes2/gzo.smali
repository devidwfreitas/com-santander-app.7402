.class public Lgzo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgzn;


# instance fields
.field protected final a:[B

.field protected final b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lgzo;->a:[B

    .line 23
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lgzo;->b:[B

    .line 39
    invoke-virtual {p0}, Lgzo;->a()V

    .line 40
    return-void

    .line 14
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private a(C)Z
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 126
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v3, v1

    .line 130
    :goto_0
    if-lez v3, :cond_0

    .line 131
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lgzo;->a(C)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v2, v0

    .line 139
    :goto_1
    if-ge v0, v3, :cond_4

    move v1, v0

    .line 140
    :goto_2
    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lgzo;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 135
    :cond_1
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    .line 144
    :cond_2
    iget-object v4, p0, Lgzo;->b:[B

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v4, v4, v1

    .line 146
    :goto_3
    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lgzo;->a(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 150
    :cond_3
    iget-object v5, p0, Lgzo;->b:[B

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v5, v0

    .line 152
    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 154
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_1

    .line 157
    :cond_4
    return v2
.end method

.method public a([BIILjava/io/OutputStream;)I
    .locals 4

    .prologue
    .line 53
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 54
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 56
    iget-object v2, p0, Lgzo;->a:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 57
    iget-object v2, p0, Lgzo;->a:[B

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v2, v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    mul-int/lit8 v0, p3, 0x2

    return v0
.end method

.method protected a()V
    .locals 4

    .prologue
    .line 26
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgzo;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 27
    iget-object v1, p0, Lgzo;->b:[B

    iget-object v2, p0, Lgzo;->a:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lgzo;->b:[B

    const/16 v1, 0x41

    iget-object v2, p0, Lgzo;->b:[B

    const/16 v3, 0x61

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 31
    iget-object v0, p0, Lgzo;->b:[B

    const/16 v1, 0x42

    iget-object v2, p0, Lgzo;->b:[B

    const/16 v3, 0x62

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 32
    iget-object v0, p0, Lgzo;->b:[B

    const/16 v1, 0x43

    iget-object v2, p0, Lgzo;->b:[B

    const/16 v3, 0x63

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 33
    iget-object v0, p0, Lgzo;->b:[B

    const/16 v1, 0x44

    iget-object v2, p0, Lgzo;->b:[B

    const/16 v3, 0x64

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 34
    iget-object v0, p0, Lgzo;->b:[B

    const/16 v1, 0x45

    iget-object v2, p0, Lgzo;->b:[B

    const/16 v3, 0x65

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 35
    iget-object v0, p0, Lgzo;->b:[B

    const/16 v1, 0x46

    iget-object v2, p0, Lgzo;->b:[B

    const/16 v3, 0x66

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 36
    return-void
.end method

.method public b([BIILjava/io/OutputStream;)I
    .locals 5

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    add-int v1, p2, p3

    move v3, v1

    .line 85
    :goto_0
    if-le v3, p2, :cond_0

    .line 86
    add-int/lit8 v1, v3, -0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    invoke-direct {p0, v1}, Lgzo;->a(C)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v2, v0

    move v0, p2

    .line 94
    :goto_1
    if-ge v0, v3, :cond_4

    move v1, v0

    .line 95
    :goto_2
    if-ge v1, v3, :cond_2

    aget-byte v0, p1, v1

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lgzo;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 90
    :cond_1
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    .line 99
    :cond_2
    iget-object v4, p0, Lgzo;->b:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    aget-byte v1, v4, v1

    .line 101
    :goto_3
    if-ge v0, v3, :cond_3

    aget-byte v4, p1, v0

    int-to-char v4, v4

    invoke-direct {p0, v4}, Lgzo;->a(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 105
    :cond_3
    iget-object v4, p0, Lgzo;->b:[B

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    aget-byte v0, v4, v0

    .line 107
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 109
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, p2

    goto :goto_1

    .line 112
    :cond_4
    return v2
.end method
