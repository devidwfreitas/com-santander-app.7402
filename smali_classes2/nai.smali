.class public Lnai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "value cannot be null"

.field private static final b:Ljava/lang/String; = "value cannot be null or empty"

.field private static final c:Ljava/lang/String; = "size of value cannot be bigger then 14"

.field private static final d:Ljava/lang/String; = "value is not a valid CPF or CPNJ"

.field private static final e:Ljava/text/DecimalFormat;

.field private static final f:Ljava/text/DecimalFormat;

.field private static final g:[I

.field private static final h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00000000000000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnai;->e:Ljava/text/DecimalFormat;

    .line 25
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00000000000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnai;->f:Ljava/text/DecimalFormat;

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnai;->g:[I

    .line 30
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnai;->h:[I

    return-void

    .line 28
    nop

    :array_0
    .array-data 4
        0xb
        0xa
        0x9
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
    .end array-data

    .line 30
    :array_1
    .array-data 4
        0x6
        0x5
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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;[I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 454
    .line 455
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 456
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 457
    array-length v4, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    aget v4, p1, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 455
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 459
    :cond_0
    rem-int/lit8 v1, v2, 0xb

    rsub-int/lit8 v1, v1, 0xb

    .line 460
    const/16 v2, 0x9

    if-le v1, v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(JZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 465
    .line 467
    if-eqz p2, :cond_0

    .line 468
    sget-object v0, Lnai;->f:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 472
    :goto_0
    return-object v0

    .line 470
    :cond_0
    sget-object v0, Lnai;->e:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnai;->a(Ljava/lang/Long;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Long;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 168
    const/16 v1, 0xe

    if-le v0, v1, :cond_1

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size of value cannot be bigger then 14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0}, Lnai;->b(Ljava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a valid CPF or CPNJ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    const/16 v1, 0xc

    if-ge v0, v1, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 178
    :goto_0
    if-eqz v1, :cond_4

    sget-object v0, Lnai;->f:Ljava/text/DecimalFormat;

    .line 180
    :goto_1
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 182
    if-eqz v1, :cond_5

    const-string v1, "([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})"

    const-string v2, "$1.$2.$3-$4"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 177
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 178
    :cond_4
    sget-object v0, Lnai;->e:Ljava/text/DecimalFormat;

    goto :goto_1

    .line 182
    :cond_5
    const-string v1, "([0-9]{2})([0-9]{3})([0-9]{3})([0-9]{4})([0-9]{2})"

    const-string v2, "$1.$2.$3/$4-$5"

    .line 184
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "[^0-9]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    const-string v0, "[^0-9]+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Lnai;->a(Ljava/lang/Long;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Long;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    if-nez p0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 207
    const/16 v1, 0xe

    if-le v0, v1, :cond_1

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size of value cannot be bigger then 14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0}, Lnai;->b(Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a valid CPF or CPNJ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    sget-object v0, Lnai;->e:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v1, "([0-9]{2})([0-9]{3})([0-9]{3})([0-9]{4})([0-9]{2})"

    const-string v2, "$1.$2.$3/$4-$5"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    if-eqz p0, :cond_0

    const-string v0, "[^0-9]+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    const-string v0, "   .   .   -  "

    .line 75
    :goto_0
    return-object v0

    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 70
    const/16 v2, 0xb

    if-le v1, v2, :cond_2

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size of value cannot be bigger then 14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    const-string v1, "%1$11s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "([0-9 ]{3})([0-9 ]{3})([0-9 ]{3})([0-9 ]{2})"

    const-string v2, "$1.$2.$3-$4"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Long;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 252
    const/16 v2, 0xe

    if-le v0, v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 256
    :cond_1
    const/16 v2, 0xc

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    .line 258
    :goto_1
    const-string v2, "11111111111"

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "22222222222"

    .line 259
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "33333333333"

    .line 260
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "44444444444"

    .line 261
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "55555555555"

    .line 262
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "66666666666"

    .line 263
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "77777777777"

    .line 264
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "88888888888"

    .line 265
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "99999999999"

    .line 266
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    if-eqz v0, :cond_3

    invoke-static {p0}, Lnai;->c(Ljava/lang/Long;)Z

    move-result v0

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 256
    goto :goto_1

    .line 269
    :cond_3
    invoke-static {p0}, Lnai;->d(Ljava/lang/Long;)Z

    move-result v0

    goto :goto_2
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    const-string v0, ""

    .line 94
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "[^0-9]+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnai;->a(Ljava/lang/Long;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Long;)Z
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 313
    :goto_0
    return v0

    .line 308
    :cond_0
    sget-object v1, Lnai;->f:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnai;->g:[I

    invoke-static {v2, v3}, Lnai;->a(Ljava/lang/String;[I)I

    move-result v2

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnai;->g:[I

    invoke-static {v3, v4}, Lnai;->a(Ljava/lang/String;[I)I

    move-result v3

    .line 313
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "%d%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 314
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    const-string v0, ""

    .line 113
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "[^0-9]+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnai;->b(Ljava/lang/Long;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/Long;)Z
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 385
    :goto_0
    return v0

    .line 379
    :cond_0
    sget-object v1, Lnai;->e:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnai;->h:[I

    invoke-static {v2, v3}, Lnai;->a(Ljava/lang/String;[I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnai;->h:[I

    invoke-static {v3, v4}, Lnai;->a(Ljava/lang/String;[I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 385
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "%d%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const/4 v0, 0x1

    aput-object v3, v5, v0

    .line 386
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 232
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    const-string v0, "[^0-9]+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2
    const-string v0, "[^0-9]+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnai;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 275
    const/16 v2, 0xe

    if-le v0, v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    const/16 v2, 0xc

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    .line 281
    :goto_1
    const-string v2, "11111111111"

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "22222222222"

    .line 282
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "33333333333"

    .line 283
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "44444444444"

    .line 284
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "55555555555"

    .line 285
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "66666666666"

    .line 286
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "77777777777"

    .line 287
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "88888888888"

    .line 288
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "99999999999"

    .line 289
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    if-eqz v0, :cond_3

    invoke-static {p0}, Lnai;->g(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 279
    goto :goto_1

    .line 292
    :cond_3
    invoke-static {p0}, Lnai;->h(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/16 v1, 0x30

    const/16 v8, 0x9

    const/16 v4, 0xb

    const/16 v7, 0xa

    const/4 v2, 0x0

    .line 318
    const-string v0, "00000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "11111111111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "22222222222"

    .line 319
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "33333333333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "44444444444"

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "55555555555"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "66666666666"

    .line 321
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "77777777777"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "88888888888"

    .line 322
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "99999999999"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_1

    :cond_0
    move v0, v2

    .line 361
    :goto_0
    return v0

    :cond_1
    move v0, v7

    move v3, v2

    move v5, v2

    .line 332
    :goto_1
    if-ge v3, v8, :cond_2

    .line 333
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 334
    mul-int/2addr v6, v0

    add-int/2addr v5, v6

    .line 335
    add-int/lit8 v0, v0, -0x1

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 338
    :cond_2
    rem-int/lit8 v0, v5, 0xb

    rsub-int/lit8 v0, v0, 0xb

    .line 339
    if-eq v0, v7, :cond_3

    if-ne v0, v4, :cond_4

    :cond_3
    move v0, v1

    :goto_2
    move v3, v4

    move v5, v2

    move v6, v2

    .line 346
    :goto_3
    if-ge v5, v7, :cond_5

    .line 347
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    .line 348
    mul-int/2addr v8, v3

    add-int/2addr v6, v8

    .line 349
    add-int/lit8 v3, v3, -0x1

    .line 346
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 342
    :cond_4
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_2

    .line 352
    :cond_5
    rem-int/lit8 v3, v6, 0xb

    rsub-int/lit8 v3, v3, 0xb

    .line 353
    if-eq v3, v7, :cond_6

    if-ne v3, v4, :cond_7

    .line 357
    :cond_6
    :goto_4
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_8

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v1, v0, :cond_8

    .line 358
    const/4 v0, 0x1

    goto :goto_0

    .line 355
    :cond_7
    add-int/lit8 v1, v3, 0x30

    int-to-char v1, v1

    goto :goto_4

    :cond_8
    move v0, v2

    .line 359
    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    move v0, v2

    .line 361
    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/16 v2, 0xc

    const/16 v8, 0xa

    const/4 v3, 0x1

    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 391
    const-string v0, "00000000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "11111111111111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "22222222222222"

    .line 392
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "33333333333333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "44444444444444"

    .line 393
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "55555555555555"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "66666666666666"

    .line 394
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "77777777777777"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "88888888888888"

    .line 395
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "99999999999999"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0xe

    if-eq v0, v5, :cond_1

    :cond_0
    move v0, v4

    .line 437
    :goto_0
    return v0

    .line 405
    :cond_1
    const/16 v0, 0xb

    move v5, v0

    move v6, v4

    move v0, v1

    :goto_1
    if-ltz v5, :cond_3

    .line 406
    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    .line 407
    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    .line 408
    add-int/lit8 v0, v0, 0x1

    .line 409
    if-ne v0, v8, :cond_2

    move v0, v1

    .line 405
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 413
    :cond_3
    rem-int/lit8 v0, v6, 0xb

    .line 414
    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_6

    .line 415
    :cond_4
    const/16 v0, 0x30

    :goto_2
    move v5, v2

    move v6, v4

    move v2, v1

    .line 420
    :goto_3
    if-ltz v5, :cond_7

    .line 421
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    .line 422
    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    .line 423
    add-int/lit8 v2, v2, 0x1

    .line 424
    if-ne v2, v8, :cond_5

    move v2, v1

    .line 420
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 416
    :cond_6
    rsub-int/lit8 v0, v0, 0xb

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_2

    .line 428
    :cond_7
    rem-int/lit8 v1, v6, 0xb

    .line 429
    if-eqz v1, :cond_8

    if-ne v1, v3, :cond_9

    .line 430
    :cond_8
    const/16 v1, 0x30

    .line 433
    :goto_4
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_a

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v1, v0, :cond_a

    move v0, v3

    .line 434
    goto :goto_0

    .line 431
    :cond_9
    rsub-int/lit8 v1, v1, 0xb

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    goto :goto_4

    :cond_a
    move v0, v4

    .line 435
    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    move v0, v4

    .line 437
    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    const/16 v2, 0xb

    const-string v3, "***.***"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/16 v2, 0x9

    const-string v3, "******"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
