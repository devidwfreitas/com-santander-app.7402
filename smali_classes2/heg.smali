.class public Lheg;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lhem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPValidacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPValidacaoActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lhem;
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 159
    :try_start_0
    invoke-static {}, Lhat;->u()Lhfa;

    move-result-object v1

    iget-object v2, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPValidacaoActivity;->a(Lcom/santander/app/dpp/DPPValidacaoActivity;)Lheq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhfa;->d(Lheq;)Lhem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lhem;)V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPValidacaoActivity;->b(Lcom/santander/app/dpp/DPPValidacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPValidacaoActivity;->b(Lcom/santander/app/dpp/DPPValidacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPValidacaoActivity;->b(Lcom/santander/app/dpp/DPPValidacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 171
    iget-object v0, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPValidacaoActivity;->a(Lcom/santander/app/dpp/DPPValidacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 174
    :cond_0
    invoke-virtual {p1}, Lhem;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/dpp/DPPValidacaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/dpp/DPPComprovanteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 179
    iget-object v2, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPValidacaoActivity;->a(Lcom/santander/app/dpp/DPPValidacaoActivity;)Lheq;

    move-result-object v2

    invoke-virtual {p1}, Lhem;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lheq;->v(Ljava/lang/String;)V

    .line 180
    const-string v2, "dpp"

    iget-object v3, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPValidacaoActivity;->a(Lcom/santander/app/dpp/DPPValidacaoActivity;)Lheq;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 181
    const-string v2, "opcao"

    iget-object v3, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPValidacaoActivity;->c(Lcom/santander/app/dpp/DPPValidacaoActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/dpp/DPPValidacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p1}, Lhem;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lhem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPValidacaoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lhem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    iget-object v1, v1, Lcom/santander/app/dpp/DPPValidacaoActivity;->i:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lheg;->a([Ljava/lang/Void;)Lhem;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 147
    check-cast p1, Lhem;

    invoke-virtual {p0, p1}, Lheg;->a(Lhem;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    iget-object v1, p0, Lheg;->a:Lcom/santander/app/dpp/DPPValidacaoActivity;

    iget-object v1, v1, Lcom/santander/app/dpp/DPPValidacaoActivity;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPValidacaoActivity;->a(Lcom/santander/app/dpp/DPPValidacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 152
    return-void
.end method
