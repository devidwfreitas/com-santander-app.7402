.class final Leoo;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 543
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 544
    invoke-virtual {p1}, Lepo;->j()V

    .line 545
    const/4 v0, 0x0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 540
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Leoo;->a(Leps;Ljava/net/InetAddress;)V

    return-void
.end method

.method public a(Leps;Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 552
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Leps;->b(Ljava/lang/String;)Leps;

    .line 553
    return-void

    .line 552
    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Leoo;->a(Lepo;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
