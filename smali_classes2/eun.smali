.class public final Leun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leqq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Levg;Levm;)Lett;
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p1}, Levm;->d()I

    move-result v7

    .line 109
    invoke-virtual {p1}, Levm;->e()I

    move-result v8

    .line 111
    new-instance v9, Lfat;

    invoke-virtual {p1}, Levm;->f()I

    move-result v0

    invoke-virtual {p1}, Levm;->g()I

    move-result v2

    invoke-direct {v9, v0, v2}, Lfat;-><init>(II)V

    move v6, v1

    move v5, v1

    .line 115
    :goto_0
    if-ge v6, v8, :cond_6

    .line 118
    iget v0, p1, Levm;->c:I

    rem-int v0, v6, v0

    if-nez v0, :cond_9

    move v0, v1

    move v2, v1

    .line 120
    :goto_1
    invoke-virtual {p1}, Levm;->f()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 121
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    move v3, v4

    :goto_2
    invoke-virtual {v9, v2, v5, v3}, Lfat;->a(IIZ)V

    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    .line 121
    goto :goto_2

    .line 124
    :cond_1
    add-int/lit8 v0, v5, 0x1

    :goto_3
    move v5, v1

    move v2, v1

    .line 127
    :goto_4
    if-ge v5, v7, :cond_4

    .line 129
    iget v3, p1, Levm;->b:I

    rem-int v3, v5, v3

    if-nez v3, :cond_2

    .line 130
    invoke-virtual {v9, v2, v0, v4}, Lfat;->a(IIZ)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 133
    :cond_2
    invoke-virtual {p0, v5, v6}, Levg;->a(II)Z

    move-result v3

    invoke-virtual {v9, v2, v0, v3}, Lfat;->a(IIZ)V

    .line 134
    add-int/lit8 v3, v2, 0x1

    .line 136
    iget v2, p1, Levm;->b:I

    rem-int v2, v5, v2

    iget v10, p1, Levm;->b:I

    add-int/lit8 v10, v10, -0x1

    if-ne v2, v10, :cond_8

    .line 137
    rem-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_3

    move v2, v4

    :goto_5
    invoke-virtual {v9, v3, v0, v2}, Lfat;->a(IIZ)V

    .line 138
    add-int/lit8 v2, v3, 0x1

    .line 127
    :goto_6
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_4

    :cond_3
    move v2, v1

    .line 137
    goto :goto_5

    .line 141
    :cond_4
    add-int/lit8 v3, v0, 0x1

    .line 143
    iget v0, p1, Levm;->c:I

    rem-int v0, v6, v0

    iget v2, p1, Levm;->c:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_7

    move v0, v1

    move v2, v1

    .line 145
    :goto_7
    invoke-virtual {p1}, Levm;->f()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 146
    invoke-virtual {v9, v2, v3, v4}, Lfat;->a(IIZ)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 149
    :cond_5
    add-int/lit8 v0, v3, 0x1

    .line 115
    :goto_8
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v5, v0

    goto :goto_0

    .line 153
    :cond_6
    invoke-static {v9}, Leun;->a(Lfat;)Lett;

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v3

    goto :goto_8

    :cond_8
    move v2, v3

    goto :goto_6

    :cond_9
    move v0, v5

    goto :goto_3
.end method

.method private static a(Lfat;)Lett;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0}, Lfat;->b()I

    move-result v3

    .line 164
    invoke-virtual {p0}, Lfat;->a()I

    move-result v4

    .line 166
    new-instance v5, Lett;

    invoke-direct {v5, v3, v4}, Lett;-><init>(II)V

    .line 167
    invoke-virtual {v5}, Lett;->a()V

    move v2, v1

    .line 168
    :goto_0
    if-ge v2, v3, :cond_2

    move v0, v1

    .line 169
    :goto_1
    if-ge v0, v4, :cond_1

    .line 171
    invoke-virtual {p0, v2, v0}, Lfat;->a(II)B

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 172
    invoke-virtual {v5, v2, v0}, Lett;->b(II)V

    .line 169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 177
    :cond_2
    return-object v5
.end method


# virtual methods
.method public a(Ljava/lang/String;Lepu;II)Lett;
    .locals 6

    .prologue
    .line 43
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Leun;->a(Ljava/lang/String;Lepu;IILjava/util/Map;)Lett;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lepu;IILjava/util/Map;)Lett;
    .locals 6
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
    const/4 v3, 0x0

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    sget-object v0, Lepu;->DATA_MATRIX:Lepu;

    if-eq p2, v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only encode DATA_MATRIX, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested dimensions are too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_3
    sget-object v1, Levn;->FORCE_NONE:Levn;

    .line 65
    if-eqz p5, :cond_7

    .line 66
    sget-object v0, Leqa;->DATA_MATRIX_SHAPE:Leqa;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Levn;

    .line 67
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 71
    :cond_4
    sget-object v0, Leqa;->MIN_SIZE:Leqa;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepz;

    .line 72
    if-eqz v0, :cond_6

    move-object v2, v0

    .line 76
    :goto_0
    sget-object v0, Leqa;->MAX_SIZE:Leqa;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepz;

    .line 77
    if-eqz v0, :cond_5

    move-object v3, v0

    .line 84
    :cond_5
    :goto_1
    invoke-static {p1, v1, v2, v3}, Levl;->a(Ljava/lang/String;Levn;Lepz;Lepz;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v1, v2, v3, v5}, Levm;->a(ILevn;Lepz;Lepz;Z)Levm;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Levk;->a(Ljava/lang/String;Levm;)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v2, Levg;

    .line 93
    invoke-virtual {v1}, Levm;->d()I

    move-result v3

    invoke-virtual {v1}, Levm;->e()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Levg;-><init>(Ljava/lang/CharSequence;II)V

    .line 94
    invoke-virtual {v2}, Levg;->d()V

    .line 97
    invoke-static {v2, v1}, Leun;->a(Levg;Levm;)Lett;

    move-result-object v0

    return-object v0

    :cond_6
    move-object v2, v3

    goto :goto_0

    :cond_7
    move-object v2, v3

    goto :goto_1
.end method
