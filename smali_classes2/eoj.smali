.class final Leoj;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 468
    invoke-virtual {p1}, Lepo;->j()V

    .line 469
    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 464
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Leoj;->a(Leps;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public a(Leps;Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 475
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Leps;->b(Ljava/lang/String;)Leps;

    .line 476
    return-void

    .line 475
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Leoj;->a(Lepo;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
