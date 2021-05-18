.class public Ljwq;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljss;",
        "Ljava/lang/Void;",
        "Ljsr;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;

.field private c:Lgkv;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgkv;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Ljwq;->a:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Ljwq;->c:Lgkv;

    .line 30
    return-void
.end method


# virtual methods
.method protected varargs a([Ljss;)Ljsr;
    .locals 6

    .prologue
    .line 40
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 41
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 43
    const-class v2, Ljsr;

    invoke-static {}, Lhas;->ac()Ljava/lang/String;

    move-result-object v3

    const-string v4, "consultarTributos"

    const-string v5, "pagamentoResponse"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljsr;

    return-object v0
.end method

.method protected a(Ljsr;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ljwq;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Ljwq;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Ljwq;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Ljwq;->b:Landroid/app/Dialog;

    .line 53
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljss;

    invoke-virtual {p0, p1}, Ljwq;->a([Ljss;)Ljsr;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljsr;

    invoke-virtual {p0, p1}, Ljwq;->a(Ljsr;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 35
    iget-object v0, p0, Ljwq;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljwq;->b:Landroid/app/Dialog;

    .line 36
    return-void
.end method
