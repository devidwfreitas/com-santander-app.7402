.class public Lhdp;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lhen;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lhen;
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 205
    :try_start_0
    invoke-static {}, Lhat;->u()Lhfa;

    move-result-object v1

    invoke-virtual {v1}, Lhfa;->b()Lhen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lhen;)V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 217
    iget-object v0, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->d:Landroid/app/Dialog;

    .line 219
    :cond_0
    if-eqz p1, :cond_3

    .line 220
    invoke-virtual {p1}, Lhen;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {p1}, Lhen;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 222
    iget-object v0, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-static {v0, p1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;Lhen;)Lhen;

    .line 224
    iget-object v0, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v1, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->b(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Lhen;

    move-result-object v1

    invoke-virtual {v1}, Lhen;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 225
    new-instance v0, Lhdq;

    iget-object v1, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    .line 226
    invoke-static {v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->b(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Lhen;

    move-result-object v1

    invoke-virtual {v1}, Lhen;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-direct {v0, v1, v2}, Lhdq;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 227
    iget-object v1, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v1, v1, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 230
    new-instance v0, Lhdq;

    iget-object v1, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-direct {v0, v1, v2}, Lhdq;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 232
    iget-object v1, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v1, v1, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->d(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 239
    new-instance v0, Lhdq;

    iget-object v1, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-direct {v0, v1, v2}, Lhdq;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 241
    iget-object v1, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v1, v1, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhdp;->a([Ljava/lang/Void;)Lhen;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 193
    check-cast p1, Lhen;

    invoke-virtual {p0, p1}, Lhdp;->a(Lhen;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v1, p0, Lhdp;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->d(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->d:Landroid/app/Dialog;

    .line 198
    return-void
.end method
