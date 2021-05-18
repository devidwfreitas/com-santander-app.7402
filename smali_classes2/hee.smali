.class public Lhee;
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
.field final synthetic a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Lhdr;)V
    .locals 0

    .prologue
    .line 1011
    invoke-direct {p0, p1}, Lhee;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftc;
    .locals 2

    .prologue
    .line 1025
    :try_start_0
    invoke-static {}, Lhat;->e()Lhbg;

    move-result-object v0

    invoke-virtual {v0}, Lhbg;->e()Lftc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1029
    :goto_0
    return-object v0

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    const-string v1, "DPPoupanca"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lftc;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1034
    iget-object v1, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    iget-object v1, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 1036
    iget-object v1, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1039
    :cond_0
    if-nez p1, :cond_2

    .line 1040
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v1

    iget-object v2, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v3, v0}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 1071
    :cond_1
    :goto_0
    return-void

    .line 1041
    :cond_2
    invoke-virtual {p1}, Lftc;->hasError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1043
    iget-object v1, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    new-instance v2, Lftc;

    invoke-direct {v2}, Lftc;-><init>()V

    invoke-static {v1, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Lftc;)Lftc;

    .line 1045
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v1

    iget-object v2, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0, v0}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 1049
    :cond_3
    iget-object v1, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1, p1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Lftc;)Lftc;

    .line 1050
    iget-object v1, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)I

    move-result v1

    if-ne v1, v3, :cond_5

    move v1, v0

    .line 1051
    :goto_1
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lftc;

    move-result-object v0

    invoke-virtual {v0}, Lftc;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1052
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v0

    invoke-virtual {v0}, Lheq;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lftc;

    move-result-object v0

    invoke-virtual {v0}, Lftc;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftb;

    invoke-virtual {v0}, Lftb;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1053
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lftc;

    move-result-object v0

    invoke-virtual {v0}, Lftc;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1051
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1058
    :cond_5
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1059
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lftc;

    move-result-object v0

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z

    goto/16 :goto_0

    .line 1063
    :cond_6
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)I

    move-result v0

    if-nez v0, :cond_7

    .line 1064
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v1, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    .line 1065
    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lftc;

    move-result-object v1

    invoke-virtual {v1}, Lftc;->c()Ljava/util/Vector;

    move-result-object v1

    .line 1064
    invoke-static {v0, v1, v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Ljava/util/Vector;Z)V

    .line 1066
    :cond_7
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lftc;

    move-result-object v0

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1011
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhee;->a([Ljava/lang/Void;)Lftc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1011
    check-cast p1, Lftc;

    invoke-virtual {p0, p1}, Lhee;->a(Lftc;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1017
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1019
    :cond_0
    iget-object v0, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v1, p0, Lhee;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1020
    return-void
.end method
