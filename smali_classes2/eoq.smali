.class final Leoq;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/util/Currency;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/util/Currency;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 576
    check-cast p2, Ljava/util/Currency;

    invoke-virtual {p0, p1, p2}, Leoq;->a(Leps;Ljava/util/Currency;)V

    return-void
.end method

.method public a(Leps;Ljava/util/Currency;)V
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Leps;->b(Ljava/lang/String;)Leps;

    .line 584
    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0, p1}, Leoq;->a(Lepo;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method
