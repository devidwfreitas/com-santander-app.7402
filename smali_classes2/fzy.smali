.class public Lfzy;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lgag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lfzy;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lgag;
    .locals 2

    .prologue
    .line 412
    :try_start_0
    invoke-static {}, Lhat;->x()Lgaj;

    move-result-object v0

    invoke-virtual {v0}, Lgaj;->a()Lgag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lgag;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 423
    :try_start_0
    iget-object v0, p0, Lfzy;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->m(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfzy;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->m(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lfzy;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->m(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 425
    iget-object v0, p0, Lfzy;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 432
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfzy;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    iget-object v1, v1, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->i:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 438
    :goto_1
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Lfzy;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;Lgag;)V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 397
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzy;->a([Ljava/lang/Void;)Lgag;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 397
    check-cast p1, Lgag;

    invoke-virtual {p0, p1}, Lfzy;->a(Lgag;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 402
    :try_start_0
    iget-object v0, p0, Lfzy;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    iget-object v1, p0, Lfzy;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    iget-object v1, v1, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
