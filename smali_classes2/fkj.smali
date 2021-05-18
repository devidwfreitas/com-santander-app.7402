.class public Lfkj;
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
.field final synthetic a:Lcom/santander/app/PoupancaAplicacaoActivity;

.field private b:Z

.field private c:Lftl;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/santander/app/PoupancaAplicacaoActivity;)V
    .locals 1

    .prologue
    .line 365
    iput-object p1, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfkj;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/PoupancaAplicacaoActivity;Lfkf;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lfkj;-><init>(Lcom/santander/app/PoupancaAplicacaoActivity;)V

    return-void
.end method

.method private b(Lfsy;)V
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p1}, Lfsy;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Lfsy;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    iget-object v1, p0, Lfkj;->c:Lftl;

    invoke-virtual {v0, p1, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->openConfirmar(Lfsy;Lftl;)V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->h(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/PoupancaAplicacaoActivity;

    move-result-object v0

    invoke-virtual {p1}, Lfsy;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfsy;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 402
    iget-boolean v1, p0, Lfkj;->b:Z

    if-nez v1, :cond_0

    .line 406
    :try_start_0
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v1

    iget-object v2, p0, Lfkj;->d:Ljava/lang/String;

    iget-object v3, p0, Lfkj;->c:Lftl;

    iget-object v4, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v4}, Lcom/santander/app/PoupancaAplicacaoActivity;->i(Lcom/santander/app/PoupancaAplicacaoActivity;)Z

    move-result v4

    iget-object v5, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v5}, Lcom/santander/app/PoupancaAplicacaoActivity;->f(Lcom/santander/app/PoupancaAplicacaoActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lhbh;->a(Ljava/lang/String;Lftl;ZLjava/lang/String;)Lfsy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 415
    :cond_0
    :goto_0
    return-object v0

    .line 410
    :catch_0
    move-exception v1

    .line 411
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lfsy;)V
    .locals 3

    .prologue
    .line 421
    iget-boolean v0, p0, Lfkj;->b:Z

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->j(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->j(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->j(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 424
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 426
    :cond_0
    if-nez p1, :cond_2

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    invoke-virtual {p1}, Lfsy;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->h(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/PoupancaAplicacaoActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 431
    :cond_3
    invoke-direct {p0, p1}, Lfkj;->b(Lfsy;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZLftl;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {p1}, Lnak;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->f(Lcom/santander/app/PoupancaAplicacaoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {p1}, Lnak;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    :cond_0
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0, p2}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Z)Z

    .line 379
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0, p4}, Lcom/santander/app/PoupancaAplicacaoActivity;->b(Lcom/santander/app/PoupancaAplicacaoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    iput-object p3, p0, Lfkj;->c:Lftl;

    .line 381
    iput-object p4, p0, Lfkj;->d:Ljava/lang/String;

    .line 382
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfkj;->a([Ljava/lang/Void;)Lfsy;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 365
    check-cast p1, Lfsy;

    invoke-virtual {p0, p1}, Lfkj;->a(Lfsy;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->g(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    invoke-static {v0}, Lnaj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfkj;->d:Ljava/lang/String;

    .line 396
    :goto_0
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    iget-object v1, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->h(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/PoupancaAplicacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 398
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->h(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/PoupancaAplicacaoActivity;

    move-result-object v0

    iget-object v1, p0, Lfkj;->a:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfkj;->b:Z

    goto :goto_0
.end method
