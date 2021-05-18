.class final Leob;
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
    .line 313
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 317
    invoke-virtual {p1}, Lepo;->j()V

    .line 318
    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lepo;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    new-instance v1, Lekj;

    invoke-direct {v1, v0}, Lekj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Leps;Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 328
    invoke-virtual {p1, p2}, Leps;->a(Ljava/lang/Number;)Leps;

    .line 329
    return-void
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 313
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Leob;->a(Leps;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Leob;->a(Lepo;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
