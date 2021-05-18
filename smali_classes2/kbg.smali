.class public Lkbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/SeekBar;

.field final synthetic b:I

.field final synthetic c:Landroid/app/Dialog;

.field final synthetic d:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/widget/SeekBar;ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lkbg;->d:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iput-object p2, p0, Lkbg;->a:Landroid/widget/SeekBar;

    iput p3, p0, Lkbg;->b:I

    iput-object p4, p0, Lkbg;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lkbg;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lkbg;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 402
    iget-object v0, p0, Lkbg;->d:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget v1, p0, Lkbg;->b:I

    invoke-virtual {v0, v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(I)V

    .line 404
    iget-object v0, p0, Lkbg;->d:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->l(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lkbg;->d:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

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

    .line 418
    :cond_1
    :goto_1
    iget-object v0, p0, Lkbg;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 419
    return-void

    .line 405
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

    .line 407
    :pswitch_4
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_NaoBloquear_Confirmacao_PopUp_Acao"

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 410
    :pswitch_5
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Bloquear18hAte9h_Confirmacao_PopUp_Acao"

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 413
    :pswitch_6
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Bloquear24h_Confirmacao_PopUp_Acao"

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 405
    nop

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
