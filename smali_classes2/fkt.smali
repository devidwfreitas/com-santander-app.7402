.class public Lfkt;
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
.field final synthetic a:Lcom/santander/app/PoupancaResgateActivity;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/santander/app/PoupancaResgateActivity;)V
    .locals 1

    .prologue
    .line 467
    iput-object p1, p0, Lfkt;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfkt;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/PoupancaResgateActivity;Lfkn;)V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lfkt;-><init>(Lcom/santander/app/PoupancaResgateActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftc;
    .locals 2

    .prologue
    .line 482
    .line 483
    :try_start_0
    invoke-static {}, Lhat;->e()Lhbg;

    move-result-object v0

    invoke-virtual {v0}, Lhbg;->e()Lftc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 489
    :goto_0
    return-object v0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lftc;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 495
    iput-boolean v3, p0, Lfkt;->b:Z

    .line 497
    if-nez p1, :cond_0

    .line 498
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfkt;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->l(Lcom/santander/app/PoupancaResgateActivity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 510
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-virtual {p1}, Lftc;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfkt;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->l(Lcom/santander/app/PoupancaResgateActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 505
    :cond_1
    iget-object v0, p0, Lfkt;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0, p1}, Lcom/santander/app/PoupancaResgateActivity;->a(Lcom/santander/app/PoupancaResgateActivity;Lftc;)Lftc;

    .line 506
    iget-object v0, p0, Lfkt;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->q(Lcom/santander/app/PoupancaResgateActivity;)V

    .line 507
    iget-object v0, p0, Lfkt;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->p(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 467
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfkt;->a([Ljava/lang/Void;)Lftc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 467
    check-cast p1, Lftc;

    invoke-virtual {p0, p1}, Lfkt;->a(Lftc;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 473
    iget-boolean v0, p0, Lfkt;->b:Z

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lfkt;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->p(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 476
    :cond_0
    return-void
.end method
