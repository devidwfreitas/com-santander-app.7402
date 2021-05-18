.class public Lkbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/widget/SeekBar;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/app/Dialog;Landroid/widget/SeekBar;II)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lkbf;->e:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iput-object p2, p0, Lkbf;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lkbf;->b:Landroid/widget/SeekBar;

    iput p4, p0, Lkbf;->c:I

    iput p5, p0, Lkbf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lkbf;->e:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->j(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lkbu;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lkbf;->e:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->l(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lkbf;->e:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->l(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    packed-switch v0, :pswitch_data_1

    .line 382
    :cond_1
    :goto_1
    iget-object v0, p0, Lkbf;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 383
    iget-object v0, p0, Lkbf;->b:Landroid/widget/SeekBar;

    iget v1, p0, Lkbf;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 384
    iget-object v0, p0, Lkbf;->e:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget v1, p0, Lkbf;->c:I

    invoke-virtual {v0, v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(I)V

    .line 386
    iget-object v0, p0, Lkbf;->e:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->j(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lkbu;

    move-result-object v0

    iget-object v1, p0, Lkbf;->e:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->l(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkbu;->g(Ljava/lang/String;)V

    .line 387
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lkbf;->e:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    const-class v2, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    const-string v1, "investimento_no_atm"

    iget-object v2, p0, Lkbf;->e:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->j(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lkbu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 389
    const-string v1, "posicaoFinal"

    iget v2, p0, Lkbf;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    const-string v1, "posicaoInicial"

    iget v2, p0, Lkbf;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    const-string v1, "cuentaBean"

    iget-object v2, p0, Lkbf;->e:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->h(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 392
    iget-object v1, p0, Lkbf;->e:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->startActivity(Landroid/content/Intent;)V

    .line 394
    :cond_2
    return-void

    .line 370
    :pswitch_1
    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const-string v2, "P"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const-string v2, "N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 372
    :pswitch_4
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_NaoBloquear_Confirmacao_PopUp_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 375
    :pswitch_5
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Bloquear18hAte9h_Confirmacao_PopUp_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 378
    :pswitch_6
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Bloquear24h_Confirmacao_PopUp_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 370
    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
