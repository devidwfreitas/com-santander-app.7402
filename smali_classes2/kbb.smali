.class public Lkbb;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lkbz;",
        "Ljava/lang/Void;",
        "Lkbs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

.field private b:Lkbs;


# direct methods
.method private constructor <init>(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;Lkba;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lkbb;-><init>(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lkbz;)Lkbs;
    .locals 6

    .prologue
    .line 109
    new-instance v1, Lkbz;

    invoke-direct {v1}, Lkbz;-><init>()V

    .line 110
    iget-object v0, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkbz;->setConnUuid(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkbz;->setTokenTransacao(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkbz;->setTokenSessao(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lkbu;

    move-result-object v0

    invoke-virtual {v0}, Lkbu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkbz;->a(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lkbu;

    move-result-object v0

    invoke-virtual {v0}, Lkbu;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkbz;->b(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0033"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->b(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lfuu;

    move-result-object v2

    invoke-virtual {v2}, Lfuu;->getAgencia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->b(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lfuu;

    move-result-object v2

    invoke-virtual {v2}, Lfuu;->getCuenta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkbz;->c(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 118
    const-class v2, Lkbs;

    invoke-static {}, Lhas;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "manterVisualizacaoInvestimentosATM"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbs;

    iput-object v0, p0, Lkbb;->b:Lkbs;

    .line 119
    iget-object v0, p0, Lkbb;->b:Lkbs;

    return-object v0
.end method

.method protected a(Lkbs;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->c(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->c(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->c(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 128
    iget-object v0, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v0, v2}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 131
    :cond_0
    if-nez p1, :cond_1

    .line 132
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    iget-object v1, v1, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v5, v5}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 186
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Lkbs;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lkbs;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    iget-object v1, v1, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lkbs;->getMensagemErro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    new-instance v1, Lgvb;

    invoke-direct {v1}, Lgvb;-><init>()V

    .line 138
    const-string v0, ""

    .line 140
    iget-object v2, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lkbu;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lkbu;

    move-result-object v2

    invoke-virtual {v2}, Lkbu;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "N\u00e3o bloquear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 142
    const-string v2, "abrirComprovanteDesbloqueioInvestLimitATM"

    invoke-virtual {v1, v2}, Lgvb;->i(Ljava/lang/String;)V

    .line 143
    const-string v2, "shareComprovanteDesbloqueioInvestLimitATM"

    invoke-virtual {v1, v2}, Lgvb;->j(Ljava/lang/String;)V

    .line 153
    :cond_3
    :goto_1
    iget-object v2, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->d(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 154
    iget-object v2, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->d(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 167
    :cond_4
    :goto_2
    iget-object v2, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->e(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    const v4, 0x7f09055f

    invoke-virtual {v3, v4}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lkbs;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgvb;->g(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lkbs;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgvb;->e(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lkbs;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgvb;->f(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1, v5}, Lgvb;->d(Z)V

    .line 173
    const-string v2, ""

    invoke-virtual {v1, v2}, Lgvb;->h(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    const v3, 0x7f09027b

    invoke-virtual {v2, v3}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgvb;->c(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lgvb;->r(Z)V

    .line 179
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    const-class v3, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    const-string v2, "comprovanteBase"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 144
    :cond_5
    iget-object v2, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lkbu;

    move-result-object v2

    invoke-virtual {v2}, Lkbu;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bloquear integralmente"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 145
    const-string v2, "abrirComprovanteBloqueioInvestLimitATM"

    invoke-virtual {v1, v2}, Lgvb;->i(Ljava/lang/String;)V

    .line 146
    const-string v2, "shareComprovanteBloqueioInvestLimitATM"

    invoke-virtual {v1, v2}, Lgvb;->j(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 147
    :cond_6
    iget-object v2, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lkbu;

    move-result-object v2

    invoke-virtual {v2}, Lkbu;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bloquear parcialmente"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    const-string v2, "abrirComprovanteBloqueioInvestLimitATM"

    invoke-virtual {v1, v2}, Lgvb;->i(Ljava/lang/String;)V

    .line 149
    const-string v2, "shareComprovanteBloqueioInvestLimitATM"

    invoke-virtual {v1, v2}, Lgvb;->j(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 156
    :sswitch_0
    const-string v0, "Investimento desbloqueado com sucesso!"

    goto/16 :goto_2

    .line 159
    :sswitch_1
    const-string v0, "Investimento bloqueado com sucesso!"

    goto/16 :goto_2

    .line 162
    :sswitch_2
    const-string v0, "Investimento bloqueado com sucesso!"

    goto/16 :goto_2

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    check-cast p1, [Lkbz;

    invoke-virtual {p0, p1}, Lkbb;->a([Lkbz;)Lkbs;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Lkbs;

    invoke-virtual {p0, p1}, Lkbb;->a(Lkbs;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 103
    iget-object v0, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    iget-object v1, p0, Lkbb;->a:Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 104
    return-void
.end method
