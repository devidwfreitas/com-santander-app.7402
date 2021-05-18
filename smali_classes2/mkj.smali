.class public Lmkj;
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


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lmkj;->a:Lgkv;

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs a([Lmiv;)Lmiw;
    .locals 6

    .prologue
    .line 32
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 34
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
    .line 39
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lmkj;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Lmiv;

    invoke-virtual {p0, p1}, Lmkj;->a([Lmiv;)Lmiw;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lmiw;

    invoke-virtual {p0, p1}, Lmkj;->a(Lmiw;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 28
    return-void
.end method
