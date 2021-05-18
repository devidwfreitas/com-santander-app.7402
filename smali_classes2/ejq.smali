.class final Lejq;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 337
    invoke-virtual {p1}, Lepo;->j()V

    .line 338
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lepo;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Leps;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 343
    if-nez p2, :cond_0

    .line 344
    invoke-virtual {p1}, Leps;->f()Leps;

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Leps;->b(Ljava/lang/String;)Leps;

    goto :goto_0
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 334
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lejq;->a(Leps;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lejq;->a(Lepo;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
