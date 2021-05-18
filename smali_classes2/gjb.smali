.class public Lgjb;
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
.field final synthetic a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;Lgja;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lgjb;-><init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lful;
    .locals 3

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->b(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)Lgig;

    move-result-object v0

    invoke-virtual {v0}, Lgig;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgif;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Lgif;->b(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v0

    iget-object v1, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->c(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)Lfuu;

    move-result-object v1

    iget-object v2, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    invoke-static {v2}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->b(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)Lgig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhbc;->a(Lfuu;Lgig;)Lful;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lful;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    if-nez p1, :cond_0

    .line 149
    iget-object v0, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->d(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)V

    .line 150
    iget-object v0, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a(Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Lful;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->d(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)V

    .line 154
    iget-object v0, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    invoke-virtual {p1}, Lful;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1}, Lful;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lful;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    aput-object v2, v0, v1

    .line 165
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 166
    new-instance v2, Lgjc;

    invoke-direct {v2, p0}, Lgjc;-><init>(Lgjb;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->d(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)V

    .line 178
    iget-object v0, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    invoke-virtual {p1}, Lful;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lgjb;->a([Ljava/lang/Void;)Lful;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 122
    check-cast p1, Lful;

    invoke-virtual {p0, p1}, Lgjb;->a(Lful;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    iget-object v1, p0, Lgjb;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a:Landroid/app/Dialog;

    .line 127
    return-void
.end method
