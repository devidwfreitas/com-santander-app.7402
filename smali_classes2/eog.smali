.class final Leog;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    .line 410
    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 411
    invoke-virtual {p1}, Lepo;->j()V

    .line 412
    const/4 v0, 0x0

    .line 418
    :goto_0
    return-object v0

    .line 415
    :cond_0
    sget-object v1, Lepr;->BOOLEAN:Lepr;

    if-ne v0, v1, :cond_1

    .line 416
    invoke-virtual {p1}, Lepo;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 406
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Leog;->a(Leps;Ljava/lang/String;)V

    return-void
.end method

.method public a(Leps;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 422
    invoke-virtual {p1, p2}, Leps;->b(Ljava/lang/String;)Leps;

    .line 423
    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Leog;->a(Lepo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
