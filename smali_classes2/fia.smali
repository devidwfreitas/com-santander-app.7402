.class public Lfia;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfva;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/FuturosActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/FuturosActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/santander/app/FuturosActivity;Lfhz;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lfia;-><init>(Lcom/santander/app/FuturosActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfva;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 140
    .line 142
    const/4 v0, 0x0

    move v3, v0

    move-object v1, v2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    iget-object v0, v0, Lcom/santander/app/FuturosActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 143
    iget-object v0, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    iget-object v0, v0, Lcom/santander/app/FuturosActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iget-object v4, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    invoke-static {v4}, Lcom/santander/app/FuturosActivity;->b(Lcom/santander/app/FuturosActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/santander/app/contacorrente/domain/Conta;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    iget-object v0, v0, Lcom/santander/app/FuturosActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getLanzamientoFuturo()Lfva;

    move-result-object v0

    .line 142
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 147
    :cond_0
    if-nez v1, :cond_1

    .line 148
    invoke-static {}, Lhat;->h()Lhbj;

    move-result-object v0

    iget-object v1, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    invoke-static {v1}, Lcom/santander/app/FuturosActivity;->b(Lcom/santander/app/FuturosActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    invoke-static {v3}, Lcom/santander/app/FuturosActivity;->b(Lcom/santander/app/FuturosActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhbj;->a(Ljava/lang/String;Ljava/lang/String;)Lfva;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 156
    :cond_1
    :goto_2
    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 156
    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method protected a(Lfva;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    iget-object v1, v1, Lcom/santander/app/FuturosActivity;->a:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    iget-object v1, v1, Lcom/santander/app/FuturosActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    iget-object v1, v1, Lcom/santander/app/FuturosActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 163
    iget-object v1, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/santander/app/FuturosActivity;->a:Landroid/app/Dialog;

    .line 165
    :cond_0
    if-nez p1, :cond_1

    .line 166
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v1

    iget-object v2, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    invoke-static {v2}, Lcom/santander/app/FuturosActivity;->a(Lcom/santander/app/FuturosActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v3, v0}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 188
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p1}, Lfva;->hasError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v1

    iget-object v2, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    invoke-static {v2}, Lcom/santander/app/FuturosActivity;->a(Lcom/santander/app/FuturosActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v3, v0}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    invoke-static {v1}, Lcom/santander/app/FuturosActivity;->c(Lcom/santander/app/FuturosActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 176
    iget-object v1, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    invoke-static {v1, p1}, Lcom/santander/app/FuturosActivity;->a(Lcom/santander/app/FuturosActivity;Lfva;)Lfva;

    move v1, v0

    .line 178
    :goto_1
    iget-object v0, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    iget-object v0, v0, Lcom/santander/app/FuturosActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 179
    iget-object v0, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    iget-object v0, v0, Lcom/santander/app/FuturosActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    invoke-static {v2}, Lcom/santander/app/FuturosActivity;->b(Lcom/santander/app/FuturosActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    iget-object v0, v0, Lcom/santander/app/FuturosActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iget-object v2, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    invoke-static {v2}, Lcom/santander/app/FuturosActivity;->d(Lcom/santander/app/FuturosActivity;)Lfva;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/contacorrente/domain/Conta;->setLanzamientoFuturo(Lfva;)V

    .line 178
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 184
    :cond_4
    iget-object v0, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    invoke-static {v0}, Lcom/santander/app/FuturosActivity;->e(Lcom/santander/app/FuturosActivity;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfia;->a([Ljava/lang/Void;)Lfva;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    check-cast p1, Lfva;

    invoke-virtual {p0, p1}, Lfia;->a(Lfva;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    iget-object v1, p0, Lfia;->a:Lcom/santander/app/FuturosActivity;

    invoke-static {v1}, Lcom/santander/app/FuturosActivity;->a(Lcom/santander/app/FuturosActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/FuturosActivity;->a:Landroid/app/Dialog;

    .line 134
    return-void
.end method
