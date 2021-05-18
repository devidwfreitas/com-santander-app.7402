.class public Lfkk;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lftc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/PoupancaAplicacaoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/PoupancaAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/PoupancaAplicacaoActivity;Lfkf;)V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lfkk;-><init>(Lcom/santander/app/PoupancaAplicacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftc;
    .locals 2

    .prologue
    .line 556
    .line 557
    :try_start_0
    invoke-static {}, Lhat;->e()Lhbg;

    move-result-object v0

    invoke-virtual {v0}, Lhbg;->e()Lftc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 563
    :goto_0
    return-object v0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lftc;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 568
    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->j(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->j(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->j(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 570
    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 573
    :cond_0
    if-nez p1, :cond_2

    .line 574
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->h(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/PoupancaAplicacaoActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 596
    :cond_1
    :goto_0
    return-void

    .line 575
    :cond_2
    invoke-virtual {p1}, Lftc;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    new-instance v1, Lftc;

    invoke-direct {v1}, Lftc;-><init>()V

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Lftc;)Lftc;

    .line 580
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->h(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/PoupancaAplicacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 584
    :cond_3
    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Lftc;)Lftc;

    .line 588
    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->n(Lcom/santander/app/PoupancaAplicacaoActivity;)Lftc;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->n(Lcom/santander/app/PoupancaAplicacaoActivity;)Lftc;

    move-result-object v0

    invoke-virtual {v0}, Lftc;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 590
    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->o(Lcom/santander/app/PoupancaAplicacaoActivity;)V

    .line 591
    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->m(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 542
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfkk;->a([Ljava/lang/Void;)Lftc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 542
    check-cast p1, Lftc;

    invoke-virtual {p0, p1}, Lfkk;->a(Lftc;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    .line 545
    iget-object v1, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    const v2, 0x7f100814

    invoke-virtual {v0, v2}, Lcom/santander/app/PoupancaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    invoke-static {v1, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Lcom/santander/app/widget/Carrossel;)Lcom/santander/app/widget/Carrossel;

    .line 546
    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->l(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->m(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 549
    iget-object v0, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    iget-object v1, p0, Lfkk;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->h(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/PoupancaAplicacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 550
    return-void
.end method
