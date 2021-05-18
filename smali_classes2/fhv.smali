.class public Lfhv;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfvj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lfhv;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfhr;)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lfhv;-><init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfvj;
    .locals 2

    .prologue
    .line 408
    :try_start_0
    iget-object v0, p0, Lfhv;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1}, Lhau;->p()Lfvi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfvi;)Lfvi;

    .line 409
    iget-object v0, p0, Lfhv;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvi;

    move-result-object v0

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lfvi;->o(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lhat;->k()Lhbl;

    move-result-object v0

    iget-object v1, p0, Lfhv;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbl;->b(Lfvi;)Lfvj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v0, Lfvj;

    invoke-direct {v0}, Lfvj;-><init>()V

    .line 416
    const-string v1, "Fail"

    invoke-virtual {v0, v1}, Lfvj;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lfvj;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 423
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lfvj;->hasError()Z

    move-result v0

    if-nez v0, :cond_3

    .line 424
    invoke-virtual {p1}, Lfvj;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lfvj;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    new-array v0, v3, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v1, v0, v2

    .line 429
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 430
    new-instance v2, Lfhw;

    invoke-direct {v2, p0}, Lfhw;-><init>(Lfhv;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-virtual {p1}, Lfvj;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lfhv;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 440
    iget-object v0, p0, Lfhv;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-virtual {p1}, Lfvj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Lfhv;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    .line 443
    iget-object v0, p0, Lfhv;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lfvj;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    :cond_4
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhv;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 399
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfhv;->a([Ljava/lang/Void;)Lfvj;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 399
    check-cast p1, Lfvj;

    invoke-virtual {p0, p1}, Lfhv;->a(Lfvj;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lfhv;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    iget-object v1, p0, Lfhv;->a:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a:Landroid/app/Dialog;

    .line 403
    return-void
.end method
