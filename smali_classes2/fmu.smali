.class public Lfmu;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lftv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaResgateActivity;

.field private b:Lftw;


# direct methods
.method private constructor <init>(Lcom/santander/app/RendaFixaResgateActivity;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/RendaFixaResgateActivity;Lfml;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lfmu;-><init>(Lcom/santander/app/RendaFixaResgateActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftv;
    .locals 2

    .prologue
    .line 613
    .line 614
    :try_start_0
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    iget-object v1, p0, Lfmu;->b:Lftw;

    .line 615
    invoke-virtual {v0, v1}, Lhbh;->a(Lftw;)Lftv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lftv;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 625
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lftv;->hasError()Z

    move-result v0

    if-nez v0, :cond_3

    .line 626
    invoke-virtual {p1}, Lftv;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lftv;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 628
    :cond_0
    invoke-virtual {p1}, Lftv;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    iget-object v1, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->k(Lcom/santander/app/RendaFixaResgateActivity;)Lftn;

    move-result-object v0

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v2}, Lcom/santander/app/RendaFixaResgateActivity;->t(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    invoke-virtual {v0}, Lftk;->d()Lftf;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;Lftf;)Lftf;

    .line 630
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;)Lftf;

    move-result-object v0

    invoke-virtual {v0}, Lftf;->f()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->u(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfte;

    .line 643
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v2}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v2

    const-class v3, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 644
    const-string v2, "simularParameters"

    iget-object v3, p0, Lfmu;->b:Lftw;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 645
    const-string v2, "SimularResgateRendaFixaBean"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 646
    const-string v2, "DadosResgateListAplicacaoRendaFixaBean"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 647
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/santander/app/RendaFixaResgateActivity;->startActivity(Landroid/content/Intent;)V

    .line 654
    :goto_0
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 656
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0, v4}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 671
    :cond_1
    :goto_1
    return-void

    .line 650
    :cond_2
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v0

    invoke-virtual {p1}, Lftv;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lftv;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lftv;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 659
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 660
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 661
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0, v4}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 663
    :cond_4
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v1

    invoke-virtual {p1}, Lftv;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 665
    :cond_5
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 666
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 667
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0, v4}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 669
    :cond_6
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto/16 :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 554
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfmu;->a([Ljava/lang/Void;)Lftv;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 554
    check-cast p1, Lftv;

    invoke-virtual {p0, p1}, Lfmu;->a(Lftv;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 560
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    iget-object v1, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 561
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 562
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 564
    new-instance v2, Lftw;

    invoke-direct {v2}, Lftw;-><init>()V

    iput-object v2, p0, Lfmu;->b:Lftw;

    .line 565
    iget-object v2, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v2}, Lcom/santander/app/RendaFixaResgateActivity;->r(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 567
    :try_start_0
    iget-object v2, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v2}, Lcom/santander/app/RendaFixaResgateActivity;->s(Lcom/santander/app/RendaFixaResgateActivity;)Lfos;

    move-result-object v2

    invoke-virtual {v2}, Lfos;->b()Ljava/lang/String;

    move-result-object v2

    .line 568
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 569
    iget-object v0, p0, Lfmu;->b:Lftw;

    invoke-virtual {v0, v2}, Lftw;->a(Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhau;->a(Z)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :cond_0
    :goto_0
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->k(Lcom/santander/app/RendaFixaResgateActivity;)Lftn;

    move-result-object v0

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->t(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    .line 583
    invoke-virtual {v0}, Lftk;->d()Lftf;

    move-result-object v1

    invoke-virtual {v1}, Lftf;->f()Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    .line 584
    invoke-static {v2}, Lcom/santander/app/RendaFixaResgateActivity;->u(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfte;

    .line 586
    iget-object v2, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    iget-object v2, v2, Lcom/santander/app/RendaFixaResgateActivity;->v:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->q()Lgvx;

    move-result-object v2

    invoke-interface {v2}, Lgvx;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v3}, Lcom/santander/app/RendaFixaResgateActivity;->v(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/santander/app/contacorrente/domain/Conta;

    .line 588
    iget-object v3, p0, Lfmu;->b:Lftw;

    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lftw;->i(Ljava/lang/String;)V

    .line 589
    iget-object v3, p0, Lfmu;->b:Lftw;

    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lftw;->h(Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lfmu;->b:Lftw;

    invoke-virtual {v0}, Lftk;->d()Lftf;

    move-result-object v3

    invoke-virtual {v3}, Lftf;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lftw;->b(Ljava/lang/String;)V

    .line 592
    iget-object v2, p0, Lfmu;->b:Lftw;

    invoke-virtual {v1}, Lfte;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lftw;->c(Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Lfmu;->b:Lftw;

    invoke-virtual {v0}, Lftk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lftw;->d(Ljava/lang/String;)V

    .line 595
    iget-object v2, p0, Lfmu;->b:Lftw;

    invoke-virtual {v0}, Lftk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lftw;->e(Ljava/lang/String;)V

    .line 596
    iget-object v2, p0, Lfmu;->b:Lftw;

    invoke-virtual {v0}, Lftk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lftw;->k(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lfmu;->b:Lftw;

    invoke-virtual {v1}, Lfte;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lftw;->f(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->c(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 600
    iget-object v0, p0, Lfmu;->b:Lftw;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lftw;->a(Z)V

    .line 601
    iget-object v0, p0, Lfmu;->b:Lftw;

    invoke-virtual {v1}, Lfte;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftw;->j(Ljava/lang/String;)V

    .line 608
    :goto_1
    return-void

    .line 573
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 574
    iget-object v2, p0, Lfmu;->b:Lftw;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lftw;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 603
    :cond_2
    iget-object v0, p0, Lfmu;->b:Lftw;

    invoke-virtual {v0, v5}, Lftw;->a(Z)V

    .line 604
    iget-object v0, p0, Lfmu;->b:Lftw;

    iget-object v1, p0, Lfmu;->a:Lcom/santander/app/RendaFixaResgateActivity;

    .line 605
    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->d(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftw;->g(Ljava/lang/String;)V

    goto :goto_1
.end method
