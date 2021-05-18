.class public Lfkw;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfts;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;Lfkv;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lfkw;-><init>(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfts;
    .locals 3

    .prologue
    .line 231
    .line 233
    :try_start_0
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    iget-object v1, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->b(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lftr;

    move-result-object v1

    iget-object v2, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhbh;->a(Lftr;Lfts;)Lfts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfts;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 246
    if-nez p1, :cond_0

    .line 247
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 293
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p1}, Lfts;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v0

    invoke-virtual {v0}, Lfts;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfts;->l(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v0

    invoke-virtual {v0}, Lfts;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfts;->o(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v0

    invoke-virtual {v0}, Lfts;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfts;->p(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v0

    invoke-virtual {v0}, Lfts;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfts;->x(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v0

    invoke-virtual {v0}, Lfts;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfts;->j(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v0

    invoke-virtual {v0}, Lfts;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfts;->f(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;Lfts;)Lfts;

    .line 257
    iget-object v0, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->d(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)V

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    const/4 v1, 0x0

    sget-object v2, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v2, v0, v1

    sget-object v1, Lmzp;->RELOAD_POUPANCA:Lmzp;

    aput-object v1, v0, v3

    .line 264
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 265
    new-instance v2, Lfkx;

    invoke-direct {v2, p0, p1}, Lfkx;-><init>(Lfkw;Lfts;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 220
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfkw;->a([Ljava/lang/Void;)Lfts;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 220
    check-cast p1, Lfts;

    invoke-virtual {p0, p1}, Lfkw;->a(Lfts;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    iget-object v1, p0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a:Landroid/app/Dialog;

    .line 225
    return-void
.end method
