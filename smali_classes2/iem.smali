.class public Liem;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfue;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/faturas/activity/FaturasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V
    .locals 1

    .prologue
    .line 813
    iput-object p1, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 815
    const/4 v0, 0x0

    iput-object v0, p0, Liem;->a:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfue;
    .locals 2

    .prologue
    .line 824
    .line 825
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v0

    invoke-virtual {v0}, Lghu;->h()Lfue;

    move-result-object v0

    .line 826
    if-nez v0, :cond_0

    .line 827
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v0

    iget-object v1, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbc;->a(Lghu;)Lfue;

    move-result-object v0

    .line 829
    :cond_0
    return-object v0
.end method

.method protected a(Lfue;)V
    .locals 7

    .prologue
    const v6, 0x7f09024c

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 834
    iget-object v0, p0, Liem;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Liem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 836
    iput-object v4, p0, Liem;->a:Landroid/app/Dialog;

    .line 839
    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lfue;->hasError()Z

    move-result v0

    if-nez v0, :cond_6

    .line 840
    invoke-virtual {p1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 841
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lghu;->a(Lfue;)V

    .line 843
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, p1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)Lfue;

    .line 845
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, p1}, Lcom/santander/app/faturas/activity/FaturasActivity;->b(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)V

    .line 846
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->h(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 886
    :goto_0
    return-void

    .line 850
    :cond_1
    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 852
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, p1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)Lfue;

    .line 853
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->i(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->j(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->k(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 856
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->h(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 858
    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cliente sem fatura"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 859
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->l(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 860
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->l(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 861
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, v4}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 863
    :cond_2
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, v1, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    iget-object v2, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-virtual {v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 865
    :cond_3
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 870
    :cond_4
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, p1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)Lfue;

    .line 871
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->i(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->j(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->k(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->h(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->l(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 877
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->l(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 878
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, v4}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 880
    :cond_5
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, v1, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    iget-object v2, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-virtual {v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 884
    :cond_6
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, v1, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 813
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Liem;->a([Ljava/lang/Void;)Lfue;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 813
    check-cast p1, Lfue;

    invoke-virtual {p0, p1}, Liem;->a(Lfue;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Liem;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Liem;->a:Landroid/app/Dialog;

    .line 820
    return-void
.end method
