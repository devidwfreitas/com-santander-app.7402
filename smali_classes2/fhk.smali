.class public Lfhk;
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
.field final synthetic a:Lcom/santander/app/FazerPagamentoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/FazerPagamentoActivity;)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/FazerPagamentoActivity;Lfhh;)V
    .locals 0

    .prologue
    .line 1048
    invoke-direct {p0, p1}, Lfhk;-><init>(Lcom/santander/app/FazerPagamentoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfvh;
    .locals 2

    .prologue
    .line 1058
    :try_start_0
    invoke-static {}, Lhat;->k()Lhbl;

    move-result-object v0

    iget-object v1, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoActivity;->g(Lcom/santander/app/FazerPagamentoActivity;)Lfvh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbl;->a(Lfvh;)Lfvh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1062
    :goto_0
    return-object v0

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    const-string v1, "FazerPagamentoActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfvh;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1067
    iget-object v0, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->c(Lcom/santander/app/FazerPagamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->c(Lcom/santander/app/FazerPagamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->c(Lcom/santander/app/FazerPagamentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1069
    iget-object v0, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoActivity;->a(Lcom/santander/app/FazerPagamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1071
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfvh;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1072
    :cond_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v3, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 1074
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lfvh;->hasError()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1076
    invoke-virtual {p1}, Lfvh;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lfvh;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 1077
    :cond_3
    iget-object v0, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->g(Lcom/santander/app/FazerPagamentoActivity;)Lfvh;

    move-result-object v0

    invoke-virtual {v0}, Lfvh;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvh;->n(Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->g(Lcom/santander/app/FazerPagamentoActivity;)Lfvh;

    move-result-object v0

    invoke-virtual {v0}, Lfvh;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvh;->p(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->g(Lcom/santander/app/FazerPagamentoActivity;)Lfvh;

    move-result-object v0

    invoke-virtual {v0}, Lfvh;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvh;->o(Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->g(Lcom/santander/app/FazerPagamentoActivity;)Lfvh;

    move-result-object v0

    invoke-virtual {v0}, Lfvh;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvh;->q(Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->g(Lcom/santander/app/FazerPagamentoActivity;)Lfvh;

    move-result-object v0

    invoke-virtual {v0}, Lfvh;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvh;->v(Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/FazerPagamentoActivity;->a(Lcom/santander/app/FazerPagamentoActivity;Lfvh;)Lfvh;

    .line 1085
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    iget-object v1, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoActivity;->g(Lcom/santander/app/FazerPagamentoActivity;)Lfvh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhau;->a(Lfvh;)V

    .line 1087
    iget-object v0, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->h(Lcom/santander/app/FazerPagamentoActivity;)V

    .line 1098
    :cond_4
    :goto_0
    return-void

    .line 1089
    :cond_5
    invoke-virtual {p1}, Lfvh;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 1090
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lfvh;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1091
    :cond_6
    invoke-virtual {p1}, Lfvh;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lfvh;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 1092
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lfvh;->getFaultstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :cond_7
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v3, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1048
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfhk;->a([Ljava/lang/Void;)Lfvh;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1048
    check-cast p1, Lfvh;

    invoke-virtual {p0, p1}, Lfhk;->a(Lfvh;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 1052
    iget-object v0, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, p0, Lfhk;->a:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoActivity;->a(Lcom/santander/app/FazerPagamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1053
    return-void
.end method
