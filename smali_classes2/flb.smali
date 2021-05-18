.class public Lflb;
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

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)V
    .locals 1

    .prologue
    .line 197
    iput-object p1, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflb;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;Lfky;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lflb;-><init>(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftc;
    .locals 2

    .prologue
    .line 212
    .line 213
    :try_start_0
    invoke-static {}, Lhat;->e()Lhbg;

    move-result-object v0

    invoke-virtual {v0}, Lhbg;->e()Lftc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lftc;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    iput-boolean v3, p0, Lflb;->b:Z

    .line 226
    if-nez p1, :cond_1

    .line 227
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->b(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p1}, Lftc;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    new-instance v1, Lftc;

    invoke-direct {v1}, Lftc;-><init>()V

    invoke-static {v0, v1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;Lftc;)Lftc;

    .line 233
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->b(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v0, p1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;Lftc;)Lftc;

    .line 239
    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->c(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Lftc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->c(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Lftc;

    move-result-object v0

    invoke-virtual {v0}, Lftc;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->c(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Lftc;

    move-result-object v0

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 241
    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->d(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)V

    .line 242
    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 244
    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    iget-object v0, v0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    iget-object v0, v0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    iget-object v0, v0, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->b(Ljava/lang/Boolean;)V

    .line 246
    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->goAplicacaoPoupanca(Landroid/view/View;)V

    goto/16 :goto_0

    .line 249
    :cond_3
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    const-string v1, "tipo_produto"

    sget-object v2, Ljda;->POUPANCA:Ljda;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-virtual {v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lflb;->a([Ljava/lang/Void;)Lftc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 197
    check-cast p1, Lftc;

    invoke-virtual {p0, p1}, Lflb;->a(Lftc;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lflb;->b:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lflb;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->a(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 206
    :cond_0
    return-void
.end method
