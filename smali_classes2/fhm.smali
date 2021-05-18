.class public Lfhm;
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
.field final synthetic a:Lcom/santander/app/FazerPagamentoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/FazerPagamentoActivity;)V
    .locals 0

    .prologue
    .line 995
    iput-object p1, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/FazerPagamentoActivity;Lfhh;)V
    .locals 0

    .prologue
    .line 995
    invoke-direct {p0, p1}, Lfhm;-><init>(Lcom/santander/app/FazerPagamentoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfvk;
    .locals 2

    .prologue
    .line 1004
    :try_start_0
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->e(Lcom/santander/app/FazerPagamentoActivity;)Lfvk;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lfvk;->n(Ljava/lang/String;)V

    .line 1005
    invoke-static {}, Lhat;->k()Lhbl;

    move-result-object v0

    iget-object v1, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoActivity;->e(Lcom/santander/app/FazerPagamentoActivity;)Lfvk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbl;->a(Lfvk;)Lfvk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1009
    :goto_0
    return-object v0

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    const-string v1, "FazerPagamentoActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfvk;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1014
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->c(Lcom/santander/app/FazerPagamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->c(Lcom/santander/app/FazerPagamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->c(Lcom/santander/app/FazerPagamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1016
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoActivity;->a(Lcom/santander/app/FazerPagamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1018
    :cond_0
    if-nez p1, :cond_1

    .line 1019
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 1045
    :goto_0
    return-void

    .line 1020
    :cond_1
    invoke-virtual {p1}, Lfvk;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1021
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 1024
    :cond_2
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->e(Lcom/santander/app/FazerPagamentoActivity;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->X()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfvk;->a(Z)V

    .line 1025
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->e(Lcom/santander/app/FazerPagamentoActivity;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->s(Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->e(Lcom/santander/app/FazerPagamentoActivity;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->U(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->e(Lcom/santander/app/FazerPagamentoActivity;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->D(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->e(Lcom/santander/app/FazerPagamentoActivity;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->C(Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->e(Lcom/santander/app/FazerPagamentoActivity;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->t(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/FazerPagamentoActivity;->a(Lcom/santander/app/FazerPagamentoActivity;Lfvk;)Lfvk;

    .line 1031
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhau;->a(Lfvk;)V

    .line 1033
    invoke-virtual {p1}, Lfvk;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1034
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->f(Lcom/santander/app/FazerPagamentoActivity;)V

    goto :goto_0

    .line 1036
    :cond_3
    invoke-virtual {p1}, Lfvk;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 1037
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lfvk;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1038
    :cond_4
    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 1039
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1041
    :cond_5
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 995
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfhm;->a([Ljava/lang/Void;)Lfvk;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 995
    check-cast p1, Lfvk;

    invoke-virtual {p0, p1}, Lfhm;->a(Lfvk;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, p0, Lfhm;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoActivity;->a(Lcom/santander/app/FazerPagamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 999
    return-void
.end method
