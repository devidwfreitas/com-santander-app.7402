.class public Labv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Ljava/lang/Double;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 36
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 39
    invoke-static {}, Lji;->a()Lji;

    move-result-object v1

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    :try_start_0
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    invoke-virtual {v0, p0}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 29
    :goto_0
    return-object p0

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    :try_start_0
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    invoke-virtual {v0, p1}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 20
    :goto_0
    return-object p1

    .line 19
    :catch_0
    move-exception v0

    goto :goto_0
.end method
