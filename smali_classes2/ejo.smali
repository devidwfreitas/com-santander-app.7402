.class Lejo;
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


# instance fields
.field final synthetic a:Lejm;


# direct methods
.method constructor <init>(Lejm;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lejo;->a:Lejm;

    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p1}, Lepo;->j()V

    .line 282
    const/4 v0, 0x0

    .line 284
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
    .locals 2

    .prologue
    .line 287
    if-nez p2, :cond_0

    .line 288
    invoke-virtual {p1}, Leps;->f()Leps;

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 292
    invoke-static {v0, v1}, Lejm;->a(D)V

    .line 293
    invoke-virtual {p1, p2}, Leps;->a(Ljava/lang/Number;)Leps;

    goto :goto_0
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 278
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lejo;->a(Leps;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lejo;->a(Lepo;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
