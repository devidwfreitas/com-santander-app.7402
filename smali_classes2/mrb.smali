.class public Lmrb;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lmlq;",
        "Ljava/lang/Void;",
        "Lmlp;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgkv;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lgkv;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p2, p0, Lmrb;->a:Landroid/app/Activity;

    .line 30
    iput-object p1, p0, Lmrb;->b:Lgkv;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs a([Lmlq;)Lmlp;
    .locals 6

    .prologue
    .line 44
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 45
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 46
    const-class v2, Lmlp;

    invoke-static {}, Lhas;->af()Ljava/lang/String;

    move-result-object v3

    const-string v4, "confirmarTransferencia"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmlp;

    return-object v0
.end method

.method protected a(Lmlp;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lmrb;->b:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lmrb;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lmrb;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lmrb;->c:Landroid/app/Dialog;

    .line 58
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Lmlq;

    invoke-virtual {p0, p1}, Lmrb;->a([Lmlq;)Lmlp;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lmlp;

    invoke-virtual {p0, p1}, Lmrb;->a(Lmlp;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 36
    iget-object v0, p0, Lmrb;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lmrb;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lmrb;->c:Landroid/app/Dialog;

    .line 39
    :cond_0
    return-void
.end method
