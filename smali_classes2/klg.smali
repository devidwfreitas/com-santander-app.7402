.class public Lklg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkla;)Lklq;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lkkz;->SEGUNDA_VIA_TRANSF_DOC:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lkld;

    invoke-direct {v0, p1}, Lkld;-><init>(Lkla;)V

    .line 54
    :goto_0
    return-object v0

    .line 17
    :cond_0
    sget-object v0, Lkkz;->SEGUNDA_VIA_AGUA:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Lklc;

    invoke-direct {v0, p1}, Lklc;-><init>(Lkla;)V

    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lkkz;->SEGUNDA_VIA_CARTA_AMEX:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    new-instance v0, Lkle;

    invoke-direct {v0, p1}, Lkle;-><init>(Lkla;)V

    goto :goto_0

    .line 23
    :cond_2
    sget-object v0, Lkkz;->SEGUNDA_VIA_CARTAO_CREDITO:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    new-instance v0, Lklf;

    invoke-direct {v0, p1}, Lklf;-><init>(Lkla;)V

    goto :goto_0

    .line 26
    :cond_3
    sget-object v0, Lkkz;->SEGUNDA_VIA_GAS:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    new-instance v0, Lklc;

    invoke-direct {v0, p1}, Lklc;-><init>(Lkla;)V

    goto :goto_0

    .line 29
    :cond_4
    sget-object v0, Lkkz;->SEGUNDA_VIA_LUZ:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    new-instance v0, Lklc;

    invoke-direct {v0, p1}, Lklc;-><init>(Lkla;)V

    goto :goto_0

    .line 32
    :cond_5
    sget-object v0, Lkkz;->SEGUNDA_VIA_PGT_TITULOS:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    new-instance v0, Lkle;

    invoke-direct {v0, p1}, Lkle;-><init>(Lkla;)V

    goto/16 :goto_0

    .line 35
    :cond_6
    sget-object v0, Lkkz;->SEGUNDA_VIA_TEL_FIXO:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36
    new-instance v0, Lklc;

    invoke-direct {v0, p1}, Lklc;-><init>(Lkla;)V

    goto/16 :goto_0

    .line 38
    :cond_7
    sget-object v0, Lkkz;->SEGUNDA_VIA_TEL_POS:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 39
    new-instance v0, Lklc;

    invoke-direct {v0, p1}, Lklc;-><init>(Lkla;)V

    goto/16 :goto_0

    .line 41
    :cond_8
    sget-object v0, Lkkz;->SEGUNDA_VIA_TEL_PRE:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    new-instance v0, Lklc;

    invoke-direct {v0, p1}, Lklc;-><init>(Lkla;)V

    goto/16 :goto_0

    .line 44
    :cond_9
    sget-object v0, Lkkz;->SEGUNDA_VIA_TRANSF_MESMA:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 45
    new-instance v0, Lklf;

    invoke-direct {v0, p1}, Lklf;-><init>(Lkla;)V

    goto/16 :goto_0

    .line 47
    :cond_a
    sget-object v0, Lkkz;->SEGUNDA_VIA_TRANSF_TED:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    new-instance v0, Lkld;

    invoke-direct {v0, p1}, Lkld;-><init>(Lkla;)V

    goto/16 :goto_0

    .line 50
    :cond_b
    sget-object v0, Lkkz;->SEGUNDA_VIA_TITULOS_OUTROS:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 51
    new-instance v0, Lklc;

    invoke-direct {v0, p1}, Lklc;-><init>(Lkla;)V

    goto/16 :goto_0

    .line 54
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
