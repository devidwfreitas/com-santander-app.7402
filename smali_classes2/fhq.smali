.class public Lfhq;
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
.field final synthetic a:Lcom/santander/app/FazerPagamentoBoletoVR;


# direct methods
.method private constructor <init>(Lcom/santander/app/FazerPagamentoBoletoVR;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/FazerPagamentoBoletoVR;Lfhn;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lfhq;-><init>(Lcom/santander/app/FazerPagamentoBoletoVR;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfvk;
    .locals 2

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lfvk;->n(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lhat;->k()Lhbl;

    move-result-object v0

    iget-object v1, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbl;->a(Lfvk;)Lfvk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfvk;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 221
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->h(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->h(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->h(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 223
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->a(Lcom/santander/app/FazerPagamentoBoletoVR;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 225
    :cond_0
    if-nez p1, :cond_1

    .line 226
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->f(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 260
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p1}, Lfvk;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->f(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->X()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfvk;->a(Z)V

    .line 233
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->s(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->U(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->D(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->C(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->t(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->q(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->r(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->I(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;

    move-result-object v0

    invoke-virtual {v0}, Lfvk;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfvk;->J(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0, p1}, Lcom/santander/app/FazerPagamentoBoletoVR;->a(Lcom/santander/app/FazerPagamentoBoletoVR;Lfvk;)Lfvk;

    .line 243
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhau;->a(Lfvk;)V

    .line 245
    invoke-virtual {p1}, Lfvk;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 246
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->f(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    const-string v1, "type_pagamento"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->f(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 251
    :cond_3
    invoke-virtual {p1}, Lfvk;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 252
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->f(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lfvk;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :cond_4
    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 254
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->f(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lfvk;->getFaultstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :cond_5
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->f(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfhq;->a([Ljava/lang/Void;)Lfvk;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 200
    check-cast p1, Lfvk;

    invoke-virtual {p0, p1}, Lfhq;->a(Lfvk;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    iget-object v1, p0, Lfhq;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->f(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->a(Lcom/santander/app/FazerPagamentoBoletoVR;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 205
    return-void
.end method
