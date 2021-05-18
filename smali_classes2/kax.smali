.class public Lkax;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lkby;",
        "Ljava/lang/Void;",
        "Lkbr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

.field private b:Lkbr;


# direct methods
.method private constructor <init>(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;Lkaw;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lkax;-><init>(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lkby;)Lkbr;
    .locals 6

    .prologue
    .line 91
    new-instance v1, Lkby;

    invoke-direct {v1}, Lkby;-><init>()V

    .line 92
    iget-object v0, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkby;->setConnUuid(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkby;->setTokenSessao(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkby;->setTokenTransacao(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 97
    const-class v2, Lkbr;

    invoke-static {}, Lhas;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "listarDispositivos"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbr;

    iput-object v0, p0, Lkax;->b:Lkbr;

    .line 98
    iget-object v0, p0, Lkax;->b:Lkbr;

    return-object v0
.end method

.method protected a(Lkbr;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 107
    iget-object v1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v1, v3}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 110
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lkbr;->getConfirmacao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;Ljava/util/List;)Ljava/util/List;

    .line 113
    iget-object v1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-virtual {p1}, Lkbr;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;Ljava/util/List;)Ljava/util/List;

    .line 114
    iget-object v1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    iget-object v1, v1, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {p1}, Lkbr;->getTokenTransacao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmir;->i(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    iget-object v1, v1, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->k()Lfwv;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lfwv;->e()Ljava/lang/String;

    move-result-object v6

    .line 118
    if-eqz v6, :cond_1

    .line 119
    const-string v3, ""

    const-string v2, ""

    move v4, v0

    move v1, v0

    .line 122
    :goto_0
    iget-object v0, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->b(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 125
    new-instance v7, Lnaf;

    invoke-direct {v7}, Lnaf;-><init>()V

    .line 128
    :try_start_0
    iget-object v0, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->b(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbq;

    invoke-virtual {v0}, Lkbq;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->b(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbq;

    invoke-virtual {v0}, Lkbq;->b()Ljava/lang/String;

    move-result-object v3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inclus\u00e3o: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->b(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbq;

    invoke-virtual {v0}, Lkbq;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 133
    :try_start_1
    invoke-virtual {p1}, Lkbr;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :goto_1
    if-eqz v5, :cond_1

    .line 142
    iget-object v0, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->c(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->d(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->d(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-virtual {v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    :cond_1
    iget-object v0, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->e(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)V

    .line 155
    :goto_2
    return-void

    :cond_2
    move v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 122
    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move v0, v5

    .line 137
    :goto_4
    const-string v7, "Error"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 150
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lkbr;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    iget-object v1, v1, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lkbr;->getMensagemErro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 153
    :cond_4
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    iget-object v1, v1, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, v3, v5, v5}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_2

    .line 136
    :catch_1
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v9

    goto :goto_4

    :cond_5
    move v5, v1

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    check-cast p1, [Lkby;

    invoke-virtual {p0, p1}, Lkax;->a([Lkby;)Lkbr;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Lkbr;

    invoke-virtual {p0, p1}, Lkax;->a(Lkbr;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 85
    iget-object v0, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    iget-object v1, p0, Lkax;->a:Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->a(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 86
    return-void
.end method
