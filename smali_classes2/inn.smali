.class public Linn;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Liok;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Liok;
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 133
    :try_start_0
    invoke-static {}, Lhat;->t()Liot;

    move-result-object v1

    invoke-virtual {v1}, Liot;->a()Liok;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Liok;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-object v0, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 145
    iget-object v0, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->a:Landroid/app/Dialog;

    .line 147
    :cond_0
    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {p1}, Liok;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 150
    new-instance v0, Liok;

    invoke-direct {v0}, Liok;-><init>()V

    .line 154
    iget-object v0, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Liok;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    new-instance v1, Lfqh;

    invoke-virtual {p1}, Liok;->a()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    invoke-static {v3}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->b(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lfqh;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;Lfqh;)Lfqh;

    .line 157
    iget-object v0, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->c(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;)Lfqh;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->b(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v3, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Linn;->a([Ljava/lang/Void;)Liok;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 121
    check-cast p1, Liok;

    invoke-virtual {p0, p1}, Linn;->a(Liok;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    iget-object v1, p0, Linn;->a:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->b(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->a:Landroid/app/Dialog;

    .line 126
    return-void
.end method
