.class public Lhig;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lhiz;",
        "Ljava/lang/Void;",
        "Lhiw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 281
    iput-object p2, p0, Lhig;->b:Ljava/lang/String;

    .line 282
    iput-object p3, p0, Lhig;->c:Ljava/lang/String;

    .line 283
    return-void
.end method

.method private a(Lhiz;)Lhjc;
    .locals 4

    .prologue
    .line 324
    new-instance v1, Lhjc;

    invoke-direct {v1}, Lhjc;-><init>()V

    .line 325
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhjc;->setAgencia(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhjc;->setConta(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lhiz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhjc;->b(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lhiz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhjc;->c(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lhig;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhig;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lhjc;->d(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lhig;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lhjc;->a(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    iget-object v0, v0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->v:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhjc;->setConnUuid(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    iget-object v0, v0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->v:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhjc;->setTokenSessao(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    iget-object v0, v0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhjc;->setTokenTransacao(Ljava/lang/String;)V

    .line 335
    return-object v1

    .line 329
    :cond_0
    invoke-virtual {p1}, Lhiz;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 341
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    new-instance v1, Ljava/lang/Double;

    iget-object v2, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v2}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->j(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Lhiw;

    move-result-object v2

    invoke-virtual {v2}, Lhiw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    const-string v3, "BR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    new-instance v2, Ljava/lang/Double;

    iget-object v3, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v3}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->j(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Lhiw;

    move-result-object v3

    invoke-virtual {v3}, Lhiw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 345
    iget-object v2, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v2}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->k(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->l(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->m(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->j(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Lhiw;

    move-result-object v1

    invoke-virtual {v1}, Lhiw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    const v1, 0x7f10087c

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 350
    return-void
.end method


# virtual methods
.method protected varargs a([Lhiz;)Lhiw;
    .locals 7

    .prologue
    .line 316
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lhig;->a(Lhiz;)Lhjc;

    move-result-object v1

    .line 317
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 318
    iget-object v6, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    const-class v2, Lhiw;

    invoke-static {}, Lhas;->T()Ljava/lang/String;

    move-result-object v3

    const-string v4, "consultarLimitesAntecipacao13"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhiw;

    invoke-static {v6, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;Lhiw;)Lhiw;

    .line 320
    iget-object v0, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->j(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Lhiw;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lhiw;)V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->i(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->i(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 298
    iget-object v0, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 301
    :cond_0
    if-eqz p1, :cond_1

    .line 303
    invoke-virtual {p1}, Lhiw;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    invoke-direct {p0}, Lhig;->a()V

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 306
    :cond_2
    iget-object v0, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lhiw;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    check-cast p1, [Lhiz;

    invoke-virtual {p0, p1}, Lhig;->a([Lhiz;)Lhiw;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 275
    check-cast p1, Lhiw;

    invoke-virtual {p0, p1}, Lhig;->a(Lhiw;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 288
    iget-object v0, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    iget-object v1, p0, Lhig;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 289
    return-void
.end method
