.class public Lcom/santander/app/emprestimo/creditounificado/presentation/CPUTermosCETActivity;
.super Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;-><init>()V

    return-void
.end method

.method private static a(Lhxn;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhxn;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v1, Lgky;

    const-string v2, "a) Taxa de juros:"

    invoke-interface {p0, v4}, Lhxn;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lgky;

    const-string v2, "   Custo Efetivo total (CET)**: "

    invoke-interface {p0, v4}, Lhxn;->b(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lgky;

    const-string v2, "Tipo de taxa de juros:  "

    const-string v3, "Pr\u00e9fixado"

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lgky;

    const-string v2, "b) Valor total devido no ato da contrata\u00e7\u00e3o: "

    invoke-interface {p0}, Lhxn;->A()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lgky;

    const-string v2, "   Percentual valor total \ndevido no ato da contrata\u00e7\u00e3o: "

    invoke-interface {p0}, Lhxn;->x()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lgky;

    const-string v2, "c) Valor do IOF (Financiado): "

    invoke-interface {p0}, Lhxn;->C()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lgky;

    const-string v2, "   Percentual valor do IOF (Financiado): "

    invoke-interface {p0}, Lhxn;->D()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lgky;

    const-string v2, "d) Valor do seguro (Financiado): "

    invoke-interface {p0}, Lhxn;->E()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lgky;

    const-string v2, "   Percentual valor do seguro (Financiado): "

    invoke-interface {p0}, Lhxn;->F()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lgky;

    const-string v2, "e) Valor liberado: "

    invoke-interface {p0}, Lhxn;->w()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lgky;

    const-string v2, "   Percentual valor liberado: "

    invoke-interface {p0}, Lhxn;->B()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lgky;

    const-string v2, "f) Data/hora do c\u00e1lculo*: "

    invoke-interface {p0}, Lhxn;->H()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lgky;

    const-string v2, "g) Quantidade de parcela: "

    invoke-interface {p0}, Lhxn;->u()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lgky;

    const-string v2, "h) Valor da parcela: "

    invoke-interface {p0}, Lhxn;->G()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lgky;

    const-string v2, "i) Data da 1\u00aa parcela "

    invoke-interface {p0}, Lhxn;->I()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lgky;

    const-string v2, "   Data \u00faltima parcela: "

    invoke-interface {p0}, Lhxn;->J()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lgky;

    sget-object v2, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUTermosCETActivity;->b:Ljava/lang/String;

    const-string v3, "*As condi\u00e7\u00f5es calculadas s\u00e3o v\u00e1lidas para o Canal Internet e Mobile at\u00e9 \u00e0s 18h00min da data acima indicada. Este documento trata-se de demonstrativo n\u00e3o constituindo obriga\u00e7\u00e3o do Banco Santander (Brasil) S.A. conceder o empr\u00e9stimo. A efetiva concess\u00e3o est\u00e1 sujeita \u00e0 an\u00e1lise de cr\u00e9dito e demais condi\u00e7\u00f5es do produto. Hor\u00e1rio de Bras\u00edlia.\n ** Para efeito do c\u00e1lculo do Custo Efetivo Total (CET) foram considerados os itens indicados com as letras (a) \u00e0 (i)."

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lhxn;)V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUTermosCETActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    const-string v1, "EXTRA_TERMO"

    invoke-static {p1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUTermosCETActivity;->a(Lhxn;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method
