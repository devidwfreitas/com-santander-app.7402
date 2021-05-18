.class public Lfiz;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfud;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;


# direct methods
.method private constructor <init>(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;Lfiy;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lfiz;-><init>(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfud;
    .locals 6

    .prologue
    .line 224
    .line 225
    :try_start_0
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v0

    iget-object v1, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-static {v1}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->c(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Lghu;

    move-result-object v1

    iget-object v2, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-static {v2}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    iget-object v3, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-static {v3}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->e(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-static {v4}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->f(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-static {v5}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->g(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lhbc;->a(Lghu;Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lfud;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfud;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 237
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lfud;->hasError()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    iget-object v0, v0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    iget-object v0, v0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    iget-object v0, v0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 240
    iget-object v0, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    iput-object v1, v0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a:Landroid/app/Dialog;

    .line 242
    :cond_0
    invoke-virtual {p1}, Lfud;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lfud;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-static {v0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->h(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)V

    .line 256
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-static {v1}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->b(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    iget-object v0, v0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    iget-object v0, v0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    iget-object v0, v0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 252
    iget-object v0, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    iput-object v1, v0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a:Landroid/app/Dialog;

    .line 254
    :cond_3
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-static {v1}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->b(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfiz;->a([Ljava/lang/Void;)Lfud;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 214
    check-cast p1, Lfud;

    invoke-virtual {p0, p1}, Lfiz;->a(Lfud;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    iget-object v1, p0, Lfiz;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-static {v1}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->b(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a:Landroid/app/Dialog;

    .line 219
    return-void
.end method
