.class public Lhed;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lhen;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V
    .locals 0

    .prologue
    .line 897
    iput-object p1, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lhen;
    .locals 3

    .prologue
    .line 910
    const/4 v0, 0x0

    .line 913
    :try_start_0
    invoke-static {}, Lhat;->u()Lhfa;

    move-result-object v1

    iget-object v2, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->r(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lfuu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhfa;->b(Lfuu;)Lhen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 917
    :goto_0
    return-object v0

    .line 914
    :catch_0
    move-exception v1

    .line 915
    const-string v2, "DPPoupanca"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lhen;)V
    .locals 4

    .prologue
    .line 922
    iget-object v0, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 924
    iget-object v0, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 926
    :cond_0
    invoke-virtual {p1}, Lhen;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-virtual {p1}, Lhen;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 929
    iget-object v0, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v1, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->e(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Ljava/util/ArrayList;)V

    .line 934
    :goto_0
    return-void

    .line 931
    :cond_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 897
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhed;->a([Ljava/lang/Void;)Lhen;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 897
    check-cast p1, Lhen;

    invoke-virtual {p0, p1}, Lhed;->a(Lhen;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 903
    iget-object v0, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 905
    :cond_0
    iget-object v0, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v1, p0, Lhed;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 906
    return-void
.end method
