.class final Leod;
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
    .line 347
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 351
    invoke-virtual {p1}, Lepo;->j()V

    .line 352
    const/4 v0, 0x0

    .line 354
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lepo;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Leps;Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 358
    invoke-virtual {p1, p2}, Leps;->a(Ljava/lang/Number;)Leps;

    .line 359
    return-void
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 347
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Leod;->a(Leps;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Leod;->a(Lepo;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
