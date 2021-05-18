.class public Lfmj;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfsz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

.field private b:Ljava/lang/String;

.field private c:Lfuu;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lftq;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-object p1, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 170
    iput-object v0, p0, Lfmj;->b:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lfmj;->c:Lfuu;

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lfmj;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;Lfmi;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lfmj;-><init>(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfsz;
    .locals 11

    .prologue
    .line 199
    .line 200
    :try_start_0
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    iget-object v1, p0, Lfmj;->c:Lfuu;

    iget-object v2, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lftt;

    move-result-object v2

    iget-boolean v3, p0, Lfmj;->e:Z

    iget-object v4, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    .line 201
    invoke-static {v4}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->d(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfmj;->f:Lftq;

    iget-object v6, p0, Lfmj;->d:Ljava/lang/String;

    iget-object v7, p0, Lfmj;->b:Ljava/lang/String;

    iget-object v8, p0, Lfmj;->g:Ljava/lang/String;

    iget-object v9, p0, Lfmj;->h:Ljava/lang/String;

    iget-object v10, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v10}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->e(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lftd;

    move-result-object v10

    .line 200
    invoke-virtual/range {v0 .. v10}, Lhbh;->a(Lfuu;Lftt;ZLjava/lang/String;Lftq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lftd;)Lfsz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfsz;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 218
    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lfsz;)V

    .line 220
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lmzp;->RELOAD_INVESTIMENTO:Lmzp;

    aput-object v2, v0, v1

    .line 223
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 224
    new-instance v2, Lfmk;

    invoke-direct {v2, p0}, Lfmk;-><init>(Lfmj;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 242
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfmj;->a([Ljava/lang/Void;)Lfsz;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 168
    check-cast p1, Lfsz;

    invoke-virtual {p0, p1}, Lfmj;->a(Lfsz;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfmj;->b:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->d()Lfuu;

    move-result-object v0

    iput-object v0, p0, Lfmj;->c:Lfuu;

    .line 183
    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfmj;->d:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->f()Z

    move-result v0

    iput-boolean v0, p0, Lfmj;->e:Z

    .line 185
    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a()Lftq;

    move-result-object v0

    iput-object v0, p0, Lfmj;->f:Lftq;

    .line 186
    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->b()Lftt;

    move-result-object v0

    invoke-virtual {v0}, Lftt;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfmj;->g:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->b()Lftt;

    move-result-object v0

    invoke-virtual {v0}, Lftt;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfmj;->h:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->b(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->b(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->b(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 192
    :cond_0
    iget-object v0, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    iget-object v1, p0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 194
    return-void
.end method
