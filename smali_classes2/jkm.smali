.class public Ljkm;
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
.field final synthetic a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Ljkm;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;Ljkh;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Ljkm;-><init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftc;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 255
    .line 257
    :try_start_0
    iget-object v0, p0, Ljkm;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->a(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lftc;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0}, Lftc;->a()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 260
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    invoke-virtual {v0}, Lhbh;->c()Lftc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 271
    :cond_0
    :goto_0
    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 271
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lftc;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 276
    iget-object v0, p0, Ljkm;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->b(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljkm;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->b(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Ljkm;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->b(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 278
    iget-object v0, p0, Ljkm;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->a(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 280
    :cond_0
    if-nez p1, :cond_1

    .line 281
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Ljkm;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    iget-object v1, v1, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 291
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-virtual {p1}, Lftc;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Ljkm;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    iget-object v1, v1, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Ljkm;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->a(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;Lftc;)Lftc;

    .line 289
    iget-object v0, p0, Ljkm;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-virtual {v0, p1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->a(Lftc;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljkm;->a([Ljava/lang/Void;)Lftc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 245
    check-cast p1, Lftc;

    invoke-virtual {p0, p1}, Ljkm;->a(Lftc;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Ljkm;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    iget-object v1, p0, Ljkm;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    iget-object v1, v1, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->a(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 250
    return-void
.end method
