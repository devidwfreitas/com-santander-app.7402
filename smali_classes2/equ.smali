.class public final Lequ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leqq;


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lequ;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lera;II)Lett;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p0}, Lera;->e()Lett;

    move-result-object v6

    .line 64
    if-nez v6, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 67
    :cond_0
    invoke-virtual {v6}, Lett;->f()I

    move-result v7

    .line 68
    invoke-virtual {v6}, Lett;->g()I

    move-result v8

    .line 69
    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 70
    invoke-static {p2, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 72
    div-int v0, v2, v7

    div-int v1, v4, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 73
    mul-int v0, v7, v9

    sub-int v0, v2, v0

    div-int/lit8 v1, v0, 0x2

    .line 74
    mul-int v0, v8, v9

    sub-int v0, v4, v0

    div-int/lit8 v0, v0, 0x2

    .line 76
    new-instance v10, Lett;

    invoke-direct {v10, v2, v4}, Lett;-><init>(II)V

    move v4, v0

    move v5, v3

    .line 78
    :goto_0
    if-ge v5, v8, :cond_3

    move v0, v1

    move v2, v3

    .line 80
    :goto_1
    if-ge v2, v7, :cond_2

    .line 81
    invoke-virtual {v6, v2, v5}, Lett;->a(II)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 82
    invoke-virtual {v10, v0, v4, v9, v9}, Lett;->a(IIII)V

    .line 80
    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v9

    goto :goto_1

    .line 78
    :cond_2
    add-int/lit8 v2, v5, 0x1

    add-int v0, v4, v9

    move v4, v0

    move v5, v2

    goto :goto_0

    .line 86
    :cond_3
    return-object v10
.end method

.method private static a(Ljava/lang/String;Lepu;IILjava/nio/charset/Charset;II)Lett;
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lepu;->AZTEC:Lepu;

    if-eq p1, v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only encode AZTEC, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p5, p6}, Lerc;->a([BII)Lera;

    move-result-object v0

    .line 59
    invoke-static {v0, p2, p3}, Lequ;->a(Lera;II)Lett;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lepu;II)Lett;
    .locals 6

    .prologue
    .line 35
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lequ;->a(Ljava/lang/String;Lepu;IILjava/util/Map;)Lett;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lepu;IILjava/util/Map;)Lett;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lepu;",
            "II",
            "Ljava/util/Map",
            "<",
            "Leqa;",
            "*>;)",
            "Lett;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 40
    if-nez p5, :cond_0

    move-object v3, v1

    .line 41
    :goto_0
    if-nez p5, :cond_1

    move-object v2, v1

    .line 42
    :goto_1
    if-nez p5, :cond_2

    move-object v0, v1

    .line 43
    :goto_2
    if-nez v3, :cond_3

    sget-object v4, Lequ;->a:Ljava/nio/charset/Charset;

    .line 47
    :goto_3
    if-nez v2, :cond_4

    const/16 v5, 0x21

    .line 48
    :goto_4
    if-nez v0, :cond_5

    const/4 v6, 0x0

    :goto_5
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 43
    invoke-static/range {v0 .. v6}, Lequ;->a(Ljava/lang/String;Lepu;IILjava/nio/charset/Charset;II)Lett;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    sget-object v0, Leqa;->CHARACTER_SET:Leqa;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Leqa;->ERROR_CORRECTION:Leqa;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    goto :goto_1

    .line 42
    :cond_2
    sget-object v0, Leqa;->AZTEC_LAYERS:Leqa;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    goto :goto_2

    .line 47
    :cond_3
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    goto :goto_3

    .line 48
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_4

    .line 49
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_5
.end method
