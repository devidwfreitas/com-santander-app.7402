.class public Lmra;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lmkw;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lmra;->a:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method protected a([Lmkw;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 40
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 41
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 42
    const-class v2, Lmkv;

    invoke-static {}, Lhas;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "incluirNovoFavorecido"

    const-string v5, "entrada"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lmra;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lmra;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lmra;->b:Landroid/app/Dialog;

    .line 54
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Lmkw;

    invoke-virtual {p0, p1}, Lmra;->a([Lmkw;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmra;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 34
    iget-object v0, p0, Lmra;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lmra;->b:Landroid/app/Dialog;

    .line 35
    return-void
.end method
