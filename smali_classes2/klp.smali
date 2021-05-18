.class public Lklp;
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
.method public a(Lklb;)Lklo;
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p1}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->E()Ljava/lang/String;

    move-result-object v0

    .line 13
    sget-object v1, Lkkz;->SEGUNDA_VIA_TRANSF_DOC:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    new-instance v0, Lklj;

    invoke-direct {v0, p1}, Lklj;-><init>(Lklb;)V

    .line 53
    :goto_0
    return-object v0

    .line 16
    :cond_0
    sget-object v1, Lkkz;->SEGUNDA_VIA_AGUA:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    new-instance v0, Lkli;

    invoke-direct {v0, p1}, Lkli;-><init>(Lklb;)V

    goto :goto_0

    .line 19
    :cond_1
    sget-object v1, Lkkz;->SEGUNDA_VIA_CARTA_AMEX:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    new-instance v0, Lklm;

    invoke-direct {v0, p1}, Lklm;-><init>(Lklb;)V

    goto :goto_0

    .line 22
    :cond_2
    sget-object v1, Lkkz;->SEGUNDA_VIA_CARTAO_CREDITO:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    new-instance v0, Lklh;

    invoke-direct {v0, p1}, Lklh;-><init>(Lklb;)V

    goto :goto_0

    .line 25
    :cond_3
    sget-object v1, Lkkz;->SEGUNDA_VIA_GAS:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    new-instance v0, Lkli;

    invoke-direct {v0, p1}, Lkli;-><init>(Lklb;)V

    goto :goto_0

    .line 28
    :cond_4
    sget-object v1, Lkkz;->SEGUNDA_VIA_LUZ:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 29
    new-instance v0, Lkli;

    invoke-direct {v0, p1}, Lkli;-><init>(Lklb;)V

    goto :goto_0

    .line 31
    :cond_5
    sget-object v1, Lkkz;->SEGUNDA_VIA_PGT_TITULOS:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32
    new-instance v0, Lklm;

    invoke-direct {v0, p1}, Lklm;-><init>(Lklb;)V

    goto :goto_0

    .line 34
    :cond_6
    sget-object v1, Lkkz;->SEGUNDA_VIA_TEL_FIXO:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 35
    new-instance v0, Lkli;

    invoke-direct {v0, p1}, Lkli;-><init>(Lklb;)V

    goto :goto_0

    .line 37
    :cond_7
    sget-object v1, Lkkz;->SEGUNDA_VIA_TEL_POS:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 38
    new-instance v0, Lkli;

    invoke-direct {v0, p1}, Lkli;-><init>(Lklb;)V

    goto/16 :goto_0

    .line 40
    :cond_8
    sget-object v1, Lkkz;->SEGUNDA_VIA_TEL_PRE:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 41
    new-instance v0, Lkll;

    invoke-direct {v0, p1}, Lkll;-><init>(Lklb;)V

    goto/16 :goto_0

    .line 43
    :cond_9
    sget-object v1, Lkkz;->SEGUNDA_VIA_TRANSF_MESMA:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 44
    new-instance v0, Lkln;

    invoke-direct {v0, p1}, Lkln;-><init>(Lklb;)V

    goto/16 :goto_0

    .line 46
    :cond_a
    sget-object v1, Lkkz;->SEGUNDA_VIA_TRANSF_TED:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 47
    new-instance v0, Lklk;

    invoke-direct {v0, p1}, Lklk;-><init>(Lklb;)V

    goto/16 :goto_0

    .line 49
    :cond_b
    sget-object v1, Lkkz;->SEGUNDA_VIA_TITULOS_OUTROS:Lkkz;

    invoke-virtual {v1}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 50
    new-instance v0, Lkli;

    invoke-direct {v0, p1}, Lkli;-><init>(Lklb;)V

    goto/16 :goto_0

    .line 53
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
