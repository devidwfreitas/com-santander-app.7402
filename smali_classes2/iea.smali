.class public Liea;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfug;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;Lidw;)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0, p1}, Liea;-><init>(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfug;
    .locals 4

    .prologue
    .line 474
    .line 476
    :try_start_0
    iget-object v0, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->e(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Lfue;

    move-result-object v0

    invoke-virtual {v0}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v1

    iget-object v2, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v2}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->f(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Lghu;

    move-result-object v2

    iget-object v3, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v3}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->g(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lhbc;->c(Lghu;Ljava/lang/String;Ljava/lang/String;)Lfug;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 485
    :goto_0
    return-object v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfug;)V
    .locals 5

    .prologue
    const v3, 0x7f090498

    const v2, 0x7f09043a

    const/4 v4, 0x0

    .line 491
    iget-object v0, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 492
    iget-object v0, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 494
    iget-object v0, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a:Landroid/app/Dialog;

    .line 497
    :cond_0
    if-nez p1, :cond_1

    .line 498
    iget-object v0, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->c(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-virtual {v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-virtual {v2}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    .line 516
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-virtual {p1}, Lfug;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    iget-object v0, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->c(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-virtual {v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-virtual {v2}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {p1}, Lfug;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 508
    iget-object v0, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->c(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-virtual {v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-virtual {v2}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09049b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    goto :goto_0

    .line 511
    :cond_3
    iget-object v0, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->c(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-virtual {v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-virtual {v2}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 462
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Liea;->a([Ljava/lang/Void;)Lfug;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 462
    check-cast p1, Lfug;

    invoke-virtual {p0, p1}, Liea;->a(Lfug;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    iget-object v1, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->c(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a:Landroid/app/Dialog;

    .line 467
    iget-object v1, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    iget-object v0, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Liea;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v2}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->d(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Lgon;

    move-result-object v2

    invoke-virtual {v2}, Lgon;->a()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-static {v1, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;Lghu;)Lghu;

    .line 468
    return-void
.end method
