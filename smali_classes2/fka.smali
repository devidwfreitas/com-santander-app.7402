.class public Lfka;
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
    .line 649
    iput-object p1, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/santander/app/ParcelamentoFacturaActivity;Lfjp;)V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lfka;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lful;
    .locals 5

    .prologue
    .line 664
    .line 665
    :try_start_0
    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->h(Lcom/santander/app/ParcelamentoFacturaActivity;)Lgon;

    move-result-object v1

    invoke-virtual {v1}, Lgon;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 666
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v1

    iget-object v2, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v2}, Lcom/santander/app/ParcelamentoFacturaActivity;->j(Lcom/santander/app/ParcelamentoFacturaActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    iget-object v3, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v3}, Lcom/santander/app/ParcelamentoFacturaActivity;->k(Lcom/santander/app/ParcelamentoFacturaActivity;)Lful;

    move-result-object v3

    iget-object v4, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v4}, Lcom/santander/app/ParcelamentoFacturaActivity;->c(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lhbc;->a(Lghu;Lfuu;Lful;I)Lful;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 673
    :goto_0
    return-object v0

    .line 670
    :catch_0
    move-exception v0

    .line 671
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lful;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 679
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lful;->hasError()Z

    move-result v0

    if-nez v0, :cond_5

    .line 680
    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 682
    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 685
    :cond_0
    invoke-virtual {p1}, Lful;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lful;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 686
    :cond_1
    invoke-virtual {p1}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfum;

    .line 687
    invoke-virtual {v0}, Lfum;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lfum;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 688
    const-string v1, "true"

    invoke-virtual {v0, v1}, Lfum;->b(Ljava/lang/String;)V

    .line 693
    :cond_3
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhau;->a(Lful;)V

    .line 694
    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-virtual {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->c()V

    .line 708
    :goto_0
    return-void

    .line 696
    :cond_4
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 701
    :cond_5
    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 702
    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 703
    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 705
    :cond_6
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 649
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfka;->a([Ljava/lang/Void;)Lful;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 649
    check-cast p1, Lful;

    invoke-virtual {p0, p1}, Lfka;->a(Lful;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 655
    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 657
    :cond_0
    iget-object v0, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    iget-object v1, p0, Lfka;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 658
    return-void
.end method
