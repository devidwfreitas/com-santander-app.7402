.class public Lfgk;
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
.field final synthetic a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

.field private b:Lfur;


# direct methods
.method constructor <init>(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lfgk;->a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lfur;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    .line 130
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    iput-object v1, p0, Lfgk;->b:Lfur;

    .line 131
    sget-object v1, Lfgj;->a:[I

    iget-object v2, p0, Lfgk;->b:Lfur;

    invoke-virtual {v2}, Lfur;->f()Lfus;

    move-result-object v2

    invoke-virtual {v2}, Lfus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 145
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 147
    :goto_1
    return-object v0

    .line 133
    :pswitch_0
    invoke-static {}, Lhat;->n()Lhba;

    move-result-object v1

    iget-object v2, p0, Lfgk;->b:Lfur;

    .line 134
    invoke-virtual {v1, v2}, Lhba;->c(Lfur;)Z

    move-result v0

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-static {}, Lhat;->n()Lhba;

    move-result-object v1

    iget-object v2, p0, Lfgk;->b:Lfur;

    .line 138
    invoke-virtual {v1, v2}, Lhba;->a(Lfur;)Z

    move-result v0

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-static {}, Lhat;->n()Lhba;

    move-result-object v1

    iget-object v2, p0, Lfgk;->b:Lfur;

    .line 142
    invoke-virtual {v1, v2}, Lhba;->b(Lfur;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 131
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
    .line 153
    iget-object v0, p0, Lfgk;->a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->b(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgk;->a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->b(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lfgk;->a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->b(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 155
    iget-object v0, p0, Lfgk;->a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->a(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 158
    :cond_0
    iget-object v0, p0, Lfgk;->a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-virtual {v0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->finish()V

    .line 159
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    check-cast p1, [Lfur;

    invoke-virtual {p0, p1}, Lfgk;->a([Lfur;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lfgk;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lfgk;->a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    iget-object v1, p0, Lfgk;->a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    iget-object v1, v1, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->a(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 124
    return-void
.end method
