.class final Leop;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/util/UUID;
    .locals 2

    .prologue
    .line 562
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 563
    invoke-virtual {p1}, Lepo;->j()V

    .line 564
    const/4 v0, 0x0

    .line 566
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 559
    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2}, Leop;->a(Leps;Ljava/util/UUID;)V

    return-void
.end method

.method public a(Leps;Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 570
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Leps;->b(Ljava/lang/String;)Leps;

    .line 571
    return-void

    .line 570
    :cond_0
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Leop;->a(Lepo;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
