.class public Lfmd;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lftd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaAplicacaoActivity;

.field private b:I

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;)V
    .locals 1

    .prologue
    .line 432
    iput-object p1, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 434
    const/4 v0, -0x1

    iput v0, p0, Lfmd;->b:I

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfmd;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Lflx;)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lfmd;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftd;
    .locals 2

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lfmd;->b:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->e(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lftq;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lfmd;->c:Z

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lfmd;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lfmd;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lfmd;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    .line 459
    :cond_0
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lfmd;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->a()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhbh;->a(Ljava/lang/String;)Lftd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 517
    iput p1, p0, Lfmd;->b:I

    .line 518
    return-void
.end method

.method protected a(Lftd;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 474
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->f(Lcom/santander/app/RendaFixaAplicacaoActivity;)I

    .line 475
    iget-boolean v0, p0, Lfmd;->c:Z

    if-nez v0, :cond_6

    .line 476
    if-nez p1, :cond_3

    .line 478
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 480
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 507
    :cond_0
    :goto_0
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->b(Lcom/santander/app/RendaFixaAplicacaoActivity;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->i(Lcom/santander/app/RendaFixaAplicacaoActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 510
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 512
    :cond_1
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->finish()V

    .line 514
    :cond_2
    return-void

    .line 483
    :cond_3
    invoke-virtual {p1}, Lftd;->hasError()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 485
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 486
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 487
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 489
    :cond_4
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 492
    :cond_5
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lfmd;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0, p1}, Lftq;->a(Lftd;)V

    .line 494
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->b(Lcom/santander/app/RendaFixaAplicacaoActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->h(Lcom/santander/app/RendaFixaAplicacaoActivity;)V

    .line 496
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 498
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 504
    :cond_6
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0, v2}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Z)Z

    .line 505
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 432
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfmd;->a([Ljava/lang/Void;)Lftd;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 432
    check-cast p1, Lftd;

    invoke-virtual {p0, p1}, Lfmd;->a(Lftd;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lfmd;->b:I

    if-le v0, v1, :cond_1

    .line 441
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->b(Lcom/santander/app/RendaFixaAplicacaoActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iget-object v1, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 444
    :cond_0
    iget-object v0, p0, Lfmd;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->d(Lcom/santander/app/RendaFixaAplicacaoActivity;)I

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfmd;->c:Z

    goto :goto_0
.end method
