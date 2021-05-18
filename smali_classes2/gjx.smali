.class public Lgjx;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lghy;",
        "Ljava/lang/Void;",
        "Lghv;",
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
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Lgjx;->a:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lgjx;->c:Lgkv;

    .line 29
    return-void
.end method


# virtual methods
.method protected varargs a([Lghy;)Lghv;
    .locals 6

    .prologue
    .line 39
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 40
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 42
    const-class v2, Lghv;

    invoke-static {}, Lhas;->w()Ljava/lang/String;

    move-result-object v3

    const-string v4, "faturaParcelarCalcular"

    const-string v5, "cartaoFaturaPagamentoResponse"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghv;

    return-object v0
.end method

.method protected a(Lghv;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lgjx;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lgjx;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lgjx;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lgjx;->b:Landroid/app/Dialog;

    .line 53
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Lghy;

    invoke-virtual {p0, p1}, Lgjx;->a([Lghy;)Lghv;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lghv;

    invoke-virtual {p0, p1}, Lgjx;->a(Lghv;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 34
    iget-object v0, p0, Lgjx;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lgjx;->b:Landroid/app/Dialog;

    .line 35
    return-void
.end method
