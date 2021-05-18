.class public Lfki;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfsy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/PoupancaAplicacaoActivity;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/santander/app/PoupancaAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/PoupancaAplicacaoActivity;Lfkf;)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lfki;-><init>(Lcom/santander/app/PoupancaAplicacaoActivity;)V

    return-void
.end method

.method private a(Lfsy;Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 2

    .prologue
    .line 511
    invoke-virtual {p1}, Lfsy;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Lfsy;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    :cond_0
    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-virtual {v0, p1, p2}, Lcom/santander/app/PoupancaAplicacaoActivity;->openConfirmar(Lfsy;Lfuu;)V

    .line 516
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->h(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/PoupancaAplicacaoActivity;

    move-result-object v0

    invoke-virtual {p1}, Lfsy;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfsy;
    .locals 7

    .prologue
    .line 475
    .line 477
    :try_start_0
    iget-object v1, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    iget-object v1, v1, Lcom/santander/app/PoupancaAplicacaoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->q()Lgvx;

    move-result-object v1

    invoke-interface {v1}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v2}, Lcom/santander/app/PoupancaAplicacaoActivity;->k(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    move-object v6, v0

    .line 478
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v1

    iget-object v2, p0, Lfki;->b:Ljava/lang/String;

    iget-object v3, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v3}, Lcom/santander/app/PoupancaAplicacaoActivity;->i(Lcom/santander/app/PoupancaAplicacaoActivity;)Z

    move-result v3

    iget-object v4, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v4}, Lcom/santander/app/PoupancaAplicacaoActivity;->f(Lcom/santander/app/PoupancaAplicacaoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v5

    .line 479
    invoke-virtual {v6}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v6

    .line 478
    invoke-virtual/range {v1 .. v6}, Lhbh;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfsy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 486
    :goto_0
    return-object v1

    .line 483
    :catch_0
    move-exception v1

    .line 484
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected a(Lfsy;)V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->j(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->j(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->j(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 493
    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 496
    :cond_0
    if-nez p1, :cond_1

    .line 507
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-virtual {p1}, Lfsy;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->h(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/PoupancaAplicacaoActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    iget-object v0, v0, Lcom/santander/app/PoupancaAplicacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->k(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 505
    invoke-direct {p0, p1, v0}, Lfki;->a(Lfsy;Lcom/santander/app/contacorrente/domain/Conta;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {p1}, Lnak;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->f(Lcom/santander/app/PoupancaAplicacaoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {p1}, Lnak;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    :cond_0
    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0, p2}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Z)Z

    .line 461
    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0, p3}, Lcom/santander/app/PoupancaAplicacaoActivity;->b(Lcom/santander/app/PoupancaAplicacaoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    iput-object p3, p0, Lfki;->b:Ljava/lang/String;

    .line 463
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 449
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfki;->a([Ljava/lang/Void;)Lfsy;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 449
    check-cast p1, Lfsy;

    invoke-virtual {p0, p1}, Lfki;->a(Lfsy;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    iget-object v1, p0, Lfki;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->h(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/PoupancaAplicacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 470
    return-void
.end method
