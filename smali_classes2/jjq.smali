.class public Ljjq;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lmiv;",
        "Ljava/lang/Void;",
        "Lmiw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;

.field private b:Landroid/app/Activity;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lgkv;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Ljjq;->a:Lgkv;

    .line 28
    iput-object p2, p0, Ljjq;->b:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method protected varargs a([Lmiv;)Lmiw;
    .locals 6

    .prologue
    .line 39
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 41
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lmiw;

    invoke-static {}, Lhas;->C()Ljava/lang/String;

    move-result-object v3

    const-string v4, "consultarPerfilInvestidor"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiw;

    return-object v0
.end method

.method protected a(Lmiw;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ljjq;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Ljjq;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Ljjq;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Ljjq;->c:Landroid/app/Dialog;

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Lmiv;

    invoke-virtual {p0, p1}, Ljjq;->a([Lmiv;)Lmiw;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lmiw;

    invoke-virtual {p0, p1}, Ljjq;->a(Lmiw;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 34
    iget-object v0, p0, Ljjq;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljjq;->c:Landroid/app/Dialog;

    .line 35
    return-void
.end method
