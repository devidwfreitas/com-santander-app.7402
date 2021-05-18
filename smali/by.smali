.class public Lby;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Law;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lby;->a:Law;

    .line 46
    new-instance v0, Law;

    invoke-direct {v0, p1}, Law;-><init>([B)V

    iput-object v0, p0, Lby;->a:Law;

    .line 47
    return-void
.end method

.method private a([B[BZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v1, Lau;

    invoke-direct {v1}, Lau;-><init>()V

    .line 63
    :try_start_0
    iget-object v0, p0, Lby;->a:Law;

    invoke-interface {v1, p3, v0}, Lch;->a(ZLci;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    invoke-interface {v1, p1, v2, p2, v2}, Lch;->a([BI[BI)I

    .line 69
    invoke-interface {v1}, Lch;->c()V

    .line 70
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)[B
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/16 v8, 0x10

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 115
    new-array v0, v8, [B

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1, v0, v9}, Lby;->a([B[BZ)V

    .line 139
    :cond_0
    return-object v0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v5, v0, 0x10

    .line 124
    mul-int/lit8 v0, v5, 0x10

    new-array v0, v0, [B

    .line 125
    new-array v6, v8, [B

    move v1, v2

    move v4, v2

    .line 129
    :goto_0
    if-ge v4, v5, :cond_0

    .line 130
    mul-int/lit8 v3, v4, 0x10

    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x10

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3, v6, v9}, Lby;->a([B[BZ)V

    move v3, v1

    move v1, v2

    .line 132
    :goto_1
    if-lt v1, v8, :cond_3

    .line 136
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_0

    .line 133
    :cond_3
    aget-byte v7, v6, v1

    aput-byte v7, v0, v3

    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public a([B)[B
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x10

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 81
    :cond_0
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 84
    :cond_1
    new-array v3, v10, [B

    .line 85
    new-array v4, v10, [B

    .line 87
    array-length v0, p1

    div-int/lit8 v5, v0, 0x10

    .line 88
    mul-int/lit8 v0, v5, 0x10

    new-array v6, v0, [B

    move v2, v1

    .line 91
    :goto_0
    if-lt v2, v5, :cond_2

    .line 109
    return-object v6

    .line 92
    :cond_2
    mul-int/lit8 v7, v2, 0x10

    move v0, v1

    .line 93
    :goto_1
    if-lt v0, v10, :cond_3

    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, v4, v3, v0}, Lby;->a([B[BZ)V

    move v0, v1

    .line 103
    :goto_2
    if-lt v0, v10, :cond_4

    .line 106
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 94
    :cond_3
    add-int v8, v7, v0

    aget-byte v8, p1, v8

    aput-byte v8, v4, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_4
    add-int v8, v7, v0

    aget-byte v9, v3, v0

    aput-byte v9, v6, v8

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public b([B)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/16 v10, 0x10

    .line 154
    array-length v0, p1

    .line 155
    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 158
    :cond_0
    new-array v4, v10, [B

    .line 159
    new-array v5, v10, [B

    .line 161
    if-ne v0, v10, :cond_2

    .line 162
    new-array v0, v10, [B

    .line 163
    invoke-direct {p0, p1, v0, v2}, Lby;->a([B[BZ)V

    .line 181
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/16 v0, 0x2a

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_2
    array-length v0, p1

    div-int/lit8 v6, v0, 0x10

    .line 166
    mul-int/lit8 v0, v6, 0x10

    new-array v0, v0, [B

    move v3, v2

    .line 169
    :goto_1
    if-ge v3, v6, :cond_1

    .line 170
    mul-int/lit8 v7, v3, 0x10

    move v1, v2

    .line 171
    :goto_2
    if-lt v1, v10, :cond_3

    .line 174
    invoke-direct {p0, v5, v4, v2}, Lby;->a([B[BZ)V

    move v1, v2

    .line 175
    :goto_3
    if-lt v1, v10, :cond_4

    .line 178
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 172
    :cond_3
    add-int v8, v7, v1

    aget-byte v8, p1, v8

    aput-byte v8, v5, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    :cond_4
    add-int v8, v7, v1

    aget-byte v9, v4, v1

    aput-byte v9, v0, v8

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public c([B)[B
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/16 v10, 0x10

    .line 185
    array-length v0, p1

    .line 186
    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 187
    const/4 v0, 0x0

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 189
    :cond_1
    new-array v4, v10, [B

    .line 190
    new-array v5, v10, [B

    .line 192
    if-ne v0, v10, :cond_2

    .line 193
    new-array v0, v10, [B

    .line 194
    invoke-direct {p0, p1, v0, v2}, Lby;->a([B[BZ)V

    goto :goto_0

    .line 196
    :cond_2
    array-length v0, p1

    div-int/lit8 v6, v0, 0x10

    .line 197
    mul-int/lit8 v0, v6, 0x10

    new-array v0, v0, [B

    move v3, v2

    .line 200
    :goto_1
    if-ge v3, v6, :cond_0

    .line 201
    mul-int/lit8 v7, v3, 0x10

    move v1, v2

    .line 202
    :goto_2
    if-lt v1, v10, :cond_3

    .line 205
    invoke-direct {p0, v5, v4, v2}, Lby;->a([B[BZ)V

    move v1, v2

    .line 206
    :goto_3
    if-lt v1, v10, :cond_4

    .line 209
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 203
    :cond_3
    add-int v8, v7, v1

    aget-byte v8, p1, v8

    aput-byte v8, v5, v1

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 207
    :cond_4
    add-int v8, v7, v1

    aget-byte v9, v4, v1

    aput-byte v9, v0, v8

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
