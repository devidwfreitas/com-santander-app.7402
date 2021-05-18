.class public Lfin;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfwa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/InvestimentosConsolidadaActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/InvestimentosConsolidadaActivity;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/InvestimentosConsolidadaActivity;Lfii;)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lfin;-><init>(Lcom/santander/app/InvestimentosConsolidadaActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfwa;
    .locals 2

    .prologue
    .line 450
    .line 451
    :try_start_0
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    iget-object v1, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->b(Lcom/santander/app/InvestimentosConsolidadaActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbh;->b(Ljava/lang/String;)Lfwa;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 457
    :goto_0
    return-object v0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfwa;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 462
    iget-object v0, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    iget-object v0, v0, Lcom/santander/app/InvestimentosConsolidadaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    iget-object v0, v0, Lcom/santander/app/InvestimentosConsolidadaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    iget-object v0, v0, Lcom/santander/app/InvestimentosConsolidadaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 464
    iget-object v0, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    iput-object v1, v0, Lcom/santander/app/InvestimentosConsolidadaActivity;->a:Landroid/app/Dialog;

    .line 466
    :cond_0
    if-nez p1, :cond_1

    .line 468
    iget-object v0, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v0, v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->a(Lcom/santander/app/InvestimentosConsolidadaActivity;Lfwa;)Lfwa;

    .line 469
    iget-object v0, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->e(Lcom/santander/app/InvestimentosConsolidadaActivity;)V

    .line 488
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-virtual {p1}, Lfwa;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v0, v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->a(Lcom/santander/app/InvestimentosConsolidadaActivity;Lfwa;)Lfwa;

    .line 474
    iget-object v0, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->e(Lcom/santander/app/InvestimentosConsolidadaActivity;)V

    .line 476
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->d(Lcom/santander/app/InvestimentosConsolidadaActivity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 480
    :cond_2
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhau;->b(Ljava/lang/Boolean;)V

    .line 483
    iget-object v0, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v0, p1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->a(Lcom/santander/app/InvestimentosConsolidadaActivity;Lfwa;)Lfwa;

    .line 485
    iget-object v0, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->e(Lcom/santander/app/InvestimentosConsolidadaActivity;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 439
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfin;->a([Ljava/lang/Void;)Lfwa;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 439
    check-cast p1, Lfwa;

    invoke-virtual {p0, p1}, Lfin;->a(Lfwa;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    iget-object v1, p0, Lfin;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->d(Lcom/santander/app/InvestimentosConsolidadaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/InvestimentosConsolidadaActivity;->a:Landroid/app/Dialog;

    .line 444
    return-void
.end method
