.class public Lfip;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lftg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/InvestimentosFundoDetalleActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/InvestimentosFundoDetalleActivity;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/InvestimentosFundoDetalleActivity;Lfio;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lfip;-><init>(Lcom/santander/app/InvestimentosFundoDetalleActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lftg;
    .locals 4

    .prologue
    .line 182
    .line 183
    :try_start_0
    invoke-static {}, Lhat;->j()Lhbh;

    move-result-object v0

    iget-object v1, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-static {v1}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->b(Lcom/santander/app/InvestimentosFundoDetalleActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-static {v2}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->c(Lcom/santander/app/InvestimentosFundoDetalleActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-static {v3}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->d(Lcom/santander/app/InvestimentosFundoDetalleActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lhbh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lftg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lftg;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 194
    iget-object v0, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    iget-object v0, v0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    iget-object v0, v0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    iget-object v0, v0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 196
    iget-object v0, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    iput-object v1, v0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a:Landroid/app/Dialog;

    .line 198
    :cond_0
    if-nez p1, :cond_1

    .line 200
    iget-object v0, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-static {v0, v1}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a(Lcom/santander/app/InvestimentosFundoDetalleActivity;Lftg;)Lftg;

    .line 202
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-static {v1}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a(Lcom/santander/app/InvestimentosFundoDetalleActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 219
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p1}, Lftg;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-static {v0, v1}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a(Lcom/santander/app/InvestimentosFundoDetalleActivity;Lftg;)Lftg;

    .line 208
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-static {v1}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a(Lcom/santander/app/InvestimentosFundoDetalleActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-static {v0, p1}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a(Lcom/santander/app/InvestimentosFundoDetalleActivity;Lftg;)Lftg;

    .line 215
    iget-object v0, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-static {v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->e(Lcom/santander/app/InvestimentosFundoDetalleActivity;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfip;->a([Ljava/lang/Void;)Lftg;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 171
    check-cast p1, Lftg;

    invoke-virtual {p0, p1}, Lfip;->a(Lftg;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    iget-object v1, p0, Lfip;->a:Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-static {v1}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a(Lcom/santander/app/InvestimentosFundoDetalleActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a:Landroid/app/Dialog;

    .line 176
    return-void
.end method
