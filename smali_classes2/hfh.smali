.class Lhfh;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/santander/app/components/view/SantanderTextView;

.field private b:Lhff;

.field private c:Lhgb;


# direct methods
.method constructor <init>(Lhff;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    iput-object p1, p0, Lhfh;->b:Lhff;

    .line 73
    const v0, 0x7f100462

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhfh;->a:Lcom/santander/app/components/view/SantanderTextView;

    .line 75
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method a(Lhgb;)V
    .locals 2

    .prologue
    .line 79
    iput-object p1, p0, Lhfh;->c:Lhgb;

    .line 80
    iget-object v0, p0, Lhfh;->a:Lcom/santander/app/components/view/SantanderTextView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lhfh;->a:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhgb;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lhfh;->b:Lhff;

    invoke-static {v0}, Lhff;->a(Lhff;)Lhfg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lhfh;->c:Lhgb;

    invoke-interface {v0}, Lhgb;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_1
    iget-object v0, p0, Lhfh;->b:Lhff;

    invoke-static {v0}, Lhff;->a(Lhff;)Lhfg;

    move-result-object v0

    iget-object v1, p0, Lhfh;->c:Lhgb;

    invoke-interface {v0, v1}, Lhfg;->a(Lhgb;)V

    .line 101
    :cond_1
    return-void

    .line 88
    :sswitch_0
    const-string v2, "Contrato de Renegocia\u00e7\u00e3o."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "Condi\u00e7\u00f5es Gerais."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "Custo Efetivo Total (CET)."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 90
    :pswitch_0
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_InformativoResumoContratual_Acao"

    const-string v1, "Refinanciamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :pswitch_1
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_InformativoCondicoesGeraisEmprestimo_Acao"

    const-string v1, "Refinanciamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :pswitch_2
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_InformativoCET_Acao"

    const-string v1, "Refinanciamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0xc0fe3c9 -> :sswitch_0
        0x5c0cd65a -> :sswitch_1
        0x7747f71d -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
