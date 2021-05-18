.class public Lfje;
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
.field final synthetic a:Lcom/santander/app/PagamentoCartoesValidacionAction;


# direct methods
.method private constructor <init>(Lcom/santander/app/PagamentoCartoesValidacionAction;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/PagamentoCartoesValidacionAction;Lfjd;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lfje;-><init>(Lcom/santander/app/PagamentoCartoesValidacionAction;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfud;
    .locals 6

    .prologue
    .line 161
    .line 162
    :try_start_0
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v0

    iget-object v1, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-static {v1}, Lcom/santander/app/PagamentoCartoesValidacionAction;->b(Lcom/santander/app/PagamentoCartoesValidacionAction;)Lghu;

    move-result-object v1

    iget-object v2, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-static {v2}, Lcom/santander/app/PagamentoCartoesValidacionAction;->c(Lcom/santander/app/PagamentoCartoesValidacionAction;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    iget-object v3, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-static {v3}, Lcom/santander/app/PagamentoCartoesValidacionAction;->d(Lcom/santander/app/PagamentoCartoesValidacionAction;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-static {v4}, Lcom/santander/app/PagamentoCartoesValidacionAction;->e(Lcom/santander/app/PagamentoCartoesValidacionAction;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-static {v5}, Lcom/santander/app/PagamentoCartoesValidacionAction;->f(Lcom/santander/app/PagamentoCartoesValidacionAction;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lhbc;->a(Lghu;Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Ljava/lang/String;Z)Lfud;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfud;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    if-nez p1, :cond_0

    .line 175
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-static {v1}, Lcom/santander/app/PagamentoCartoesValidacionAction;->a(Lcom/santander/app/PagamentoCartoesValidacionAction;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 207
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p1}, Lfud;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-virtual {p1}, Lfud;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PagamentoCartoesValidacionAction;->a(Lcom/santander/app/PagamentoCartoesValidacionAction;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Lfud;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lfud;->getFaultstring()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lfud;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tempo excedido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    const-string v1, "Tempo excedido, por favor verifique seu extrato"

    invoke-static {v0, v1}, Lcom/santander/app/PagamentoCartoesValidacionAction;->a(Lcom/santander/app/PagamentoCartoesValidacionAction;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    :cond_1
    iget-object v0, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-static {v0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->g(Lcom/santander/app/PagamentoCartoesValidacionAction;)V

    .line 185
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-static {v1}, Lcom/santander/app/PagamentoCartoesValidacionAction;->a(Lcom/santander/app/PagamentoCartoesValidacionAction;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p1}, Lfud;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lfud;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v1, v0, v2

    sget-object v1, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v1, v0, v3

    .line 192
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 193
    new-instance v2, Lfjf;

    invoke-direct {v2, p0}, Lfjf;-><init>(Lfje;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v0, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-virtual {p1}, Lfud;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PagamentoCartoesValidacionAction;->a(Lcom/santander/app/PagamentoCartoesValidacionAction;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-static {v0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->g(Lcom/santander/app/PagamentoCartoesValidacionAction;)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfje;->a([Ljava/lang/Void;)Lfud;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 151
    check-cast p1, Lfud;

    invoke-virtual {p0, p1}, Lfje;->a(Lfud;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    iget-object v1, p0, Lfje;->a:Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-static {v1}, Lcom/santander/app/PagamentoCartoesValidacionAction;->a(Lcom/santander/app/PagamentoCartoesValidacionAction;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/PagamentoCartoesValidacionAction;->a:Landroid/app/Dialog;

    .line 156
    return-void
.end method
