.class public Lkaz;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lkbv;",
        "Ljava/lang/Void;",
        "Lkbo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

.field private b:Lkbo;


# direct methods
.method private constructor <init>(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;Lkay;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lkaz;-><init>(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lkbv;)Lkbo;
    .locals 6

    .prologue
    .line 169
    new-instance v1, Lkbv;

    invoke-direct {v1}, Lkbv;-><init>()V

    .line 170
    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkbv;->setConnUuid(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkbv;->setTokenTransacao(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkbv;->setTokenSessao(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Lkbq;

    move-result-object v0

    invoke-virtual {v0}, Lkbq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkbv;->c(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Lkbq;

    move-result-object v0

    invoke-virtual {v0}, Lkbq;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkbv;->a(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Lkbq;

    move-result-object v0

    invoke-virtual {v0}, Lkbq;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkbv;->b(Ljava/lang/String;)V

    .line 177
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 178
    const-class v2, Lkbo;

    invoke-static {}, Lhas;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v4}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->b(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbo;

    iput-object v0, p0, Lkaz;->b:Lkbo;

    .line 179
    iget-object v0, p0, Lkaz;->b:Lkbo;

    return-object v0
.end method

.method protected a(Lkbo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 184
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->c(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->c(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->c(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 188
    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 191
    :cond_0
    if-nez p1, :cond_2

    .line 192
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    iget-object v1, v1, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, v3, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    invoke-virtual {p1}, Lkbo;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lkbo;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    iget-object v1, v1, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lkbo;->getMensagemErro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p1}, Lkbo;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;Lkbo;)Lkbo;

    .line 198
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 200
    iget-object v1, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->d(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->i(Ljava/lang/String;)V

    .line 201
    const-string v1, "shareComprovanteGerenDispositivo"

    invoke-virtual {v0, v1}, Lgvb;->j(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->e(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    const v3, 0x7f0904f0

    invoke-virtual {v2, v3}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lkbo;->a()Lkbn;

    move-result-object v2

    invoke-virtual {v2}, Lkbn;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->g(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lkbo;->a()Lkbn;

    move-result-object v1

    invoke-virtual {v1}, Lkbn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lkbo;->a()Lkbn;

    move-result-object v1

    invoke-virtual {v1}, Lkbn;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgvb;->d(Z)V

    .line 207
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->h(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    const v2, 0x7f090aae

    invoke-virtual {v1, v2}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->f(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 211
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    const-class v3, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    const-string v2, "comprovanteBase"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 213
    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    check-cast p1, [Lkbv;

    invoke-virtual {p0, p1}, Lkaz;->a([Lkbv;)Lkbo;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 156
    check-cast p1, Lkbo;

    invoke-virtual {p0, p1}, Lkaz;->a(Lkbo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 163
    iget-object v0, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    iget-object v1, p0, Lkaz;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 164
    return-void
.end method
