.class public Lgvh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfrb;)Lgvv;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lgvg;->TRANSFERENCIA_ENTRE_CONTAS:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 19
    new-instance v0, Lgvr;

    invoke-direct {v0, p1}, Lgvr;-><init>(Lfrb;)V

    .line 72
    :goto_0
    return-object v0

    .line 21
    :cond_0
    sget-object v0, Lgvg;->APLICACAO_POUPANCA:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 22
    new-instance v0, Lgve;

    invoke-direct {v0, p1}, Lgve;-><init>(Lfrb;)V

    goto :goto_0

    .line 24
    :cond_1
    sget-object v0, Lgvg;->RESGATE_PARCIAL_POUPANCA:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 25
    new-instance v0, Lgvp;

    invoke-direct {v0, p1}, Lgvp;-><init>(Lfrb;)V

    goto :goto_0

    .line 27
    :cond_2
    sget-object v0, Lgvg;->RESGATE_TOTAL_POUPANCA:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 28
    new-instance v0, Lgvo;

    invoke-direct {v0, p1}, Lgvo;-><init>(Lfrb;)V

    goto :goto_0

    .line 30
    :cond_3
    sget-object v0, Lgvg;->FATURA_CARTAO:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 31
    new-instance v0, Lgvl;

    invoke-direct {v0, p1}, Lgvl;-><init>(Lfrb;)V

    goto :goto_0

    .line 33
    :cond_4
    sget-object v0, Lgvg;->APLICACAO_FUNDOS:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 34
    new-instance v0, Lgvd;

    invoke-direct {v0, p1}, Lgvd;-><init>(Lfrb;)V

    goto :goto_0

    .line 36
    :cond_5
    sget-object v0, Lgvg;->REAPLICACAO_FUNDOS:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 37
    new-instance v0, Lgvd;

    invoke-direct {v0, p1}, Lgvd;-><init>(Lfrb;)V

    goto/16 :goto_0

    .line 39
    :cond_6
    sget-object v0, Lgvg;->RESGATE_PARCIAL_FUNDOS:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 40
    new-instance v0, Lgvo;

    invoke-direct {v0, p1}, Lgvo;-><init>(Lfrb;)V

    goto/16 :goto_0

    .line 42
    :cond_7
    sget-object v0, Lgvg;->RESGATE_TOTAL_FUNDOS:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 43
    new-instance v0, Lgvo;

    invoke-direct {v0, p1}, Lgvo;-><init>(Lfrb;)V

    goto/16 :goto_0

    .line 45
    :cond_8
    sget-object v0, Lgvg;->PAGAMENTO_CONTAS:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 46
    new-instance v0, Lgvk;

    invoke-direct {v0, p1}, Lgvk;-><init>(Lfrb;)V

    goto/16 :goto_0

    .line 48
    :cond_9
    sget-object v0, Lgvg;->REGARGA_CELULAR:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 49
    new-instance v0, Lgvm;

    invoke-direct {v0, p1}, Lgvm;-><init>(Lfrb;)V

    goto/16 :goto_0

    .line 51
    :cond_a
    sget-object v0, Lgvg;->PAGAMENTO_TITULO:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 52
    new-instance v0, Lgvj;

    invoke-direct {v0, p1}, Lgvj;-><init>(Lfrb;)V

    goto/16 :goto_0

    .line 54
    :cond_b
    sget-object v0, Lgvg;->TRANSFERENCIA_DOC_D:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 55
    new-instance v0, Lgvq;

    invoke-direct {v0, p1}, Lgvq;-><init>(Lfrb;)V

    goto/16 :goto_0

    .line 57
    :cond_c
    sget-object v0, Lgvg;->TRANSFERENCIA_DOC_E:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 58
    new-instance v0, Lgvq;

    invoke-direct {v0, p1}, Lgvq;-><init>(Lfrb;)V

    goto/16 :goto_0

    .line 60
    :cond_d
    sget-object v0, Lgvg;->TRANSFERENCIA_TED:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 61
    new-instance v0, Lgvq;

    invoke-direct {v0, p1}, Lgvq;-><init>(Lfrb;)V

    goto/16 :goto_0

    .line 63
    :cond_e
    sget-object v0, Lgvg;->APLICACAO_CDB:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 64
    new-instance v0, Lgvc;

    invoke-direct {v0, p1}, Lgvc;-><init>(Lfrb;)V

    goto/16 :goto_0

    .line 66
    :cond_f
    sget-object v0, Lgvg;->RESGATE_PARCIAL_CDB:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 67
    new-instance v0, Lgvc;

    invoke-direct {v0, p1}, Lgvc;-><init>(Lfrb;)V

    goto/16 :goto_0

    .line 69
    :cond_10
    sget-object v0, Lgvg;->RESGATE_TOTAL_CDB:Lgvg;

    invoke-virtual {v0}, Lgvg;->getValor()I

    move-result v0

    invoke-virtual {p1}, Lfrb;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 70
    new-instance v0, Lgvc;

    invoke-direct {v0, p1}, Lgvc;-><init>(Lfrb;)V

    goto/16 :goto_0

    .line 72
    :cond_11
    new-instance v0, Lgvj;

    invoke-direct {v0, p1}, Lgvj;-><init>(Lfrb;)V

    goto/16 :goto_0
.end method
