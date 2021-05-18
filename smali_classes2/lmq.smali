.class Llmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llmi;


# direct methods
.method constructor <init>(Llmi;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Llmq;->a:Llmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Llmq;->a:Llmi;

    invoke-static {v0}, Llmi;->i(Llmi;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Llmq;->a:Llmi;

    invoke-static {v0}, Llmi;->h(Llmi;)Llmr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Llmq;->a:Llmi;

    invoke-static {v0}, Llmi;->b(Llmi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    const-string v0, "Seguros_Contratacao_Vida_Beneficiarios_GrauParentesco_Acao"

    iget-object v1, p0, Llmq;->a:Llmi;

    invoke-static {v1}, Llmi;->g(Llmi;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v0, "Seguros_Contratacao_Vida_Beneficiarios_PorcentagemParticipacao_Acao"

    iget-object v1, p0, Llmq;->a:Llmi;

    invoke-static {v1}, Llmi;->f(Llmi;)Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->getProgress()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lmhj;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "Seguros_Contratacao_Vida_Beneficiarios_Acao"

    const-string v1, "Salvar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_2
    :goto_1
    new-instance v0, Lkpw;

    invoke-direct {v0}, Lkpw;-><init>()V

    .line 337
    iget-object v1, p0, Llmq;->a:Llmi;

    invoke-static {v1}, Llmi;->j(Llmi;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkpw;->b(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Llmq;->a:Llmi;

    invoke-static {v1}, Llmi;->f(Llmi;)Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkpw;->d(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Llmq;->a:Llmi;

    invoke-static {v1}, Llmi;->g(Llmi;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkpw;->c(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Llmq;->a:Llmi;

    invoke-virtual {v1}, Llmi;->dismiss()V

    .line 341
    iget-object v1, p0, Llmq;->a:Llmi;

    invoke-static {v1}, Llmi;->h(Llmi;)Llmr;

    move-result-object v1

    invoke-interface {v1, v0}, Llmr;->a(Lkpw;)V

    goto/16 :goto_0

    .line 328
    :cond_3
    iget-object v0, p0, Llmq;->a:Llmi;

    invoke-static {v0}, Llmi;->b(Llmi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    const-string v0, "Seguros_Contratacao_AP_Beneficiarios_GrauParentesco_Acao"

    iget-object v1, p0, Llmq;->a:Llmi;

    invoke-static {v1}, Llmi;->g(Llmi;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "Seguros_Contratacao_AP_Beneficiarios_PorcentagemParticipacao_Acao"

    iget-object v1, p0, Llmq;->a:Llmi;

    invoke-static {v1}, Llmi;->f(Llmi;)Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->getProgress()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lmhj;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "Seguros_Contratacao_AP_Beneficiarios_Acao"

    const-string v1, "Salvar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
