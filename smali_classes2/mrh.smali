.class public Lmrh;
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

.field private b:Landroid/app/Dialog;

.field private c:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p2, p0, Lmrh;->a:Landroid/app/Activity;

    .line 29
    iput-object p1, p0, Lmrh;->c:Lgkv;

    .line 30
    return-void
.end method


# virtual methods
.method protected varargs a([Lmlq;)Lmlp;
    .locals 6

    .prologue
    .line 42
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 43
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 44
    const-class v2, Lmlp;

    invoke-static {}, Lhas;->af()Ljava/lang/String;

    move-result-object v3

    const-string v4, "transferencia"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmlp;

    .line 46
    return-object v0
.end method

.method protected a(Lmlp;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lmrh;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lmrh;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lmrh;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lmrh;->b:Landroid/app/Dialog;

    .line 57
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Lmlq;

    invoke-virtual {p0, p1}, Lmrh;->a([Lmlq;)Lmlp;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lmlp;

    invoke-virtual {p0, p1}, Lmrh;->a(Lmlp;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 35
    iget-object v0, p0, Lmrh;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lmrh;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lmrh;->b:Landroid/app/Dialog;

    .line 38
    :cond_0
    return-void
.end method
