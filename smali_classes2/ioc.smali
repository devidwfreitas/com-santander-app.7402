.class public Lioc;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Liog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Liog;
    .locals 4

    .prologue
    .line 317
    new-instance v0, Liog;

    invoke-direct {v0}, Liog;-><init>()V

    .line 320
    :try_start_0
    invoke-static {}, Lhat;->t()Liot;

    move-result-object v1

    iget-object v2, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->b(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    .line 321
    invoke-static {v3}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->c(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-virtual {v1, v2, v3}, Liot;->a(Ljava/util/ArrayList;Ljava/lang/String;)Liog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    .line 323
    :catch_0
    move-exception v1

    .line 324
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Liog;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 333
    invoke-virtual {p1}, Liog;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    new-array v0, v4, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v1, v0, v3

    sget-object v1, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    aput-object v1, v0, v2

    .line 338
    iget-object v1, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->d(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)V

    .line 340
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 341
    new-instance v2, Liod;

    invoke-direct {v2, p0, p1}, Liod;-><init>(Lioc;Liog;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 370
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {p1}, Liog;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@ERMPE0357"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->e(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)V

    .line 359
    iget-object v0, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v0, v2}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;I)V

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p1}, Liog;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@ERMPE0356"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->e(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)V

    .line 362
    iget-object v0, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v0, v4}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;I)V

    goto :goto_0

    .line 363
    :cond_2
    invoke-virtual {p1}, Liog;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@ERMPE3072"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->e(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)V

    .line 365
    iget-object v0, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;I)V

    goto :goto_0

    .line 367
    :cond_3
    iget-object v0, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->e(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)V

    .line 368
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lioc;->a([Ljava/lang/Void;)Liog;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 308
    check-cast p1, Liog;

    invoke-virtual {p0, p1}, Lioc;->a(Liog;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    iget-object v1, p0, Lioc;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->a:Landroid/app/Dialog;

    .line 313
    return-void
.end method
