.class public abstract Lfnt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private m(Lfny;)Lfnw;
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 25
    invoke-virtual {p1}, Lfny;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lfny;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 26
    invoke-virtual {p1}, Lfny;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 28
    invoke-virtual {p1}, Lfny;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 65
    :cond_1
    :goto_1
    sget-object v0, Lfnw;->ErroAoProcessar:Lfnw;

    :goto_2
    return-object v0

    .line 28
    :sswitch_0
    const-string v2, "002"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "004"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "003"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "-1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_4
    const-string v0, "008"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "18370"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "009"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    .line 30
    :pswitch_0
    sget-object v0, Lfnw;->CpfNaoCadastradoEmPE:Lfnw;

    goto :goto_2

    .line 32
    :pswitch_1
    sget-object v0, Lfnw;->SenhaNaoElegivelPG:Lfnw;

    goto :goto_2

    .line 35
    :pswitch_2
    sget-object v0, Lfnw;->ErroAoProcessar:Lfnw;

    goto :goto_2

    .line 38
    :pswitch_3
    sget-object v0, Lfnw;->CanalBloqueadoPorFraude:Lfnw;

    goto :goto_2

    .line 40
    :pswitch_4
    sget-object v0, Lfnw;->CanalBloqueadoPorDemaisMotivos:Lfnw;

    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {p1}, Lfny;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lfny;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 43
    invoke-virtual {p1}, Lfny;->d()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 45
    invoke-virtual {p1}, Lfny;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :cond_3
    :pswitch_5
    move v0, v1

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_1

    .line 47
    :pswitch_6
    sget-object v0, Lfnw;->SenhaElegivelPG:Lfnw;

    goto/16 :goto_2

    .line 45
    :pswitch_7
    const-string v2, "100"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :pswitch_8
    const-string v0, "101"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :pswitch_9
    const-string v0, "102"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_3

    :pswitch_a
    const-string v0, "108"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_3

    :pswitch_b
    const-string v0, "103"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_3

    :pswitch_c
    const-string v0, "107"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_3

    :pswitch_d
    const-string v0, "106"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    goto :goto_3

    .line 49
    :pswitch_e
    sget-object v0, Lfnw;->SenhaCancelada:Lfnw;

    goto/16 :goto_2

    .line 52
    :pswitch_f
    sget-object v0, Lfnw;->NaoCadastradoNoSN:Lfnw;

    goto/16 :goto_2

    .line 54
    :pswitch_10
    sget-object v0, Lfnw;->FezOptInNoCanal:Lfnw;

    goto/16 :goto_2

    .line 57
    :pswitch_11
    sget-object v0, Lfnw;->NaoFezOptInNoCanalComPendencia:Lfnw;

    goto/16 :goto_2

    .line 62
    :pswitch_12
    sget-object v0, Lfnw;->NaoFezOptInNoCanalSemPendencia:Lfnw;

    goto/16 :goto_2

    .line 28
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a4 -> :sswitch_3
        0xba32 -> :sswitch_0
        0xba33 -> :sswitch_2
        0xba34 -> :sswitch_1
        0xba38 -> :sswitch_4
        0xba39 -> :sswitch_6
        0x2ccbac5 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 45
    :pswitch_data_1
    .packed-switch 0xbdf1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/app/Activity;Lfnx;Lfoh;)V
.end method

.method public abstract a()Z
.end method

.method protected a(Lfny;)Z
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lfnt;->m(Lfny;)Lfnw;

    move-result-object v0

    sget-object v1, Lfnw;->NaoFezOptInNoCanalSemPendencia:Lfnw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b()Z
.end method

.method protected b(Lfny;)Z
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lfnt;->m(Lfny;)Lfnw;

    move-result-object v0

    sget-object v1, Lfnw;->NaoFezOptInNoCanalComPendencia:Lfnw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lfny;)Z
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lfnt;->m(Lfny;)Lfnw;

    move-result-object v0

    sget-object v1, Lfnw;->CpfNaoCadastradoEmPE:Lfnw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Lfny;)Z
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lfnt;->m(Lfny;)Lfnw;

    move-result-object v0

    sget-object v1, Lfnw;->SenhaNaoElegivelPG:Lfnw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Lfny;)Z
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lfnt;->m(Lfny;)Lfnw;

    move-result-object v0

    sget-object v1, Lfnw;->SenhaElegivelPG:Lfnw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f(Lfny;)Z
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lfnt;->m(Lfny;)Lfnw;

    move-result-object v0

    sget-object v1, Lfnw;->ErroAoProcessar:Lfnw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g(Lfny;)Z
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lfnt;->m(Lfny;)Lfnw;

    move-result-object v0

    sget-object v1, Lfnw;->NaoCadastradoNoSN:Lfnw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h(Lfny;)Z
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lfnt;->m(Lfny;)Lfnw;

    move-result-object v0

    sget-object v1, Lfnw;->SenhaCancelada:Lfnw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i(Lfny;)Z
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lfnt;->m(Lfny;)Lfnw;

    move-result-object v0

    sget-object v1, Lfnw;->NaoFezOptInNoCanal:Lfnw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j(Lfny;)Z
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lfnt;->m(Lfny;)Lfnw;

    move-result-object v0

    sget-object v1, Lfnw;->FezOptInNoCanal:Lfnw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected k(Lfny;)Z
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lfnt;->m(Lfny;)Lfnw;

    move-result-object v0

    sget-object v1, Lfnw;->CanalBloqueadoPorFraude:Lfnw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l(Lfny;)Z
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lfnt;->m(Lfny;)Lfnw;

    move-result-object v0

    sget-object v1, Lfnw;->CanalBloqueadoPorDemaisMotivos:Lfnw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
