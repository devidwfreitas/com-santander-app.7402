.class public Lfkm;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfsy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfkl;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lfkm;-><init>(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfsy;
    .locals 7

    .prologue
    .line 236
    .line 237
    :try_start_0
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lftl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 238
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    iget-object v1, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->d(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v1

    iget-object v2, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->e(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Z

    move-result v2

    iget-object v3, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v3}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->f(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v4}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->g(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    .line 239
    invoke-static {v5}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->h(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Ljava/lang/String;

    move-result-object v5

    .line 238
    invoke-virtual/range {v0 .. v5}, Lhbh;->a(Lfsy;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfsy;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Ljava/lang/Boolean;)V

    .line 252
    :goto_0
    return-object v0

    .line 242
    :cond_0
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    iget-object v1, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->d(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v1

    iget-object v2, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lftl;

    move-result-object v2

    iget-object v3, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    .line 243
    invoke-static {v3}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->e(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Z

    move-result v3

    iget-object v4, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v4}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->f(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v5}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->g(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v6}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->h(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Ljava/lang/String;

    move-result-object v6

    .line 242
    invoke-virtual/range {v0 .. v6}, Lhbh;->a(Lfsy;Lftl;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfsy;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfsy;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    iget-object v1, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->g()Lfsy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)Lfsy;

    .line 259
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    iget-object v1, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->e()Lfsy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)Lfsy;

    .line 261
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)V

    .line 263
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfsy;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lfsy;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->d(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)V

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->e(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfkm;->a([Ljava/lang/Void;)Lfsy;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 216
    check-cast p1, Lfsy;

    invoke-virtual {p0, p1}, Lfkm;->a(Lfsy;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    iget-object v1, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->e()Lfsy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)Lfsy;

    .line 222
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    iget-object v1, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Z)Z

    .line 223
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    iget-object v1, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    iget-object v1, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 229
    :cond_0
    iget-object v0, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    iget-object v1, p0, Lfkm;->a:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 231
    return-void
.end method
