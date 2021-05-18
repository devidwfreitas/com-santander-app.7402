.class public Lmgi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field private static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Visa"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Mastercard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "American Express"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "En Route"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Diner\'s CLub/Carte Blanche"

    aput-object v2, v0, v1

    sput-object v0, Lmgi;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    sget-object v0, Lmgi;->g:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lmgi;->g:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 26
    invoke-static {p0}, Lmgi;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 27
    invoke-static {p0}, Lmgi;->d(Ljava/lang/String;)Z

    move-result v0

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 11

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    const/4 v0, -0x1

    .line 39
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 40
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 41
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 42
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 44
    invoke-static {p0}, Lmgi;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 49
    const-string v10, "4"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 94
    :cond_1
    :goto_0
    return v0

    .line 56
    :cond_2
    const-string v1, "51"

    invoke-virtual {v7, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const-string v1, "55"

    invoke-virtual {v7, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_3

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    move v0, v2

    .line 58
    goto :goto_0

    .line 63
    :cond_3
    const-string v1, "34"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "37"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    move v0, v5

    .line 65
    goto :goto_0

    .line 70
    :cond_5
    const-string v1, "2014"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "2149"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 71
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    move v0, v4

    .line 72
    goto :goto_0

    .line 77
    :cond_7
    const-string v1, "36"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "38"

    .line 78
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "300"

    .line 79
    invoke-virtual {v8, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const-string v1, "305"

    invoke-virtual {v8, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 80
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    move v0, v3

    .line 81
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 100
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 119
    new-array v5, v0, [Ljava/lang/String;

    move v0, v2

    .line 120
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v4, v2

    :goto_1
    if-ltz v3, :cond_3

    .line 128
    if-lez v3, :cond_2

    .line 129
    add-int/lit8 v0, v3, -0x1

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 130
    const/16 v6, 0x9

    if-le v0, v6, :cond_1

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    .line 133
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v6

    .line 135
    :cond_1
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v0, v6

    add-int/2addr v0, v4

    .line 125
    :goto_2
    add-int/lit8 v3, v3, -0x2

    move v4, v0

    goto :goto_1

    .line 137
    :cond_2
    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_2

    .line 139
    :cond_3
    rem-int/lit8 v0, v4, 0xa
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    move v0, v1

    .line 142
    :goto_3
    return v0

    :cond_4
    move v0, v2

    .line 139
    goto :goto_3

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    .line 142
    goto :goto_3
.end method
