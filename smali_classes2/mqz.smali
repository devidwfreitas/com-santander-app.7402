.class public Lmqz;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lmlj;",
        "Ljava/lang/Void;",
        "Lmli;",
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
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lmqz;->c:Lgkv;

    .line 31
    iput-object p2, p0, Lmqz;->a:Landroid/app/Activity;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs a([Lmlj;)Lmli;
    .locals 6

    .prologue
    .line 42
    .line 44
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p1, v0

    .line 45
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 46
    const-class v2, Lmli;

    invoke-static {}, Lhas;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "buscarTodosISPB"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmli;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lmli;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lmqz;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lmqz;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lmqz;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lmqz;->b:Landroid/app/Dialog;

    .line 62
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Lmlj;

    invoke-virtual {p0, p1}, Lmqz;->a([Lmlj;)Lmli;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lmli;

    invoke-virtual {p0, p1}, Lmqz;->a(Lmli;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 37
    iget-object v0, p0, Lmqz;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lmqz;->b:Landroid/app/Dialog;

    .line 38
    return-void
.end method
