.class public Lfmg;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaAplicacaoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Lflx;)V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lfmg;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfto;
    .locals 4

    .prologue
    .line 596
    :try_start_0
    iget-object v0, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iget-object v0, v0, Lcom/santander/app/RendaFixaAplicacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->j(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 598
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->e(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lftq;

    move-result-object v3

    invoke-virtual {v3}, Lftq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lhbh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 604
    :goto_0
    return-object v0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfto;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 609
    iget-object v0, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 611
    iget-object v0, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 614
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfto;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 615
    :cond_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 622
    :cond_2
    :goto_0
    return-void

    .line 616
    :cond_3
    const-string v0, "ok"

    invoke-virtual {p1}, Lfto;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 617
    iget-object v0, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v0

    invoke-virtual {p1}, Lfto;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_4
    const-string v0, "0"

    invoke-virtual {p1}, Lfto;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lfto;->hasError()Z

    move-result v0

    if-nez v0, :cond_2

    .line 619
    iget-object v0, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    new-instance v1, Lfmf;

    iget-object v2, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {v1, v2, v3}, Lfmf;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Lflx;)V

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Lfmf;)Lfmf;

    .line 620
    iget-object v0, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->l(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lfmf;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfmf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 583
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfmg;->a([Ljava/lang/Void;)Lfto;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 583
    check-cast p1, Lfto;

    invoke-virtual {p0, p1}, Lfmg;->a(Lfto;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 590
    :cond_0
    iget-object v0, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iget-object v1, p0, Lfmg;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 591
    return-void
.end method
