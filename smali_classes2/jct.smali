.class public Ljct;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljcv;",
        "Ljava/lang/Void;",
        "Ljcg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/app/Dialog;

.field private b:Lgkv;

.field private c:Ljcv;


# direct methods
.method public constructor <init>(Lgkv;Ljcv;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Ljct;->b:Lgkv;

    .line 28
    iput-object p2, p0, Ljct;->c:Ljcv;

    .line 29
    return-void
.end method


# virtual methods
.method protected varargs a([Ljcv;)Ljcg;
    .locals 6

    .prologue
    .line 40
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 41
    iget-object v1, p0, Ljct;->c:Ljcv;

    const-class v2, Ljcg;

    invoke-static {}, Lhas;->V()Ljava/lang/String;

    move-result-object v3

    const-string v4, "authenticate"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcg;

    .line 42
    return-object v0
.end method

.method protected a(Ljcg;)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Ljct;->b:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Ljcv;

    invoke-virtual {p0, p1}, Ljct;->a([Ljcv;)Ljcg;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Ljcg;

    invoke-virtual {p0, p1}, Ljct;->a(Ljcg;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 35
    return-void
.end method
