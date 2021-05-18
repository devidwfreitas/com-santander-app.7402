.class public Lhyx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "%"

.field public static final b:Ljava/lang/String; = "R$ "


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;)F
    .locals 3

    .prologue
    .line 48
    :try_start_0
    const-string v0, "R$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    const-string v2, ""

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 55
    :goto_0
    return v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)F
    .locals 10

    .prologue
    .line 65
    :try_start_0
    invoke-static {}, Lhyx;->a()Ljava/util/Locale;

    move-result-object v0

    .line 66
    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lhyx;->a(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(F)Ljava/lang/String;
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lhyx;->a()Ljava/util/Locale;

    move-result-object v0

    .line 41
    const-string v1, "%011.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public static a(Lcom/santander/app/contacorrente/domain/Conta;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    const-string v0, "%s / %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 81
    invoke-virtual {p0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 79
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lhyx;->a()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 93
    invoke-static {p1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 94
    invoke-static {}, Lhyx;->a()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 96
    return-object v1
.end method

.method public static a()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lhyx;->a(Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static b()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lhyx;->a()Ljava/util/Locale;

    move-result-object v0

    .line 75
    invoke-static {v0}, Ljava/text/DecimalFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lhyx;->a()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 89
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {p0, v0}, Lhyx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 101
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 103
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)F
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 108
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 109
    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x3

    .line 110
    :goto_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2, v1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 110
    return v0

    :cond_0
    move v0, v1

    .line 109
    goto :goto_0
.end method
