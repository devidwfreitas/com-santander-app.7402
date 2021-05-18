.class public Lgdw;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lgaq;",
        "Ljava/lang/Void;",
        "Lgar;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkw;


# direct methods
.method public constructor <init>(Lgkw;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object p1, p0, Lgdw;->a:Lgkw;

    .line 26
    return-void
.end method


# virtual methods
.method protected varargs a([Lgaq;)Lgar;
    .locals 6

    .prologue
    .line 31
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 33
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lgar;

    invoke-static {}, Lhas;->ah()Ljava/lang/String;

    move-result-object v3

    const-string v4, "salvarPropostaCambio"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgar;

    return-object v0
.end method

.method protected a(Lgar;)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lgdw;->a:Lgkw;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lgdw;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Lgaq;

    invoke-virtual {p0, p1}, Lgdw;->a([Lgaq;)Lgar;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lgar;

    invoke-virtual {p0, p1}, Lgdw;->a(Lgar;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 39
    return-void
.end method
