.class public Lieo;
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
.method private constructor <init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V
    .locals 1

    .prologue
    .line 889
    iput-object p1, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 891
    const/4 v0, 0x0

    iput-object v0, p0, Lieo;->a:Landroid/app/Dialog;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/faturas/activity/FaturasActivity;Lieb;)V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0, p1}, Lieo;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfue;
    .locals 2

    .prologue
    .line 902
    .line 903
    :try_start_0
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v0

    invoke-virtual {v0}, Lghu;->i()Lfue;

    move-result-object v0

    .line 904
    if-nez v0, :cond_0

    .line 905
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v0

    iget-object v1, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhbc;->b(Lghu;)Lfue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 911
    :cond_0
    :goto_0
    return-object v0

    .line 909
    :catch_0
    move-exception v0

    .line 911
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfue;)V
    .locals 8

    .prologue
    const v3, 0x7f09024c

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/16 v1, 0x8

    const/4 v6, 0x0

    .line 916
    iget-object v0, p0, Lieo;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lieo;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lieo;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 918
    iput-object v2, p0, Lieo;->a:Landroid/app/Dialog;

    .line 921
    :cond_0
    if-nez p1, :cond_2

    .line 922
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, v1, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v7, v6}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 975
    :goto_0
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->m(Lcom/santander/app/faturas/activity/FaturasActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->d(Lcom/santander/app/faturas/activity/FaturasActivity;)Lfue;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->d(Lcom/santander/app/faturas/activity/FaturasActivity;)Lfue;

    move-result-object v0

    invoke-virtual {v0}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 977
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->d(Lcom/santander/app/faturas/activity/FaturasActivity;)Lfue;

    move-result-object v0

    invoke-virtual {v0}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    .line 978
    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 979
    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 980
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 982
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 983
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 985
    if-ne v1, v3, :cond_a

    if-ne v0, v2, :cond_a

    .line 995
    :goto_1
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, v6}, Lcom/santander/app/faturas/activity/FaturasActivity;->b(Lcom/santander/app/faturas/activity/FaturasActivity;Z)Z

    .line 997
    :cond_1
    return-void

    .line 923
    :cond_2
    invoke-virtual {p1}, Lfue;->hasError()Z

    move-result v0

    if-nez v0, :cond_9

    .line 924
    invoke-virtual {p1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lfue;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 925
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lghu;->b(Lfue;)V

    .line 927
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, p1}, Lcom/santander/app/faturas/activity/FaturasActivity;->c(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)Lfue;

    .line 928
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, p1}, Lcom/santander/app/faturas/activity/FaturasActivity;->d(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)V

    .line 930
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->h(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->j(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 934
    :cond_3
    invoke-virtual {p1}, Lfue;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lfue;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 936
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->j(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->k(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->i(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lfue;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->h(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lfue;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 944
    :cond_4
    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 946
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->j(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->k(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->i(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->h(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 951
    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cliente sem fatura"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 952
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->l(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 953
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->l(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 954
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 956
    :cond_5
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, v1, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    iget-object v2, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-virtual {v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 958
    :cond_6
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 963
    :cond_7
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->l(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 964
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->l(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 965
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 967
    :cond_8
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, v1, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    iget-object v2, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-virtual {v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 972
    :cond_9
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v0

    new-instance v1, Lfue;

    invoke-direct {v1}, Lfue;-><init>()V

    invoke-virtual {v0, v1}, Lghu;->b(Lfue;)V

    .line 973
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, v1, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v7, v6}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto/16 :goto_0

    .line 989
    :cond_a
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->n(Lcom/santander/app/faturas/activity/FaturasActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/santander/app/components/view/ClickToSelectEditText;->setSelection(I)V

    goto/16 :goto_1

    .line 993
    :cond_b
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->n(Lcom/santander/app/faturas/activity/FaturasActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/santander/app/components/view/ClickToSelectEditText;->setSelection(I)V

    goto/16 :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 889
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lieo;->a([Ljava/lang/Void;)Lfue;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 889
    check-cast p1, Lfue;

    invoke-virtual {p0, p1}, Lieo;->a(Lfue;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lieo;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lieo;->a:Landroid/app/Dialog;

    .line 896
    return-void
.end method
