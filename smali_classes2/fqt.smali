.class public Lfqt;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lfrb;",
        "Ljava/lang/Void;",
        "Lfrb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lfrb;)Lfrb;
    .locals 2

    .prologue
    .line 94
    :try_start_0
    new-instance v0, Lfrf;

    invoke-direct {v0}, Lfrf;-><init>()V

    .line 95
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lfrb;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->b(Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lfrb;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->c(Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lfrb;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->d(Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lfrb;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->a(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->setConnUuid(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->setTokenSessao(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->setTokenTransacao(Ljava/lang/String;)V

    .line 103
    new-instance v1, Lfrj;

    invoke-direct {v1}, Lfrj;-><init>()V

    invoke-virtual {v1, v0}, Lfrj;->b(Lfrf;)Lfrb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfrb;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 115
    iget-object v0, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 122
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->i:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 138
    :goto_1
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Lfrb;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lfrb;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p1}, Lfrb;->ar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    invoke-virtual {v1}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09043d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    invoke-virtual {p1}, Lfrb;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :cond_3
    iget-object v0, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->b(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;)Lfrb;

    move-result-object v0

    invoke-virtual {p1}, Lfrb;->e()Lfre;

    move-result-object v1

    invoke-virtual {v1}, Lfre;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->l(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->b(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;)Lfrb;

    move-result-object v0

    invoke-virtual {p1}, Lfrb;->e()Lfre;

    move-result-object v1

    invoke-virtual {v1}, Lfre;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->k(Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    const-class v2, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const-string v1, "EXTRADADOS"

    iget-object v2, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    invoke-static {v2}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->b(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;)Lfrb;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    check-cast p1, [Lfrb;

    invoke-virtual {p0, p1}, Lfqt;->a([Lfrb;)Lfrb;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    check-cast p1, Lfrb;

    invoke-virtual {p0, p1}, Lfqt;->a(Lfrb;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    iget-object v1, p0, Lfqt;->a:Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
