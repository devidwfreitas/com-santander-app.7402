.class public final Lfab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Leuj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Leuj;

    sget-object v1, Leuh;->e:Leuh;

    invoke-direct {v0, v1}, Leuj;-><init>(Leuh;)V

    iput-object v0, p0, Lfab;->a:Leuj;

    .line 42
    return-void
.end method

.method private a(Lezo;Ljava/util/Map;)Letw;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lezo;",
            "Ljava/util/Map",
            "<",
            "Lepy;",
            "*>;)",
            "Letw;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p1}, Lezo;->b()Lfag;

    move-result-object v5

    .line 146
    invoke-virtual {p1}, Lezo;->a()Lfad;

    move-result-object v0

    invoke-virtual {v0}, Lfad;->a()Lfac;

    move-result-object v6

    .line 149
    invoke-virtual {p1}, Lezo;->c()[B

    move-result-object v0

    .line 151
    invoke-static {v0, v5, v6}, Lezp;->a([BLfag;Lfac;)[Lezp;

    move-result-object v7

    .line 155
    array-length v3, v7

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v7, v0

    .line 156
    invoke-virtual {v4}, Lezp;->a()I

    move-result v4

    add-int/2addr v2, v4

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    new-array v8, v2, [B

    .line 162
    array-length v9, v7

    move v4, v1

    move v0, v1

    :goto_1
    if-ge v4, v9, :cond_2

    aget-object v2, v7, v4

    .line 163
    invoke-virtual {v2}, Lezp;->b()[B

    move-result-object v10

    .line 164
    invoke-virtual {v2}, Lezp;->a()I

    move-result v11

    .line 165
    invoke-direct {p0, v10, v11}, Lfab;->a([BI)V

    move v2, v0

    move v0, v1

    .line 166
    :goto_2
    if-ge v0, v11, :cond_1

    .line 167
    add-int/lit8 v3, v2, 0x1

    aget-byte v12, v10, v0

    aput-byte v12, v8, v2

    .line 166
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2

    .line 162
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_1

    .line 172
    :cond_2
    invoke-static {v8, v5, v6, p2}, Lfaa;->a([BLfag;Lfac;Ljava/util/Map;)Letw;

    move-result-object v0

    return-object v0
.end method

.method private a([BI)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 184
    array-length v2, p1

    .line 186
    new-array v3, v2, [I

    move v1, v0

    .line 187
    :goto_0
    if-ge v1, v2, :cond_0

    .line 188
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 192
    :try_start_0
    iget-object v2, p0, Lfab;->a:Leuj;

    invoke-virtual {v2, v3, v1}, Leuj;->a([II)V
    :try_end_0
    .catch Leul; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_1
    if-ge v0, p2, :cond_1

    .line 199
    aget v1, v3, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {}, Lepx;->a()Lepx;

    move-result-object v0

    throw v0

    .line 201
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lett;)Letw;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lfab;->a(Lett;Ljava/util/Map;)Letw;

    move-result-object v0

    return-object v0
.end method

.method public a(Lett;Ljava/util/Map;)Letw;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lett;",
            "Ljava/util/Map",
            "<",
            "Lepy;",
            "*>;)",
            "Letw;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    new-instance v3, Lezo;

    invoke-direct {v3, p1}, Lezo;-><init>(Lett;)V

    .line 93
    :try_start_0
    invoke-direct {p0, v3, p2}, Lfab;->a(Lezo;Ljava/util/Map;)Letw;
    :try_end_0
    .catch Leqb; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lepx; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 103
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lezo;->d()V

    .line 106
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lezo;->a(Z)V

    .line 109
    invoke-virtual {v3}, Lezo;->b()Lfag;

    .line 112
    invoke-virtual {v3}, Lezo;->a()Lfad;

    .line 121
    invoke-virtual {v3}, Lezo;->e()V

    .line 123
    invoke-direct {p0, v3, p2}, Lfab;->a(Lezo;Ljava/util/Map;)Letw;

    move-result-object v0

    .line 126
    new-instance v3, Lfaf;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lfaf;-><init>(Z)V

    invoke-virtual {v0, v3}, Letw;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Leqb; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lepx; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 132
    :goto_2
    if-eqz v2, :cond_0

    .line 133
    throw v2

    .line 96
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 97
    goto :goto_1

    .line 135
    :cond_0
    if-eqz v1, :cond_1

    .line 136
    throw v1

    .line 138
    :cond_1
    throw v0

    .line 130
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public a([[Z)Letw;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lfab;->a([[ZLjava/util/Map;)Letw;

    move-result-object v0

    return-object v0
.end method

.method public a([[ZLjava/util/Map;)Letw;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map",
            "<",
            "Lepy;",
            "*>;)",
            "Letw;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 60
    array-length v3, p1

    .line 61
    new-instance v4, Lett;

    invoke-direct {v4, v3}, Lett;-><init>(I)V

    move v2, v1

    .line 62
    :goto_0
    if-ge v2, v3, :cond_2

    move v0, v1

    .line 63
    :goto_1
    if-ge v0, v3, :cond_1

    .line 64
    aget-object v5, p1, v2

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v4, v0, v2}, Lett;->b(II)V

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0, v4, p2}, Lfab;->a(Lett;Ljava/util/Map;)Letw;

    move-result-object v0

    return-object v0
.end method
