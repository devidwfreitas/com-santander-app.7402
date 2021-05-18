.class public Lien;
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
.field final synthetic a:Lcom/santander/app/faturas/activity/FaturasActivity;

.field private b:I

.field private c:Z

.field private d:Lfue;

.field private e:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1009
    iput-object p1, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1003
    iput v0, p0, Lien;->b:I

    .line 1004
    iput-boolean v0, p0, Lien;->c:Z

    .line 1010
    iput-object p2, p0, Lien;->d:Lfue;

    .line 1011
    iput p3, p0, Lien;->b:I

    .line 1012
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfue;
    .locals 4

    .prologue
    .line 1023
    :try_start_0
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v0

    iget-object v1, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v1

    iget-object v2, p0, Lien;->d:Lfue;

    invoke-virtual {v2}, Lfue;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lien;->d:Lfue;

    invoke-virtual {v3}, Lfue;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lhbc;->a(Lghu;Ljava/lang/String;Ljava/lang/String;)Lfue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1028
    :goto_0
    return-object v0

    .line 1026
    :catch_0
    move-exception v0

    .line 1028
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfue;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1035
    iget-object v0, p0, Lien;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lien;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lien;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1037
    iput-object v4, p0, Lien;->e:Landroid/app/Dialog;

    .line 1040
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lfue;->hasError()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1041
    invoke-virtual {p1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1044
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, p1}, Lcom/santander/app/faturas/activity/FaturasActivity;->c(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)Lfue;

    .line 1045
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, p1}, Lcom/santander/app/faturas/activity/FaturasActivity;->d(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)V

    .line 1047
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->h(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1048
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->j(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1079
    :goto_0
    return-void

    .line 1051
    :cond_1
    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lfue;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1054
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, p1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)Lfue;

    .line 1055
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->i(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lfue;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->j(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1057
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->k(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->h(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1060
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lfue;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1063
    :cond_2
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, p1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)Lfue;

    .line 1064
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->i(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lfue;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->j(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1066
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->k(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1067
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->h(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1069
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->l(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1070
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->l(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1071
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0, v4}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1073
    :cond_3
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, v1, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    iget-object v2, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-virtual {v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1077
    :cond_4
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, v1, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1001
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lien;->a([Ljava/lang/Void;)Lfue;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1001
    check-cast p1, Lfue;

    invoke-virtual {p0, p1}, Lien;->a(Lfue;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lien;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v0, v0, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lien;->e:Landroid/app/Dialog;

    .line 1018
    return-void
.end method
