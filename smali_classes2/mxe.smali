.class public Lmxe;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 62
    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v4, v1

    move v5, v2

    .line 66
    :goto_0
    if-ltz v3, :cond_2

    .line 67
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v4

    .line 68
    if-lt v0, v6, :cond_0

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x1

    .line 69
    :cond_0
    add-int/2addr v5, v0

    .line 71
    if-ne v4, v1, :cond_1

    .line 72
    const/4 v0, 0x1

    .line 76
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v4, v0

    .line 77
    goto :goto_0

    :cond_1
    move v0, v1

    .line 74
    goto :goto_1

    .line 78
    :cond_2
    rem-int/lit8 v0, v5, 0xa

    rsub-int/lit8 v0, v0, 0xa

    .line 80
    if-ne v0, v6, :cond_3

    move v0, v2

    .line 82
    :cond_3
    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x7

    if-le p2, v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lmxe;->b(Ljava/lang/String;)I

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lmxe;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 19
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "O codigo de barras esta incompleto!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Error calculo linea digitable"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 23
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    const-string v0, "[ERRO]Selecione a op\u00e7\u00e3o de t\u00edtulos e boletos acima."

    .line 45
    :goto_0
    return-object v0

    .line 27
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "4"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ERRO]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 37
    const/16 v1, 0xb

    const/16 v2, 0x16

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 38
    const/16 v2, 0x16

    const/16 v3, 0x21

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 39
    const/16 v3, 0x21

    const/16 v4, 0x2c

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 43
    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0, v4}, Lmxe;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1, v4}, Lmxe;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v2, v4}, Lmxe;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3, v4}, Lmxe;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v0, 0x0

    .line 86
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    move v1, v0

    move v2, v0

    .line 90
    :goto_0
    if-ge v1, v6, :cond_0

    .line 91
    aget v4, v3, v1

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    rem-int/lit8 v1, v2, 0xb

    rsub-int/lit8 v1, v1, 0xb

    .line 96
    const/16 v2, 0x9

    if-le v1, v2, :cond_1

    .line 100
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 86
    :array_0
    .array-data 4
        0x4
        0x3
        0x2
        0x9
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
    .end array-data
.end method
