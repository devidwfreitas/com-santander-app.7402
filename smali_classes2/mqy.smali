.class public Lmqy;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lmku;",
        "Ljava/lang/Void;",
        "Lmkt;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;

.field private c:Lgkv;

.field private d:Lmkt;


# direct methods
.method public constructor <init>(Lgkv;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lmqy;->c:Lgkv;

    .line 31
    iput-object p2, p0, Lmqy;->a:Landroid/app/Activity;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs a([Lmku;)Lmkt;
    .locals 7

    .prologue
    .line 42
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 43
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 44
    const-class v2, Lmkt;

    invoke-static {}, Lhas;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "buscarFavorecidosSantanderISPB"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lmkt;

    .line 46
    const-class v2, Lmkt;

    invoke-static {}, Lhas;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "buscarFavorecidosOutrosBancosISPB"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmkt;

    .line 48
    new-instance v1, Lmkt;

    invoke-direct {v1}, Lmkt;-><init>()V

    .line 49
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lmkt;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v6}, Lmkt;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-virtual {v6}, Lmkt;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmkt;->a(Ljava/util/List;)V

    .line 52
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmkt;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lmkt;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    invoke-virtual {v0}, Lmkt;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmkt;->b(Ljava/util/List;)V

    .line 55
    :cond_1
    return-object v1
.end method

.method protected a(Lmkt;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lmqy;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lmqy;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lmqy;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lmqy;->b:Landroid/app/Dialog;

    .line 67
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Lmku;

    invoke-virtual {p0, p1}, Lmqy;->a([Lmku;)Lmkt;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lmkt;

    invoke-virtual {p0, p1}, Lmqy;->a(Lmkt;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmqy;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lmqy;->b:Landroid/app/Dialog;

    .line 37
    return-void
.end method
