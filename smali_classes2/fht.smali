.class public Lfht;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfvh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfhr;)V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lfht;-><init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfvh;
    .locals 2

    .prologue
    .line 545
    :try_start_0
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1}, Lhau;->r()Lfvh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfvh;)Lfvh;

    .line 547
    invoke-static {}, Lhat;->k()Lhbl;

    move-result-object v0

    iget-object v1, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->g(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbl;->b(Lfvh;)Lfvh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfvh;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 557
    if-nez p1, :cond_0

    .line 558
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 559
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    .line 604
    :goto_0
    return-void

    .line 561
    :cond_0
    invoke-virtual {p1}, Lfvh;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 563
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    .line 565
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p1}, Lfvh;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lfvh;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 571
    :cond_2
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->g(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvh;

    move-result-object v0

    invoke-virtual {p1}, Lfvh;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->u(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->g(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvh;

    move-result-object v0

    invoke-virtual {p1}, Lfvh;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->t(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->g(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvh;

    move-result-object v0

    invoke-virtual {p1}, Lfvh;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->w(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->g(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvh;

    move-result-object v0

    invoke-virtual {p1}, Lfvh;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->x(Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    iget-object v1, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->g(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhau;->a(Lfvh;)V

    .line 578
    const/4 v0, 0x1

    new-array v0, v0, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v1, v0, v2

    .line 581
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 582
    new-instance v2, Lfhu;

    invoke-direct {v2, p0}, Lfhu;-><init>(Lfht;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    goto/16 :goto_0

    .line 592
    :cond_3
    invoke-virtual {p1}, Lfvh;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 593
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 594
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-virtual {p1}, Lfvh;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 595
    :cond_4
    invoke-virtual {p1}, Lfvh;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lfvh;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 596
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 597
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-virtual {p1}, Lfvh;->getFaultstring()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 599
    :cond_5
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 600
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 535
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfht;->a([Ljava/lang/Void;)Lfvh;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 535
    check-cast p1, Lfvh;

    invoke-virtual {p0, p1}, Lfht;->a(Lfvh;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    iget-object v1, p0, Lfht;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a:Landroid/app/Dialog;

    .line 540
    return-void
.end method
