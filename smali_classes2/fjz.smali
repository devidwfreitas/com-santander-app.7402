.class public Lfjz;
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
.field final synthetic a:Lcom/santander/app/ParcelamentoFacturaActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/ParcelamentoFacturaActivity;Lfjp;)V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lfjz;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfud;
    .locals 2

    .prologue
    .line 476
    .line 477
    :try_start_0
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->h(Lcom/santander/app/ParcelamentoFacturaActivity;)Lgon;

    move-result-object v1

    invoke-virtual {v1}, Lgon;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 478
    invoke-virtual {v0}, Lghu;->p()Lfud;

    move-result-object v1

    .line 479
    if-nez v1, :cond_0

    .line 480
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhbc;->e(Lghu;)Lfud;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lfud;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 493
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lfud;->hasError()Z

    move-result v0

    if-nez v0, :cond_2

    .line 494
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 496
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 500
    :cond_0
    invoke-virtual {p1}, Lfud;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lfud;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 501
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lfud;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 535
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->h(Lcom/santander/app/ParcelamentoFacturaActivity;)Lgon;

    move-result-object v1

    invoke-virtual {v1}, Lgon;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0, p1}, Lghu;->b(Lfud;)V

    .line 504
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0, p1}, Lcom/santander/app/ParcelamentoFacturaActivity;->a(Lcom/santander/app/ParcelamentoFacturaActivity;Lfud;)Lfud;

    .line 505
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->i(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    goto :goto_0

    .line 508
    :cond_2
    if-nez p1, :cond_4

    .line 510
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 511
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 512
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 514
    :cond_3
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 518
    :cond_4
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 519
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 520
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 523
    :cond_5
    invoke-virtual {p1}, Lfud;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lfud;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 524
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lfud;->getFaultstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 527
    :cond_6
    new-instance v1, Lfud;

    invoke-direct {v1}, Lfud;-><init>()V

    .line 528
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v2}, Lcom/santander/app/ParcelamentoFacturaActivity;->h(Lcom/santander/app/ParcelamentoFacturaActivity;)Lgon;

    move-result-object v2

    invoke-virtual {v2}, Lgon;->a()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0, v1}, Lghu;->b(Lfud;)V

    .line 529
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0, v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->a(Lcom/santander/app/ParcelamentoFacturaActivity;Lfud;)Lfud;

    .line 530
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->i(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    .line 532
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v2, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v2}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 461
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfjz;->a([Ljava/lang/Void;)Lfud;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 461
    check-cast p1, Lfud;

    invoke-virtual {p0, p1}, Lfjz;->a(Lfud;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 467
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 469
    :cond_0
    iget-object v0, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v1, p0, Lfjz;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 470
    return-void
.end method
