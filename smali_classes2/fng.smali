.class public Lfng;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lftn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Lfmy;)V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lfng;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftn;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 492
    .line 494
    :try_start_0
    iget-object v1, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;

    move-result-object v1

    invoke-virtual {v1}, Lfwb;->h()Lftn;

    move-result-object v1

    if-nez v1, :cond_1

    .line 496
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v1

    invoke-virtual {v1}, Lhbh;->d()Lftn;

    move-result-object v0

    .line 507
    :cond_0
    :goto_0
    return-object v0

    .line 498
    :cond_1
    iget-object v1, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;

    move-result-object v1

    invoke-virtual {v1}, Lfwb;->h()Lftn;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v1

    .line 505
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lftn;)V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->e(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->e(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->e(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 514
    iget-object v0, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->a(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 516
    :cond_0
    if-nez p1, :cond_1

    .line 533
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-virtual {p1}, Lftn;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 525
    :cond_2
    invoke-virtual {p1}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 526
    iget-object v0, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfwb;->a(Lftn;)V

    .line 527
    iget-object v0, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-virtual {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->b()V

    goto :goto_0

    .line 529
    :cond_3
    iget-object v0, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-virtual {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 482
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfng;->a([Ljava/lang/Void;)Lftn;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 482
    check-cast p1, Lftn;

    invoke-virtual {p0, p1}, Lfng;->a(Lftn;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    iget-object v1, p0, Lfng;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->a(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 487
    return-void
.end method
