.class public Lfmh;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lftp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaAplicacaoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Lflx;)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lfmh;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftp;
    .locals 6

    .prologue
    .line 534
    :try_start_0
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iget-object v0, v0, Lcom/santander/app/RendaFixaAplicacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->j(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 536
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    .line 537
    invoke-static {v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->e(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lftq;

    move-result-object v3

    invoke-virtual {v3}, Lftq;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    .line 538
    invoke-static {v4}, Lcom/santander/app/RendaFixaAplicacaoActivity;->k(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xf

    invoke-static {v4, v5}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 536
    invoke-virtual {v1, v2, v0, v3, v4}, Lhbh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lftp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 543
    :goto_0
    return-object v0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lftp;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 548
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lftp;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    :cond_0
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 551
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 554
    :cond_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 580
    :goto_0
    return-void

    .line 556
    :cond_2
    invoke-virtual {p1}, Lftp;->e()Z

    move-result v0

    if-nez v0, :cond_8

    .line 557
    invoke-virtual {p1}, Lftp;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iget-object v0, v0, Lcom/santander/app/RendaFixaAplicacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 558
    :cond_3
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    new-instance v1, Lfmf;

    iget-object v2, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {v1, v2, v3}, Lfmf;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Lflx;)V

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Lfmf;)Lfmf;

    .line 559
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->l(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lfmf;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfmf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 561
    :cond_4
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 562
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 563
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 566
    :cond_5
    invoke-virtual {p1}, Lftp;->a()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lftp;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 567
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v0

    iget-object v1, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-virtual {v2}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0908a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    .line 568
    invoke-virtual {v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-static {v0, v1, v2, v5, v3}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 569
    :cond_6
    invoke-virtual {p1}, Lftp;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 570
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-virtual {p1}, Lftp;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    :cond_7
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto/16 :goto_0

    .line 576
    :cond_8
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    new-instance v1, Lfmf;

    iget-object v2, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {v1, v2, v3}, Lfmf;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Lflx;)V

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Lfmf;)Lfmf;

    .line 577
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->l(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lfmf;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfmf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 521
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfmh;->a([Ljava/lang/Void;)Lftp;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 521
    check-cast p1, Lftp;

    invoke-virtual {p0, p1}, Lfmh;->a(Lftp;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 528
    :cond_0
    iget-object v0, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iget-object v1, p0, Lfmh;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 529
    return-void
.end method
