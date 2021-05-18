.class public Lflc;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lftc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftc;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 293
    .line 295
    :try_start_0
    iget-object v0, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->c(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Lftc;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Lftc;->a()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 298
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    invoke-virtual {v0}, Lhbh;->c()Lftc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 309
    :cond_0
    :goto_0
    return-object v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 309
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lftc;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 314
    iget-object v0, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->e(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->e(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->e(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 316
    iget-object v0, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 318
    :cond_0
    if-nez p1, :cond_2

    .line 319
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->b(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 321
    :cond_2
    invoke-virtual {p1}, Lftc;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->b(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 326
    :cond_3
    iget-object v0, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v0, p1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;Lftc;)Lftc;

    .line 328
    iget-object v0, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    iget v0, v0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a:I

    if-nez v0, :cond_4

    .line 329
    iget-object v0, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-virtual {v0, p1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a(Lftc;)V

    goto :goto_0

    .line 330
    :cond_4
    iget-object v0, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    iget v0, v0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a:I

    if-ne v0, v2, :cond_1

    .line 331
    iget-object v0, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-virtual {v0, p1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->b(Lftc;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 283
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lflc;->a([Ljava/lang/Void;)Lftc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 283
    check-cast p1, Lftc;

    invoke-virtual {p0, p1}, Lflc;->a(Lftc;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    iget-object v1, p0, Lflc;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->b(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 288
    return-void
.end method
