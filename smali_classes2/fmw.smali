.class public Lfmw;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lftv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;Lfmv;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lfmw;-><init>(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftv;
    .locals 3

    .prologue
    .line 148
    .line 149
    :try_start_0
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    iget-object v1, p0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->b(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lftw;

    move-result-object v1

    iget-object v2, p0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->c(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lftv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhbh;->a(Lftw;Lftv;)Lftv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lftv;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 159
    if-nez p1, :cond_0

    .line 161
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    .line 195
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Lftv;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;Z)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p1}, Lftv;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 174
    :cond_2
    iget-object v0, p0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;Lftv;)Lftv;

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v1, v0, v3

    sget-object v1, Lmzp;->RELOAD_INVESTIMENTO:Lmzp;

    aput-object v1, v0, v2

    .line 179
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 180
    new-instance v2, Lfmx;

    invoke-direct {v2, p0}, Lfmx;-><init>(Lfmw;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfmw;->a([Ljava/lang/Void;)Lftv;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Lftv;

    invoke-virtual {p0, p1}, Lfmw;->a(Lftv;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    iget-object v1, p0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 143
    return-void
.end method
