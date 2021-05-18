.class public abstract Ljx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:[C

.field protected static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/4 v1, 0x0

    .line 14
    new-array v0, v5, [C

    sput-object v0, Ljx;->a:[C

    .line 19
    const/16 v0, 0x41

    move v2, v1

    :goto_0
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    .line 21
    sget-object v4, Ljx;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 19
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_0

    .line 23
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 25
    sget-object v4, Ljx;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 23
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_1

    .line 27
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 29
    sget-object v4, Ljx;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 27
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_2

    .line 31
    :cond_2
    sget-object v0, Ljx;->a:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v0, v2

    .line 32
    sget-object v0, Ljx;->a:[C

    add-int/lit8 v2, v3, 0x1

    const/16 v2, 0x2f

    aput-char v2, v0, v3

    .line 36
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Ljx;->b:[B

    move v0, v1

    .line 40
    :goto_3
    sget-object v2, Ljx;->b:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 42
    sget-object v2, Ljx;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 44
    :cond_3
    :goto_4
    if-ge v1, v5, :cond_4

    .line 46
    sget-object v0, Ljx;->b:[B

    sget-object v2, Ljx;->a:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 48
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
