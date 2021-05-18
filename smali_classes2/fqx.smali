.class public Lfqx;
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
.field final synthetic a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lfrb;)Lfrb;
    .locals 2

    .prologue
    .line 163
    :try_start_0
    new-instance v0, Lfrf;

    invoke-direct {v0}, Lfrf;-><init>()V

    .line 164
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lfrb;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->b(Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lfrb;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->c(Ljava/lang/String;)V

    .line 166
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lfrb;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->d(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->setConnUuid(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->setTokenSessao(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrf;->setTokenTransacao(Ljava/lang/String;)V

    .line 171
    new-instance v1, Lfrj;

    invoke-direct {v1}, Lfrj;-><init>()V

    invoke-virtual {v1, v0}, Lfrj;->a(Lfrf;)Lfrb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfrb;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 182
    :try_start_0
    iget-object v0, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->c(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->c(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->c(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 184
    iget-object v0, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 191
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, v3, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 215
    :goto_1
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p1}, Lfrb;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 193
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lfrb;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {p1}, Lfrb;->ar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-virtual {v1}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09043d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-virtual {p1}, Lfrb;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {p1}, Lfrb;->ae()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 200
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 202
    :try_start_1
    invoke-virtual {p1}, Lfrb;->ae()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p1, v0}, Lfrb;->ad(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    :cond_4
    :goto_2
    iget-object v0, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    iget-object v0, v0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lfrb;->au()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;Lfrb;)V

    .line 212
    iget-object v0, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->b(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;Lfrb;)Lfrb;

    goto :goto_1

    .line 204
    :catch_1
    move-exception v0

    .line 205
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    check-cast p1, [Lfrb;

    invoke-virtual {p0, p1}, Lfqx;->a([Lfrb;)Lfrb;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Lfrb;

    invoke-virtual {p0, p1}, Lfqx;->a(Lfrb;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    iget-object v1, p0, Lfqx;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
