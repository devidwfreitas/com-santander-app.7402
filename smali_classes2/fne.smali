.class public Lfne;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfwb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V
    .locals 1

    .prologue
    .line 320
    iput-object p1, p0, Lfne;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfne;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Lfmy;)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lfne;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfwb;
    .locals 2

    .prologue
    .line 335
    .line 336
    :try_start_0
    invoke-static {}, Lhat;->e()Lhbg;

    move-result-object v0

    invoke-virtual {v0}, Lhbg;->d()Lfwb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfwb;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 347
    iput-boolean v2, p0, Lfne;->b:Z

    .line 349
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lfwb;->hasError()Z

    move-result v0

    if-nez v0, :cond_3

    .line 351
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhau;->a(Lfwb;)V

    .line 352
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 353
    invoke-virtual {p1}, Lfwb;->f()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lfwb;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 354
    invoke-virtual {p1}, Lfwb;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfwj;

    .line 356
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lfwj;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 359
    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    const-string v3, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    .line 361
    :cond_1
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1}, Lhau;->j()Lfwb;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfwb;->f(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lfne;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->b(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V

    .line 364
    iget-object v0, p0, Lfne;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->a(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 375
    :cond_2
    :goto_2
    return-void

    .line 366
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lfwb;->hasError()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhau;->a(Ljava/lang/Boolean;)V

    .line 368
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    new-instance v1, Lfwb;

    invoke-direct {v1}, Lfwb;-><init>()V

    invoke-virtual {v0, v1}, Lhau;->a(Lfwb;)V

    .line 370
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfne;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_2

    .line 372
    :cond_4
    if-nez p1, :cond_2

    .line 373
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfne;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 320
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfne;->a([Ljava/lang/Void;)Lfwb;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 320
    check-cast p1, Lfwb;

    invoke-virtual {p0, p1}, Lfne;->a(Lfwb;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 326
    iget-boolean v0, p0, Lfne;->b:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lfne;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->a(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 329
    :cond_0
    return-void
.end method
