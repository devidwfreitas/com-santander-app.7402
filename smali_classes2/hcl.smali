.class public Lhcl;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lhcs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;Lhck;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lhcl;-><init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lhcs;
    .locals 3

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    iget-object v0, p0, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "cartaoDesloqueioModel"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhct;

    invoke-static {v1, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;Lhct;)Lhct;

    .line 96
    invoke-static {}, Lhat;->w()Lhcy;

    move-result-object v0

    iget-object v1, p0, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->b(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)Lhct;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcy;->a(Lhct;)Lhcs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lhcs;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lhcs;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->c(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)V

    .line 111
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 147
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p1}, Lhcs;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    const/4 v1, 0x0

    sget-object v2, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v2, v0, v1

    sget-object v1, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    aput-object v1, v0, v3

    .line 121
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 122
    new-instance v2, Lhcm;

    invoke-direct {v2, p0, p1}, Lhcm;-><init>(Lhcl;Lhcs;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->c(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string v1, "cartaoDesloqueioModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhcl;->a([Ljava/lang/Void;)Lhcs;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lhcs;

    invoke-virtual {p0, p1}, Lhcl;->a(Lhcs;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    iget-object v1, p0, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 90
    return-void
.end method
