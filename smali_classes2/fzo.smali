.class public Lfzo;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lgac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lgac;
    .locals 2

    .prologue
    .line 100
    :try_start_0
    invoke-static {}, Lhat;->x()Lgaj;

    move-result-object v0

    iget-object v1, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-static {v1}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)Lgac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaj;->a(Lgac;)Lgac;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lgac;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    :try_start_0
    iget-object v0, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->b(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->b(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->b(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 113
    iget-object v0, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 120
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    iget-object v1, v1, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->i:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 140
    :goto_1
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p1}, Lgac;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)Lgac;

    move-result-object v0

    invoke-virtual {p1}, Lgac;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgac;->h(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)Lgac;

    move-result-object v0

    invoke-virtual {p1}, Lgac;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgac;->c(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->c(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    const-class v2, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const-string v1, "EXTRADADOS"

    iget-object v2, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-static {v2}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)Lgac;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {p1}, Lgac;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    const-class v2, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    iget-object v1, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-static {v1}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)Lgac;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgac;->a(Z)V

    .line 134
    const-string v1, "EXTRADADOS"

    iget-object v2, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-static {v2}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)Lgac;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 137
    :cond_3
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    iget-object v1, v1, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->i:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto/16 :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzo;->a([Ljava/lang/Void;)Lgac;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Lgac;

    invoke-virtual {p0, p1}, Lfzo;->a(Lgac;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    iget-object v1, p0, Lfzo;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    iget-object v1, v1, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
