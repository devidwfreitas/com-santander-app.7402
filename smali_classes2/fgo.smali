.class public Lfgo;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfuq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/santander/app/BeneficiarioPagamentoListActivity;)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfgo;->b:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfuq;
    .locals 2

    .prologue
    .line 133
    .line 134
    :try_start_0
    invoke-static {}, Lhat;->n()Lhba;

    move-result-object v0

    invoke-virtual {v0}, Lhba;->a()Lfuq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfuq;)V
    .locals 7

    .prologue
    const v3, 0x7f090390

    const/4 v6, 0x0

    .line 144
    iget-object v0, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->b(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->b(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->b(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 146
    iget-object v0, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0, v6}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lcom/santander/app/BeneficiarioPagamentoListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 149
    :cond_0
    if-eqz p1, :cond_2

    .line 150
    iget-object v0, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0, p1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lcom/santander/app/BeneficiarioPagamentoListActivity;Lfuq;)Lfuq;

    .line 151
    iget-object v0, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->c(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Lfuq;

    move-result-object v0

    invoke-virtual {v0}, Lfuq;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 152
    iget-object v0, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-virtual {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e8

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v1, p1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lcom/santander/app/BeneficiarioPagamentoListActivity;Lfuq;)Lfuq;

    .line 154
    iget-object v1, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    new-instance v2, Lfok;

    iget-object v3, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v3}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0400e3

    iget-object v5, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    .line 155
    invoke-static {v5}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->c(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Lfuq;

    move-result-object v5

    invoke-virtual {v5}, Lfuq;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lfok;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 154
    invoke-static {v1, v2}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lcom/santander/app/BeneficiarioPagamentoListActivity;Lfok;)Lfok;

    .line 156
    iget-object v1, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->d(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v6, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 157
    iget-object v0, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->d(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->e(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Lfok;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-virtual {v1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-virtual {v2}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-virtual {v1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lfgo;->b:Z

    return v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfgo;->a([Ljava/lang/Void;)Lfuq;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Lfuq;

    invoke-virtual {p0, p1}, Lfgo;->a(Lfuq;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfgo;->b:Z

    .line 127
    iget-object v0, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    iget-object v1, p0, Lfgo;->a:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-static {v1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lcom/santander/app/BeneficiarioPagamentoListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 128
    return-void
.end method
