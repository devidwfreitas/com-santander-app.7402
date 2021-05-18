.class public Lfgx;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfuf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/CadastramentoFacturaActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/CadastramentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/CadastramentoFacturaActivity;Lfgq;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lfgx;-><init>(Lcom/santander/app/CadastramentoFacturaActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfuf;
    .locals 2

    .prologue
    .line 330
    .line 333
    :try_start_0
    iget-object v0, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/CadastramentoFacturaActivity;->b(Lcom/santander/app/CadastramentoFacturaActivity;)Lghu;

    move-result-object v0

    invoke-virtual {v0}, Lghu;->m()Lfuf;

    move-result-object v0

    .line 334
    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v0

    invoke-virtual {v0}, Lhbc;->c()Lfuf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 342
    :cond_0
    :goto_0
    return-object v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfuf;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 348
    iget-object v0, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoFacturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoFacturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 350
    iget-object v0, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/CadastramentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 353
    :cond_0
    if-nez p1, :cond_1

    .line 354
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/CadastramentoFacturaActivity;->g(Lcom/santander/app/CadastramentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v7, v5}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 379
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p1}, Lfuf;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/CadastramentoFacturaActivity;->g(Lcom/santander/app/CadastramentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f100531

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 358
    iget-object v1, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/CadastramentoFacturaActivity;->g(Lcom/santander/app/CadastramentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f10052f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 359
    iget-object v2, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v2}, Lcom/santander/app/CadastramentoFacturaActivity;->g(Lcom/santander/app/CadastramentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f100530

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 360
    iget-object v3, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    const v4, 0x7f100537

    invoke-virtual {v3, v4}, Lcom/santander/app/CadastramentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 362
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 363
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 367
    invoke-virtual {p1}, Lfuf;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lfuf;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOAPFaultException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/CadastramentoFacturaActivity;->g(Lcom/santander/app/CadastramentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-virtual {v1}, Lcom/santander/app/CadastramentoFacturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090398

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_2
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/CadastramentoFacturaActivity;->g(Lcom/santander/app/CadastramentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v7, v5}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto/16 :goto_0

    .line 372
    :cond_3
    invoke-virtual {p1}, Lfuf;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 373
    iget-object v0, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/CadastramentoFacturaActivity;->g(Lcom/santander/app/CadastramentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lfuf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    :cond_4
    iget-object v0, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/CadastramentoFacturaActivity;->b(Lcom/santander/app/CadastramentoFacturaActivity;)Lghu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lghu;->a(Lfuf;)V

    .line 377
    iget-object v0, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    iget-object v1, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/CadastramentoFacturaActivity;->b(Lcom/santander/app/CadastramentoFacturaActivity;)Lghu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/CadastramentoFacturaActivity;->b(Lcom/santander/app/CadastramentoFacturaActivity;Lghu;)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 321
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfgx;->a([Ljava/lang/Void;)Lfuf;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 321
    check-cast p1, Lfuf;

    invoke-virtual {p0, p1}, Lfgx;->a(Lfuf;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    iget-object v1, p0, Lfgx;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/CadastramentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 326
    return-void
.end method
