.class public Lmrf;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lmll;",
        "Ljava/lang/Void;",
        "Lmlk;",
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
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lmrf;->c:Lgkv;

    .line 30
    iput-object p2, p0, Lmrf;->a:Landroid/app/Activity;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs a([Lmll;)Lmlk;
    .locals 6

    .prologue
    .line 41
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 42
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 44
    const-class v2, Lmlk;

    invoke-static {}, Lhas;->I()Ljava/lang/String;

    move-result-object v3

    const-string v4, "listar"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmlk;

    return-object v0
.end method

.method protected a(Lmlk;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lmrf;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lmrf;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lmrf;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lmrf;->b:Landroid/app/Dialog;

    .line 56
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Lmll;

    invoke-virtual {p0, p1}, Lmrf;->a([Lmll;)Lmlk;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lmlk;

    invoke-virtual {p0, p1}, Lmrf;->a(Lmlk;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmrf;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lmrf;->b:Landroid/app/Dialog;

    .line 36
    return-void
.end method
