.class public Lgkb;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lgih;",
        "Ljava/lang/Void;",
        "Lgig;",
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
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lgkb;->a:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lgkb;->c:Lgkv;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs a([Lgih;)Lgig;
    .locals 6

    .prologue
    .line 41
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 42
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 44
    const-class v2, Lgig;

    invoke-static {}, Lhas;->w()Ljava/lang/String;

    move-result-object v3

    const-string v4, "faturaParcelar"

    const-string v5, "cartaoFaturaPagamentoResponse"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgig;

    return-object v0
.end method

.method protected a(Lgig;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lgkb;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lgkb;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lgkb;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lgkb;->b:Landroid/app/Dialog;

    .line 55
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Lgih;

    invoke-virtual {p0, p1}, Lgkb;->a([Lgih;)Lgig;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lgig;

    invoke-virtual {p0, p1}, Lgkb;->a(Lgig;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 36
    iget-object v0, p0, Lgkb;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lgkb;->b:Landroid/app/Dialog;

    .line 37
    return-void
.end method
