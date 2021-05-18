.class public Lfms;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lftf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaResgateActivity;

.field private b:I

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/santander/app/RendaFixaResgateActivity;)V
    .locals 1

    .prologue
    .line 461
    iput-object p1, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lfms;->b:I

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfms;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/RendaFixaResgateActivity;Lfml;)V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lfms;-><init>(Lcom/santander/app/RendaFixaResgateActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftf;
    .locals 3

    .prologue
    .line 479
    :try_start_0
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->k(Lcom/santander/app/RendaFixaResgateActivity;)Lftn;

    move-result-object v0

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->k(Lcom/santander/app/RendaFixaResgateActivity;)Lftn;

    move-result-object v0

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lfms;->b:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    .line 480
    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->k(Lcom/santander/app/RendaFixaResgateActivity;)Lftn;

    move-result-object v0

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->l(Lcom/santander/app/RendaFixaResgateActivity;)Lftk;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lfms;->c:Z

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->k(Lcom/santander/app/RendaFixaResgateActivity;)Lftn;

    move-result-object v0

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v1

    .line 485
    iget v0, p0, Lfms;->b:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    invoke-virtual {v0}, Lftk;->d()Lftf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget v0, p0, Lfms;->b:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    invoke-virtual {v0}, Lftk;->d()Lftf;

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    .line 488
    :cond_0
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v2

    iget v0, p0, Lfms;->b:I

    .line 489
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    invoke-virtual {v2, v0}, Lhbh;->a(Lftk;)Lftf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 549
    iput p1, p0, Lfms;->b:I

    .line 550
    return-void
.end method

.method protected a(Lftf;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 503
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->m(Lcom/santander/app/RendaFixaResgateActivity;)I

    .line 504
    iget-boolean v0, p0, Lfms;->c:Z

    if-nez v0, :cond_7

    .line 505
    if-nez p1, :cond_4

    .line 507
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 509
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0, v3}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 511
    :cond_0
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 538
    :cond_1
    :goto_0
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->i(Lcom/santander/app/RendaFixaResgateActivity;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->q(Lcom/santander/app/RendaFixaResgateActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 541
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0, v3}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 543
    :cond_2
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaResgateActivity;->finish()V

    .line 546
    :cond_3
    return-void

    .line 513
    :cond_4
    invoke-virtual {p1}, Lftf;->hasError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 515
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 516
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 517
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0, v3}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 519
    :cond_5
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 522
    :cond_6
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->k(Lcom/santander/app/RendaFixaResgateActivity;)Lftn;

    move-result-object v0

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lfms;->b:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    invoke-virtual {v0, p1}, Lftk;->a(Lftf;)V

    .line 524
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->i(Lcom/santander/app/RendaFixaResgateActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 525
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->o(Lcom/santander/app/RendaFixaResgateActivity;)V

    .line 526
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->p(Lcom/santander/app/RendaFixaResgateActivity;)V

    .line 527
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 529
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0, v3}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 535
    :cond_7
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0, v2}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;Z)Z

    .line 536
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 461
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfms;->a([Ljava/lang/Void;)Lftf;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 461
    check-cast p1, Lftf;

    invoke-virtual {p0, p1}, Lfms;->a(Lftf;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->i(Lcom/santander/app/RendaFixaResgateActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    iget-object v1, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 472
    :cond_0
    iget-object v0, p0, Lfms;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->j(Lcom/santander/app/RendaFixaResgateActivity;)I

    .line 473
    return-void
.end method
