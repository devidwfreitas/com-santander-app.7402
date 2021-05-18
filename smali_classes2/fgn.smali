.class public Lfgn;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lfur;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

.field private b:Lfur;


# direct methods
.method constructor <init>(Lcom/santander/app/BeneficiarioPagamentoListActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lfgn;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lfur;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 177
    .line 179
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    iput-object v1, p0, Lfgn;->b:Lfur;

    .line 180
    sget-object v1, Lfgm;->a:[I

    iget-object v2, p0, Lfgn;->b:Lfur;

    invoke-virtual {v2}, Lfur;->f()Lfus;

    move-result-object v2

    invoke-virtual {v2}, Lfus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 194
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 196
    :goto_1
    return-object v0

    .line 182
    :pswitch_0
    invoke-static {}, Lhat;->n()Lhba;

    move-result-object v1

    iget-object v2, p0, Lfgn;->b:Lfur;

    .line 183
    invoke-virtual {v1, v2}, Lhba;->c(Lfur;)Z

    move-result v0

    goto :goto_0

    .line 186
    :pswitch_1
    invoke-static {}, Lhat;->n()Lhba;

    move-result-object v1

    iget-object v2, p0, Lfgn;->b:Lfur;

    .line 187
    invoke-virtual {v1, v2}, Lhba;->a(Lfur;)Z

    move-result v0

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-static {}, Lhat;->n()Lhba;

    move-result-object v1

    iget-object v2, p0, Lfgn;->b:Lfur;

    .line 191
    invoke-virtual {v1, v2}, Lhba;->b(Lfur;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lfgn;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->b(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgn;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->b(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lfgn;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->b(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 204
    iget-object v0, p0, Lfgn;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lcom/santander/app/BeneficiarioPagamentoListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 206
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lfgn;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->c(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Lfuq;

    move-result-object v0

    invoke-virtual {v0}, Lfuq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lfgn;->b:Lfur;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lfgn;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->e(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Lfok;

    move-result-object v0

    invoke-virtual {v0}, Lfok;->notifyDataSetChanged()V

    .line 210
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    check-cast p1, [Lfur;

    invoke-virtual {p0, p1}, Lfgn;->a([Lfur;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lfgn;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lfgn;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    iget-object v1, p0, Lfgn;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lcom/santander/app/BeneficiarioPagamentoListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 173
    return-void
.end method
