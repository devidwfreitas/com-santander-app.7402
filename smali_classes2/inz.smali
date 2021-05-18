.class public Linz;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lioh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Linz;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lioh;
    .locals 4

    .prologue
    .line 382
    new-instance v0, Lioh;

    invoke-direct {v0}, Lioh;-><init>()V

    .line 385
    :try_start_0
    invoke-static {}, Lhat;->t()Liot;

    move-result-object v1

    iget-object v2, p0, Linz;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    .line 386
    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->j(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Linz;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v3}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->c(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Liot;->b(Ljava/util/ArrayList;Ljava/lang/String;)Lioh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 388
    :catch_0
    move-exception v1

    .line 389
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lioh;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 397
    const-string v0, "Santander:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlterarTask response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lioh;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    if-eqz p1, :cond_1

    .line 399
    invoke-virtual {p1}, Lioh;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v1, v0, v3

    sget-object v1, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    aput-object v1, v0, v4

    .line 404
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 405
    new-instance v2, Lioa;

    invoke-direct {v2, p0, p1}, Lioa;-><init>(Linz;Lioh;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 431
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Linz;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->e(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)V

    .line 425
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Linz;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v4, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Linz;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->e(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)V

    .line 429
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Linz;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v4, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 373
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Linz;->a([Ljava/lang/Void;)Lioh;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 373
    check-cast p1, Lioh;

    invoke-virtual {p0, p1}, Linz;->a(Lioh;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Linz;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    iget-object v1, p0, Linz;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->a:Landroid/app/Dialog;

    .line 378
    return-void
.end method
