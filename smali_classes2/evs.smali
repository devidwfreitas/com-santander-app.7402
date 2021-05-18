.class public final Levs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leqk;


# static fields
.field private static final a:[Leqo;

.field private static final b:I = 0x1e

.field private static final c:I = 0x21


# instance fields
.field private final d:Levv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Leqo;

    sput-object v0, Levs;->a:[Leqo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Levv;

    invoke-direct {v0}, Levv;-><init>()V

    iput-object v0, p0, Levs;->d:Levv;

    return-void
.end method

.method private static a(Lett;)Lett;
    .locals 13

    .prologue
    const/16 v12, 0x21

    const/16 v11, 0x1e

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0}, Lett;->c()[I

    move-result-object v0

    .line 103
    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 107
    :cond_0
    aget v3, v0, v1

    .line 108
    const/4 v2, 0x1

    aget v4, v0, v2

    .line 109
    const/4 v2, 0x2

    aget v5, v0, v2

    .line 110
    const/4 v2, 0x3

    aget v6, v0, v2

    .line 113
    new-instance v7, Lett;

    invoke-direct {v7, v11, v12}, Lett;-><init>(II)V

    move v2, v1

    .line 114
    :goto_0
    if-ge v2, v12, :cond_3

    .line 115
    mul-int v0, v2, v6

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x21

    add-int v8, v4, v0

    move v0, v1

    .line 116
    :goto_1
    if-ge v0, v11, :cond_2

    .line 117
    mul-int v9, v0, v5

    div-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    and-int/lit8 v10, v2, 0x1

    mul-int/2addr v10, v5

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x1e

    add-int/2addr v9, v3

    .line 118
    invoke-virtual {p0, v9, v8}, Lett;->a(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 119
    invoke-virtual {v7, v0, v2}, Lett;->b(II)V

    .line 116
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 123
    :cond_3
    return-object v7
.end method


# virtual methods
.method public a(Lepw;)Leqm;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Levs;->a(Lepw;Ljava/util/Map;)Leqm;

    move-result-object v0

    return-object v0
.end method

.method public a(Lepw;Ljava/util/Map;)Leqm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lepw;",
            "Ljava/util/Map",
            "<",
            "Lepy;",
            "*>;)",
            "Leqm;"
        }
    .end annotation

    .prologue
    .line 69
    if-eqz p2, :cond_1

    sget-object v0, Lepy;->PURE_BARCODE:Lepy;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p1}, Lepw;->c()Lett;

    move-result-object v0

    invoke-static {v0}, Levs;->a(Lett;)Lett;

    move-result-object v0

    .line 71
    iget-object v1, p0, Levs;->d:Levv;

    invoke-virtual {v1, v0, p2}, Levv;->a(Lett;Ljava/util/Map;)Letw;

    move-result-object v0

    .line 76
    sget-object v1, Levs;->a:[Leqo;

    .line 77
    new-instance v2, Leqm;

    invoke-virtual {v0}, Letw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Letw;->a()[B

    move-result-object v4

    sget-object v5, Lepu;->MAXICODE:Lepu;

    invoke-direct {v2, v3, v4, v1, v5}, Leqm;-><init>(Ljava/lang/String;[B[Leqo;Lepu;)V

    .line 79
    invoke-virtual {v0}, Letw;->d()Ljava/lang/String;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    sget-object v1, Leqn;->ERROR_CORRECTION_LEVEL:Leqn;

    invoke-virtual {v2, v1, v0}, Leqm;->a(Leqn;Ljava/lang/Object;)V

    .line 83
    :cond_0
    return-object v2

    .line 73
    :cond_1
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
