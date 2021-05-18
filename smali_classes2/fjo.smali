.class public Lfjo;
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
.field final synthetic a:Lcom/santander/app/PagamentoFacturaCartoesActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;Lfjg;)V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lfjo;-><init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfud;
    .locals 2

    .prologue
    .line 618
    .line 619
    :try_start_0
    iget-object v0, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    iget-object v0, v0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->f(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Lgon;

    move-result-object v1

    invoke-virtual {v1}, Lgon;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 620
    invoke-virtual {v0}, Lghu;->o()Lfud;

    move-result-object v1

    .line 621
    if-nez v1, :cond_0

    .line 622
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhbc;->d(Lghu;)Lfud;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 629
    :goto_0
    return-object v0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lfud;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 635
    iget-object v0, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    iget-object v0, v0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    iget-object v0, v0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    iget-object v0, v0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 637
    iget-object v0, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a:Landroid/app/Dialog;

    .line 640
    :cond_0
    if-nez p1, :cond_1

    .line 641
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->b(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 651
    :goto_0
    return-void

    .line 642
    :cond_1
    invoke-virtual {p1}, Lfud;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->b(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 646
    :cond_2
    iget-object v0, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    iget-object v0, v0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->f(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Lgon;

    move-result-object v1

    invoke-virtual {v1}, Lgon;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0, p1}, Lghu;->a(Lfud;)V

    .line 647
    iget-object v0, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0, p1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a(Lcom/santander/app/PagamentoFacturaCartoesActivity;Lfud;)Lfud;

    .line 648
    const-string v0, "Cartoes_PagamentoDaFatura_ReferOper"

    iget-object v1, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->l(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 607
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfjo;->a([Ljava/lang/Void;)Lfud;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 607
    check-cast p1, Lfud;

    invoke-virtual {p0, p1}, Lfjo;->a(Lfud;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    iget-object v1, p0, Lfjo;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->b(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a:Landroid/app/Dialog;

    .line 612
    return-void
.end method
