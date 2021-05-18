.class public Lkb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lkb;->a:[B

    return-void

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
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-static {p0, v0, v0}, Lkb;->a([BZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BZI)Ljava/lang/String;
    .locals 5

    .prologue
    .line 23
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 26
    if-eqz p1, :cond_0

    .line 27
    if-lez v0, :cond_0

    rem-int v1, v0, p2

    if-nez v1, :cond_0

    .line 28
    const-string v1, "\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    :cond_0
    aget-byte v1, p0, v0

    .line 31
    if-gez v1, :cond_1

    .line 32
    add-int/lit16 v1, v1, 0x100

    .line 33
    :cond_1
    rem-int/lit8 v3, v1, 0x10

    .line 34
    div-int/lit8 v1, v1, 0x10

    .line 35
    sget-object v4, Lkb;->a:[B

    aget-byte v1, v4, v1

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    sget-object v1, Lkb;->a:[B

    aget-byte v1, v1, v3

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
