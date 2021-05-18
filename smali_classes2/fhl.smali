.class public Lfhl;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfvi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/FazerPagamentoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/FazerPagamentoActivity;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/FazerPagamentoActivity;Lfhh;)V
    .locals 0

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lfhl;-><init>(Lcom/santander/app/FazerPagamentoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfvi;
    .locals 2

    .prologue
    .line 950
    :try_start_0
    invoke-static {}, Lhat;->k()Lhbl;

    move-result-object v0

    iget-object v1, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoActivity;->b(Lcom/santander/app/FazerPagamentoActivity;)Lfvi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbl;->a(Lfvi;)Lfvi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 954
    :goto_0
    return-object v0

    .line 951
    :catch_0
    move-exception v0

    .line 952
    const-string v1, "FazerPagamentoActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfvi;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 959
    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->c(Lcom/santander/app/FazerPagamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->c(Lcom/santander/app/FazerPagamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->c(Lcom/santander/app/FazerPagamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 961
    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoActivity;->a(Lcom/santander/app/FazerPagamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 963
    :cond_0
    if-nez p1, :cond_1

    .line 964
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 992
    :goto_0
    return-void

    .line 965
    :cond_1
    invoke-virtual {p1}, Lfvi;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 966
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 969
    :cond_2
    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->b(Lcom/santander/app/FazerPagamentoActivity;)Lfvi;

    move-result-object v0

    invoke-virtual {v0}, Lfvi;->s()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfvi;->a(Z)V

    .line 970
    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->b(Lcom/santander/app/FazerPagamentoActivity;)Lfvi;

    move-result-object v0

    invoke-virtual {v0}, Lfvi;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvi;->h(Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->b(Lcom/santander/app/FazerPagamentoActivity;)Lfvi;

    move-result-object v0

    invoke-virtual {v0}, Lfvi;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvi;->j(Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->b(Lcom/santander/app/FazerPagamentoActivity;)Lfvi;

    move-result-object v0

    invoke-virtual {v0}, Lfvi;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvi;->k(Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->b(Lcom/santander/app/FazerPagamentoActivity;)Lfvi;

    move-result-object v0

    invoke-virtual {v0}, Lfvi;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvi;->g(Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->b(Lcom/santander/app/FazerPagamentoActivity;)Lfvi;

    move-result-object v0

    invoke-virtual {v0}, Lfvi;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvi;->b(Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/FazerPagamentoActivity;->a(Lcom/santander/app/FazerPagamentoActivity;Lfvi;)Lfvi;

    .line 977
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhau;->a(Lfvi;)V

    .line 979
    invoke-virtual {p1}, Lfvi;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 980
    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->d(Lcom/santander/app/FazerPagamentoActivity;)V

    goto :goto_0

    .line 982
    :cond_3
    invoke-virtual {p1}, Lfvi;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 983
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lfvi;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 984
    :cond_4
    invoke-virtual {p1}, Lfvi;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lfvi;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 985
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lfvi;->getFaultstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    :cond_5
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 941
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfhl;->a([Ljava/lang/Void;)Lfvi;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 941
    check-cast p1, Lfvi;

    invoke-virtual {p0, p1}, Lfhl;->a(Lfvi;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, p0, Lfhl;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoActivity;->a(Lcom/santander/app/FazerPagamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 945
    return-void
.end method
