.class public Lfhx;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfvk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfhr;)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lfhx;-><init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfvk;
    .locals 2

    .prologue
    .line 467
    :try_start_0
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1}, Lhau;->q()Lfvk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfvk;)Lfvk;

    .line 468
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->e(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvk;

    move-result-object v0

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lfvk;->H(Ljava/lang/String;)V

    .line 470
    invoke-static {}, Lhat;->k()Lhbl;

    move-result-object v0

    iget-object v1, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->e(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbl;->b(Lfvk;)Lfvk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 474
    :goto_0
    return-object v0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfvk;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 480
    if-nez p1, :cond_0

    .line 481
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 482
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    .line 532
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-virtual {p1}, Lfvk;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    invoke-virtual {p1}, Lfvk;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 486
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 487
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-virtual {p1}, Lfvk;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    .line 496
    :goto_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 489
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 490
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 492
    :cond_2
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 493
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 500
    :cond_3
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfvk;)Lfvk;

    .line 503
    invoke-virtual {p1}, Lfvk;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 504
    invoke-virtual {p1}, Lfvk;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 506
    :cond_4
    new-array v0, v2, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v1, v0, v3

    .line 509
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 510
    new-instance v2, Lfhy;

    invoke-direct {v2, p0}, Lfhy;-><init>(Lfhx;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    goto/16 :goto_0

    .line 520
    :cond_5
    invoke-virtual {p1}, Lfvk;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_6

    .line 521
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 522
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-virtual {p1}, Lfvk;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 523
    :cond_6
    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 524
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 525
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 527
    :cond_7
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 528
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfhx;->a([Ljava/lang/Void;)Lfvk;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 458
    check-cast p1, Lfvk;

    invoke-virtual {p0, p1}, Lfhx;->a(Lfvk;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    iget-object v1, p0, Lfhx;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a:Landroid/app/Dialog;

    .line 462
    return-void
.end method
