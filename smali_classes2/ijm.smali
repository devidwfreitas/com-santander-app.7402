.class Lijm;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfud;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lijf;


# direct methods
.method private constructor <init>(Lijf;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lijm;->a:Lijf;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lijf;Lijg;)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lijm;-><init>(Lijf;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfud;
    .locals 2

    .prologue
    .line 519
    :try_start_0
    iget-object v0, p0, Lijm;->a:Lijf;

    invoke-static {v0}, Lijf;->a(Lijf;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lijm;->a:Lijf;

    invoke-static {v1}, Lijf;->h(Lijf;)Lgon;

    move-result-object v1

    invoke-virtual {v1}, Lgon;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->o()Lfud;

    move-result-object v0

    .line 521
    if-nez v0, :cond_0

    .line 523
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v0

    iget-object v1, p0, Lijm;->a:Lijf;

    invoke-static {v1}, Lijf;->l(Lijf;)Lghu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbc;->d(Lghu;)Lfud;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 530
    :cond_0
    :goto_0
    return-object v0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfud;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 536
    iget-object v0, p0, Lijm;->a:Lijf;

    iget-object v0, v0, Lijf;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lijm;->a:Lijf;

    iget-object v0, v0, Lijf;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lijm;->a:Lijf;

    iget-object v0, v0, Lijf;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 538
    iget-object v0, p0, Lijm;->a:Lijf;

    const/4 v1, 0x0

    iput-object v1, v0, Lijf;->a:Landroid/app/Dialog;

    .line 541
    :cond_0
    if-nez p1, :cond_1

    .line 542
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lijm;->a:Lijf;

    invoke-virtual {v1}, Lijf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 558
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-virtual {p1}, Lfud;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lijm;->a:Lijf;

    invoke-static {v0}, Lijf;->m(Lijf;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lijm;->a:Lijf;

    invoke-static {v0}, Lijf;->n(Lijf;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lijm;->a:Lijf;

    invoke-static {v0}, Lijf;->n(Lijf;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lfud;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lijm;->a:Lijf;

    invoke-virtual {v0}, Lijf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lfud;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_2
    iget-object v0, p0, Lijm;->a:Lijf;

    invoke-static {v0}, Lijf;->a(Lijf;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lijm;->a:Lijf;

    invoke-static {v1}, Lijf;->h(Lijf;)Lgon;

    move-result-object v1

    invoke-virtual {v1}, Lgon;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0, p1}, Lghu;->a(Lfud;)V

    .line 555
    iget-object v0, p0, Lijm;->a:Lijf;

    invoke-static {v0, p1}, Lijf;->a(Lijf;Lfud;)Lfud;

    .line 556
    iget-object v0, p0, Lijm;->a:Lijf;

    invoke-static {v0}, Lijf;->o(Lijf;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 507
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lijm;->a([Ljava/lang/Void;)Lfud;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 507
    check-cast p1, Lfud;

    invoke-virtual {p0, p1}, Lijm;->a(Lfud;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lijm;->a:Lijf;

    iget-object v1, p0, Lijm;->a:Lijf;

    invoke-virtual {v1}, Lijf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lijf;->a:Landroid/app/Dialog;

    .line 513
    return-void
.end method
