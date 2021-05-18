.class public Ljkn;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lftm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;Ljkh;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Ljkn;-><init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftm;
    .locals 3

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 307
    :try_start_0
    iget-object v1, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->c(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lfwb;

    move-result-object v1

    invoke-virtual {v1}, Lfwb;->g()Lftm;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    .line 308
    invoke-static {v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->c(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lfwb;

    move-result-object v1

    invoke-virtual {v1}, Lfwb;->g()Lftm;

    move-result-object v1

    invoke-virtual {v1}, Lftm;->a()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->c(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lfwb;

    move-result-object v1

    invoke-virtual {v1}, Lfwb;->g()Lftm;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 311
    :cond_0
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v1

    invoke-virtual {v1}, Lhbh;->a()Lftm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lftm;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->b(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->b(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->b(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 325
    iget-object v0, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->a(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 327
    :cond_0
    if-nez p1, :cond_1

    .line 328
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    iget-object v1, v1, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 365
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-virtual {p1}, Lftm;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    iget-object v1, v1, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->c(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lfwb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfwb;->a(Lftm;)V

    .line 337
    invoke-virtual {p1}, Lftm;->a()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lftm;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 340
    iget-object v0, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    iget-object v0, v0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 341
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getExtractoHome()Lfuy;

    move-result-object v0

    invoke-virtual {v0}, Lfuy;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lnaj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "R$"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 344
    iget-object v0, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->c(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lfwb;

    move-result-object v0

    invoke-virtual {v0}, Lfwb;->g()Lftm;

    move-result-object v0

    invoke-virtual {v0}, Lftm;->a()Ljava/util/Vector;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    .line 348
    invoke-virtual {v0}, Lftq;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0106"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 354
    :goto_1
    if-eqz v0, :cond_4

    .line 355
    iget-object v1, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->a(Lftq;)V

    goto/16 :goto_0

    .line 357
    :cond_4
    iget-object v0, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->d(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V

    .line 358
    iget-object v0, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->e(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lnfe;

    move-result-object v0

    invoke-virtual {v0}, Lnfe;->a()V

    goto/16 :goto_0

    .line 362
    :cond_5
    iget-object v0, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    iget-object v0, v0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->i:Landroid/app/Activity;

    iget-object v1, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-virtual {v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljkn;->a([Ljava/lang/Void;)Lftm;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 294
    check-cast p1, Lftm;

    invoke-virtual {p0, p1}, Ljkn;->a(Lftm;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    iget-object v1, p0, Ljkn;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    iget-object v1, v1, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->a(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 300
    return-void
.end method
