.class Likw;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lfuz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Likl;

.field private b:Z


# direct methods
.method private constructor <init>(Likl;)V
    .locals 1

    .prologue
    .line 617
    iput-object p1, p0, Likw;->a:Likl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Likw;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Likl;Likm;)V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0, p1}, Likw;-><init>(Likl;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lfuz;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 632
    if-nez p1, :cond_0

    .line 642
    :goto_0
    return-object v0

    .line 636
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p1, v1

    move-object v2, v1

    .line 637
    :goto_1
    const/4 v1, 0x1

    aget-object v1, p1, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v1, p1, v1

    .line 638
    :goto_2
    invoke-static {}, Lhat;->k()Lhbl;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lhbl;->a(Ljava/lang/String;Ljava/lang/String;)Lfuz;

    move-result-object v0

    goto :goto_0

    .line 636
    :cond_1
    const-string v1, ""

    move-object v2, v1

    goto :goto_1

    .line 637
    :cond_2
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 639
    :catch_0
    move-exception v1

    .line 640
    const-string v2, "FazerPagamen...Fragment"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lfuz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 648
    iget-object v0, p0, Likw;->a:Likl;

    invoke-static {v0}, Likl;->l(Likl;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Likw;->a:Likl;

    invoke-static {v0}, Likl;->l(Likl;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Likw;->a:Likl;

    invoke-static {v0}, Likl;->l(Likl;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 650
    iget-object v0, p0, Likw;->a:Likl;

    invoke-static {v0, v1}, Likl;->a(Likl;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 653
    :cond_0
    iput-boolean v3, p0, Likw;->b:Z

    .line 654
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfuz;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    :cond_1
    iget-object v0, p0, Likw;->a:Likl;

    invoke-static {v0, v1}, Likl;->a(Likl;Lfuz;)Lfuz;

    .line 656
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Likw;->a:Likl;

    invoke-virtual {v1}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 685
    :goto_0
    return-void

    .line 659
    :cond_2
    iget-object v0, p0, Likw;->a:Likl;

    invoke-static {v0, p1}, Likl;->a(Likl;Lfuz;)Lfuz;

    .line 662
    iget-object v0, p0, Likw;->a:Likl;

    invoke-virtual {v0}, Likl;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100901

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 663
    invoke-virtual {p1}, Lfuz;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v0, p0, Likw;->a:Likl;

    invoke-virtual {v0}, Likl;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1008e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 666
    invoke-virtual {p1}, Lfuz;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v0, p0, Likw;->a:Likl;

    invoke-virtual {v0}, Likl;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1008fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 670
    iget-object v1, p0, Likw;->a:Likl;

    invoke-static {v1}, Likl;->b(Likl;)Lfuz;

    move-result-object v1

    invoke-virtual {v1}, Lfuz;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 671
    if-eqz v0, :cond_3

    .line 672
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 679
    :cond_3
    :goto_1
    iget-object v0, p0, Likw;->a:Likl;

    invoke-virtual {v0}, Likl;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100903

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 680
    invoke-virtual {p1}, Lfuz;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dd-MM-yyyy"

    const-string v3, "dd/MM/yyyy"

    invoke-static {v1, v2, v3}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 675
    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Likw;->b:Z

    return v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 617
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Likw;->a([Ljava/lang/String;)Lfuz;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 617
    check-cast p1, Lfuz;

    invoke-virtual {p0, p1}, Likw;->a(Lfuz;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Likw;->b:Z

    .line 627
    iget-object v0, p0, Likw;->a:Likl;

    iget-object v1, p0, Likw;->a:Likl;

    invoke-virtual {v1}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Likl;->a(Likl;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 628
    return-void
.end method
