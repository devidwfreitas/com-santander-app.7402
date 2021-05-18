.class final Leoe;
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
    .line 362
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/lang/Number;
    .locals 4

    .prologue
    .line 365
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    .line 366
    sget-object v1, Lepe;->a:[I

    invoke-virtual {v0}, Lepr;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 373
    :pswitch_0
    new-instance v1, Lekj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting number, got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lekj;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :pswitch_1
    invoke-virtual {p1}, Lepo;->j()V

    .line 369
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Lels;

    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lels;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Leps;Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 378
    invoke-virtual {p1, p2}, Leps;->a(Ljava/lang/Number;)Leps;

    .line 379
    return-void
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 362
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Leoe;->a(Leps;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Leoe;->a(Lepo;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
