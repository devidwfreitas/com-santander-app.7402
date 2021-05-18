.class public Lmrc;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lmky;",
        "Ljava/lang/Void;",
        "Lmkx;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgkv;

.field private c:Landroid/app/Dialog;

.field private d:Lmky;


# direct methods
.method public constructor <init>(Lgkv;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p2, p0, Lmrc;->a:Landroid/app/Activity;

    .line 32
    iput-object p1, p0, Lmrc;->b:Lgkv;

    .line 33
    return-void
.end method


# virtual methods
.method protected varargs a([Lmky;)Lmkx;
    .locals 6

    .prologue
    .line 44
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 45
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 47
    const-class v2, Lmkx;

    invoke-static {}, Lhas;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "consultarLimite"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmkx;

    return-object v0
.end method

.method protected a(Lmkx;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lmrc;->b:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lmrc;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lmrc;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lmrc;->c:Landroid/app/Dialog;

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Lmky;

    invoke-virtual {p0, p1}, Lmrc;->a([Lmky;)Lmkx;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lmkx;

    invoke-virtual {p0, p1}, Lmrc;->a(Lmkx;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 38
    iget-object v0, p0, Lmrc;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lmrc;->c:Landroid/app/Dialog;

    .line 39
    return-void
.end method
