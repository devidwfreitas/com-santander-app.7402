.class public Lgdy;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lgat;",
        "Ljava/lang/Void;",
        "Lgas;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkw;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lgkw;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-object p1, p0, Lgdy;->a:Lgkw;

    .line 36
    iput-object p2, p0, Lgdy;->c:Landroid/app/Activity;

    .line 37
    return-void
.end method


# virtual methods
.method protected varargs a([Lgat;)Lgas;
    .locals 6

    .prologue
    .line 42
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 43
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lgas;

    invoke-static {}, Lhas;->ah()Ljava/lang/String;

    move-result-object v3

    const-string v4, "listarMoedas"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgas;

    .line 45
    return-object v0
.end method

.method protected a(Lgas;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lgdy;->a:Lgkw;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lgdy;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lgdy;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lgdy;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lgdy;->b:Landroid/app/Dialog;

    .line 58
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Lgat;

    invoke-virtual {p0, p1}, Lgdy;->a([Lgat;)Lgas;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lgas;

    invoke-virtual {p0, p1}, Lgdy;->a(Lgas;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 31
    iget-object v0, p0, Lgdy;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lgdy;->b:Landroid/app/Dialog;

    .line 32
    return-void
.end method
