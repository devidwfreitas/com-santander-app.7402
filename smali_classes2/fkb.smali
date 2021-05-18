.class public Lfkb;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lful;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/ParcelamentoFacturaActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/ParcelamentoFacturaActivity;Lfjp;)V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lfkb;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lful;
    .locals 4

    .prologue
    .line 554
    .line 555
    :try_start_0
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->h(Lcom/santander/app/ParcelamentoFacturaActivity;)Lgon;

    move-result-object v1

    invoke-virtual {v1}, Lgon;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 556
    iget-object v1, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->g(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 557
    if-nez v1, :cond_0

    .line 558
    invoke-virtual {v0}, Lghu;->q()Lful;

    move-result-object v1

    .line 559
    if-nez v1, :cond_3

    .line 560
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v1

    const-string v2, "T"

    const-string v3, "00000000000"

    invoke-virtual {v1, v0, v2, v3}, Lhbc;->b(Lghu;Ljava/lang/String;Ljava/lang/String;)Lful;

    move-result-object v0

    .line 580
    :goto_0
    return-object v0

    .line 563
    :cond_0
    invoke-virtual {v0}, Lghu;->r()Lful;

    .line 565
    iget-object v1, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f101075

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 566
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 567
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 568
    :cond_1
    invoke-virtual {v0}, Lghu;->p()Lfud;

    move-result-object v2

    invoke-virtual {v2}, Lfud;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 569
    invoke-virtual {v0}, Lghu;->p()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->g()Ljava/lang/String;

    move-result-object v1

    .line 572
    :goto_1
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v2

    const-string v3, "P"

    invoke-virtual {v2, v0, v3, v1}, Lhbc;->b(Lghu;Ljava/lang/String;Ljava/lang/String;)Lful;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lful;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 586
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lful;->hasError()Z

    move-result v0

    if-nez v0, :cond_4

    .line 587
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 589
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 593
    :cond_0
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->g(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 594
    invoke-virtual {p1}, Lful;->t()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lful;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 595
    if-nez v0, :cond_1

    .line 596
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lful;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 645
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lful;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->h(Lcom/santander/app/ParcelamentoFacturaActivity;)Lgon;

    move-result-object v1

    invoke-virtual {v1}, Lgon;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 603
    iget-object v1, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f101075

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 604
    invoke-virtual {v0}, Lghu;->p()Lfud;

    move-result-object v0

    invoke-virtual {v0}, Lfud;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 607
    :cond_2
    if-nez v0, :cond_3

    .line 608
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->h(Lcom/santander/app/ParcelamentoFacturaActivity;)Lgon;

    move-result-object v1

    invoke-virtual {v1}, Lgon;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0, p1}, Lghu;->a(Lful;)V

    .line 613
    :goto_1
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0, p1}, Lcom/santander/app/ParcelamentoFacturaActivity;->a(Lcom/santander/app/ParcelamentoFacturaActivity;Lful;)Lful;

    .line 614
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-virtual {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->b()V

    goto :goto_0

    .line 610
    :cond_3
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->h(Lcom/santander/app/ParcelamentoFacturaActivity;)Lgon;

    move-result-object v1

    invoke-virtual {v1}, Lgon;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0, p1}, Lghu;->b(Lful;)V

    goto :goto_1

    .line 617
    :cond_4
    if-nez p1, :cond_6

    .line 619
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 620
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 621
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 623
    :cond_5
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto/16 :goto_0

    .line 627
    :cond_6
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 628
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 629
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 631
    :cond_7
    new-instance v1, Lful;

    invoke-direct {v1}, Lful;-><init>()V

    .line 633
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->g(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 634
    if-nez v0, :cond_8

    .line 635
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v2}, Lcom/santander/app/ParcelamentoFacturaActivity;->h(Lcom/santander/app/ParcelamentoFacturaActivity;)Lgon;

    move-result-object v2

    invoke-virtual {v2}, Lgon;->a()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0, v1}, Lghu;->a(Lful;)V

    .line 640
    :goto_2
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0, v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->a(Lcom/santander/app/ParcelamentoFacturaActivity;Lful;)Lful;

    .line 641
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-virtual {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->b()V

    .line 643
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v2, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v2}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto/16 :goto_0

    .line 637
    :cond_8
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v2}, Lcom/santander/app/ParcelamentoFacturaActivity;->h(Lcom/santander/app/ParcelamentoFacturaActivity;)Lgon;

    move-result-object v2

    invoke-virtual {v2}, Lgon;->a()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0, v1}, Lghu;->b(Lful;)V

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 539
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfkb;->a([Ljava/lang/Void;)Lful;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 539
    check-cast p1, Lful;

    invoke-virtual {p0, p1}, Lfkb;->a(Lful;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 545
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 547
    :cond_0
    iget-object v0, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v1, p0, Lfkb;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 548
    return-void
.end method
