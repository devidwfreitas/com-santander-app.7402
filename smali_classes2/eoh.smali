.class final Leoh;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 429
    invoke-virtual {p1}, Lepo;->j()V

    .line 430
    const/4 v0, 0x0

    .line 433
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    new-instance v1, Lekj;

    invoke-direct {v1, v0}, Lekj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 426
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Leoh;->a(Leps;Ljava/math/BigDecimal;)V

    return-void
.end method

.method public a(Leps;Ljava/math/BigDecimal;)V
    .locals 0

    .prologue
    .line 440
    invoke-virtual {p1, p2}, Leps;->a(Ljava/lang/Number;)Leps;

    .line 441
    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Leoh;->a(Lepo;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method
