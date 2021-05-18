.class public Lfnf;
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
.field final synthetic a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Lfmy;)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lfnf;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftm;
    .locals 3

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 408
    iget-object v1, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;

    move-result-object v1

    if-nez v1, :cond_0

    .line 409
    iget-object v1, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    new-instance v2, Lfwb;

    invoke-direct {v2}, Lfwb;-><init>()V

    invoke-static {v1, v2}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->a(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Lfwb;)Lfwb;

    .line 413
    :cond_0
    :try_start_0
    iget-object v1, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;

    move-result-object v1

    invoke-virtual {v1}, Lfwb;->g()Lftm;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    .line 414
    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;

    move-result-object v1

    invoke-virtual {v1}, Lfwb;->g()Lftm;

    move-result-object v1

    invoke-virtual {v1}, Lftm;->a()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;

    move-result-object v1

    invoke-virtual {v1}, Lfwb;->g()Lftm;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    .line 417
    :cond_1
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v1

    invoke-virtual {v1}, Lhbh;->a()Lftm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    .line 421
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

    .line 429
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->e(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->e(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->e(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 431
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0, v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->a(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 433
    :cond_0
    if-nez p1, :cond_1

    .line 434
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 479
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-virtual {p1}, Lftm;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 441
    :cond_2
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfwb;->a(Lftm;)V

    .line 443
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->f(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->g(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V

    .line 445
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->h(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lnfe;

    move-result-object v0

    invoke-virtual {v0}, Lnfe;->a()V

    .line 446
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0, v2}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->a(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Z)Z

    goto :goto_0

    .line 450
    :cond_3
    invoke-virtual {p1}, Lftm;->a()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lftm;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 453
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    iget-object v0, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 454
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getExtractoHome()Lfuy;

    move-result-object v0

    invoke-virtual {v0}, Lfuy;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v0}, Lnaj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "R$"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 457
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;

    move-result-object v0

    invoke-virtual {v0}, Lfwb;->g()Lftm;

    move-result-object v0

    invoke-virtual {v0}, Lftm;->a()Ljava/util/Vector;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    .line 461
    invoke-virtual {v0}, Lftq;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0106"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 467
    :goto_1
    if-eqz v0, :cond_5

    .line 468
    iget-object v1, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->a(Lftq;)V

    goto/16 :goto_0

    .line 470
    :cond_5
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->g(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V

    .line 471
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->h(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lnfe;

    move-result-object v0

    invoke-virtual {v0}, Lnfe;->a()V

    goto/16 :goto_0

    .line 475
    :cond_6
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-virtual {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 396
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfnf;->a([Ljava/lang/Void;)Lftm;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 396
    check-cast p1, Lftm;

    invoke-virtual {p0, p1}, Lfnf;->a(Lftm;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    iget-object v1, p0, Lfnf;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->a(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 402
    return-void
.end method
