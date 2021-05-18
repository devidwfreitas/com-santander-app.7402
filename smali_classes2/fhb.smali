.class public Lfhb;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfuk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/CadastramentoValidacionActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/CadastramentoValidacionActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/CadastramentoValidacionActivity;Lfha;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lfhb;-><init>(Lcom/santander/app/CadastramentoValidacionActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfuk;
    .locals 4

    .prologue
    .line 105
    .line 106
    :try_start_0
    iget-object v0, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoValidacionActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-static {v1}, Lcom/santander/app/CadastramentoValidacionActivity;->b(Lcom/santander/app/CadastramentoValidacionActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 107
    invoke-virtual {v0}, Lghu;->n()Lfuk;

    move-result-object v1

    .line 108
    if-nez v1, :cond_0

    .line 109
    iget-object v2, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iget-object v1, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iget-object v1, v1, Lcom/santander/app/CadastramentoValidacionActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->d()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-static {v3}, Lcom/santander/app/CadastramentoValidacionActivity;->b(Lcom/santander/app/CadastramentoValidacionActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lghu;

    invoke-virtual {v1}, Lghu;->m()Lfuf;

    move-result-object v1

    invoke-virtual {v1}, Lfuf;->g()Ljava/util/Vector;

    move-result-object v1

    iget-object v3, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-static {v3}, Lcom/santander/app/CadastramentoValidacionActivity;->c(Lcom/santander/app/CadastramentoValidacionActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfun;

    invoke-virtual {v1}, Lfun;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/santander/app/CadastramentoValidacionActivity;->a(Lcom/santander/app/CadastramentoValidacionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v1

    iget-object v2, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-static {v2}, Lcom/santander/app/CadastramentoValidacionActivity;->d(Lcom/santander/app/CadastramentoValidacionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lhbc;->a(Lghu;Ljava/lang/String;)Lfuk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lfuk;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoValidacionActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoValidacionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoValidacionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 125
    iget-object v0, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iput-object v2, v0, Lcom/santander/app/CadastramentoValidacionActivity;->a:Landroid/app/Dialog;

    .line 128
    :cond_0
    if-nez p1, :cond_1

    .line 129
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-static {v1}, Lcom/santander/app/CadastramentoValidacionActivity;->a(Lcom/santander/app/CadastramentoValidacionActivity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 153
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1}, Lfuk;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    new-instance v1, Lfuk;

    invoke-direct {v1}, Lfuk;-><init>()V

    .line 133
    iget-object v0, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoValidacionActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-static {v2}, Lcom/santander/app/CadastramentoValidacionActivity;->b(Lcom/santander/app/CadastramentoValidacionActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0, v1}, Lghu;->a(Lfuk;)V

    .line 135
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v2, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-static {v2}, Lcom/santander/app/CadastramentoValidacionActivity;->a(Lcom/santander/app/CadastramentoValidacionActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p1}, Lfuk;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 137
    iget-object v0, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoValidacionActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoValidacionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoValidacionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 139
    iget-object v0, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iput-object v2, v0, Lcom/santander/app/CadastramentoValidacionActivity;->a:Landroid/app/Dialog;

    .line 141
    :cond_3
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-static {v1}, Lcom/santander/app/CadastramentoValidacionActivity;->a(Lcom/santander/app/CadastramentoValidacionActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lfuk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_4
    iget-object v0, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoValidacionActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-static {v1}, Lcom/santander/app/CadastramentoValidacionActivity;->b(Lcom/santander/app/CadastramentoValidacionActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0, p1}, Lghu;->a(Lfuk;)V

    .line 147
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-virtual {v1}, Lcom/santander/app/CadastramentoValidacionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/CadastramentoTransOkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    const-string v1, "strSeqEnd"

    iget-object v2, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-static {v2}, Lcom/santander/app/CadastramentoValidacionActivity;->c(Lcom/santander/app/CadastramentoValidacionActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string v1, "numCartao"

    iget-object v2, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-static {v2}, Lcom/santander/app/CadastramentoValidacionActivity;->b(Lcom/santander/app/CadastramentoValidacionActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/CadastramentoValidacionActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfhb;->a([Ljava/lang/Void;)Lfuk;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Lfuk;

    invoke-virtual {p0, p1}, Lfhb;->a(Lfuk;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    iget-object v1, p0, Lfhb;->a:Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-static {v1}, Lcom/santander/app/CadastramentoValidacionActivity;->a(Lcom/santander/app/CadastramentoValidacionActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/CadastramentoValidacionActivity;->a:Landroid/app/Dialog;

    .line 99
    return-void
.end method
