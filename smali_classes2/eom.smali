.class final Leom;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/net/URL;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 503
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v1

    sget-object v2, Lepr;->NULL:Lepr;

    if-ne v1, v2, :cond_1

    .line 504
    invoke-virtual {p1}, Lepo;->j()V

    .line 508
    :cond_0
    :goto_0
    return-object v0

    .line 507
    :cond_1
    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v1

    .line 508
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 500
    check-cast p2, Ljava/net/URL;

    invoke-virtual {p0, p1, p2}, Leom;->a(Leps;Ljava/net/URL;)V

    return-void
.end method

.method public a(Leps;Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 512
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Leps;->b(Ljava/lang/String;)Leps;

    .line 513
    return-void

    .line 512
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Leom;->a(Lepo;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
