.class final Leon;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/net/URI;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 521
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v1

    sget-object v2, Lepr;->NULL:Lepr;

    if-ne v1, v2, :cond_1

    .line 522
    invoke-virtual {p1}, Lepo;->j()V

    .line 527
    :cond_0
    :goto_0
    return-object v0

    .line 526
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v1

    .line 527
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    new-instance v1, Leka;

    invoke-direct {v1, v0}, Leka;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 518
    check-cast p2, Ljava/net/URI;

    invoke-virtual {p0, p1, p2}, Leon;->a(Leps;Ljava/net/URI;)V

    return-void
.end method

.method public a(Leps;Ljava/net/URI;)V
    .locals 1

    .prologue
    .line 534
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Leps;->b(Ljava/lang/String;)Leps;

    .line 535
    return-void

    .line 534
    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Leon;->a(Lepo;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
