.class public final Lemn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static a(Lepo;)Lejz;
    .locals 2

    .prologue
    .line 44
    const/4 v1, 0x1

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lepo;->f()Lepr;

    .line 47
    const/4 v1, 0x0

    .line 48
    sget-object v0, Leny;->X:Lekn;

    invoke-virtual {v0, p0}, Lekn;->b(Lepo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lept; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 55
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 54
    if-eqz v1, :cond_0

    .line 55
    sget-object v0, Lekb;->a:Lekb;

    goto :goto_0

    .line 58
    :cond_0
    new-instance v1, Lekj;

    invoke-direct {v1, v0}, Lekj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :catch_1
    move-exception v0

    .line 60
    new-instance v1, Lekj;

    invoke-direct {v1, v0}, Lekj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    :catch_2
    move-exception v0

    .line 62
    new-instance v1, Leka;

    invoke-direct {v1, v0}, Leka;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :catch_3
    move-exception v0

    .line 64
    new-instance v1, Lekj;

    invoke-direct {v1, v0}, Lekj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 76
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lemo;

    invoke-direct {v0, p0}, Lemo;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Lejz;Leps;)V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Leny;->X:Lekn;

    invoke-virtual {v0, p1, p0}, Lekn;->a(Leps;Ljava/lang/Object;)V

    .line 73
    return-void
.end method
