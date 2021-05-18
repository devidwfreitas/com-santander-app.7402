.class public final Leum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leqk;


# static fields
.field private static final a:[Leqo;


# instance fields
.field private final b:Leut;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Leqo;

    sput-object v0, Leum;->a:[Leqo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Leut;

    invoke-direct {v0}, Leut;-><init>()V

    iput-object v0, p0, Leum;->b:Leut;

    return-void
.end method

.method private static a([ILett;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-virtual {p1}, Lett;->f()I

    move-result v1

    .line 145
    aget v0, p0, v4

    .line 146
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 147
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0, v2}, Lett;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    if-ne v0, v1, :cond_1

    .line 151
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 154
    :cond_1
    aget v1, p0, v4

    sub-int/2addr v0, v1

    .line 155
    if-nez v0, :cond_2

    .line 156
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 158
    :cond_2
    return v0
.end method

.method private static a(Lett;)Lett;
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Lett;->d()[I

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lett;->e()[I

    move-result-object v2

    .line 106
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 107
    :cond_0
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 110
    :cond_1
    invoke-static {v0, p0}, Leum;->a([ILett;)I

    move-result v3

    .line 112
    aget v4, v0, v5

    .line 113
    aget v5, v2, v5

    .line 114
    aget v0, v0, v1

    .line 115
    aget v2, v2, v1

    .line 117
    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    div-int v6, v2, v3

    .line 118
    sub-int v2, v5, v4

    add-int/lit8 v2, v2, 0x1

    div-int v5, v2, v3

    .line 119
    if-lez v6, :cond_2

    if-gtz v5, :cond_3

    .line 120
    :cond_2
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 126
    :cond_3
    div-int/lit8 v2, v3, 0x2

    .line 127
    add-int/2addr v4, v2

    .line 128
    add-int v7, v0, v2

    .line 131
    new-instance v8, Lett;

    invoke-direct {v8, v6, v5}, Lett;-><init>(II)V

    move v2, v1

    .line 132
    :goto_0
    if-ge v2, v5, :cond_6

    .line 133
    mul-int v0, v2, v3

    add-int v9, v4, v0

    move v0, v1

    .line 134
    :goto_1
    if-ge v0, v6, :cond_5

    .line 135
    mul-int v10, v0, v3

    add-int/2addr v10, v7

    invoke-virtual {p0, v10, v9}, Lett;->a(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 136
    invoke-virtual {v8, v0, v2}, Lett;->b(II)V

    .line 134
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 140
    :cond_6
    return-object v8
.end method


# virtual methods
.method public a(Lepw;)Leqm;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Leum;->a(Lepw;Ljava/util/Map;)Leqm;

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
    .line 67
    if-eqz p2, :cond_2

    sget-object v0, Lepy;->PURE_BARCODE:Lepy;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p1}, Lepw;->c()Lett;

    move-result-object v0

    invoke-static {v0}, Leum;->a(Lett;)Lett;

    move-result-object v0

    .line 69
    iget-object v1, p0, Leum;->b:Leut;

    invoke-virtual {v1, v0}, Leut;->a(Lett;)Letw;

    move-result-object v1

    .line 70
    sget-object v0, Leum;->a:[Leqo;

    .line 76
    :goto_0
    new-instance v2, Leqm;

    invoke-virtual {v1}, Letw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Letw;->a()[B

    move-result-object v4

    sget-object v5, Lepu;->DATA_MATRIX:Lepu;

    invoke-direct {v2, v3, v4, v0, v5}, Leqm;-><init>(Ljava/lang/String;[B[Leqo;Lepu;)V

    .line 78
    invoke-virtual {v1}, Letw;->c()Ljava/util/List;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    sget-object v3, Leqn;->BYTE_SEGMENTS:Leqn;

    invoke-virtual {v2, v3, v0}, Leqm;->a(Leqn;Ljava/lang/Object;)V

    .line 82
    :cond_0
    invoke-virtual {v1}, Letw;->d()Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    sget-object v1, Leqn;->ERROR_CORRECTION_LEVEL:Leqn;

    invoke-virtual {v2, v1, v0}, Leqm;->a(Leqn;Ljava/lang/Object;)V

    .line 86
    :cond_1
    return-object v2

    .line 72
    :cond_2
    new-instance v0, Leuy;

    invoke-virtual {p1}, Lepw;->c()Lett;

    move-result-object v1

    invoke-direct {v0, v1}, Leuy;-><init>(Lett;)V

    invoke-virtual {v0}, Leuy;->a()Lety;

    move-result-object v0

    .line 73
    iget-object v1, p0, Leum;->b:Leut;

    invoke-virtual {v0}, Lety;->d()Lett;

    move-result-object v2

    invoke-virtual {v1, v2}, Leut;->a(Lett;)Letw;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lety;->e()[Leqo;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
