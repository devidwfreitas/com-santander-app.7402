.class public Lmrg;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lmlt;",
        "Ljava/lang/Void;",
        "Lmls;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;

.field private c:Lgkv;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgkv;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p2, p0, Lmrg;->a:Landroid/app/Activity;

    .line 32
    iput-object p1, p0, Lmrg;->c:Lgkv;

    .line 33
    iput-object p3, p0, Lmrg;->d:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected varargs a([Lmlt;)Lmls;
    .locals 6

    .prologue
    .line 44
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 45
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 47
    const-class v2, Lmls;

    invoke-static {}, Lhas;->ae()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmrg;->d:Ljava/lang/String;

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmls;

    return-object v0
.end method

.method protected a(Lmls;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lmrg;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lmrg;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lmrg;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lmrg;->b:Landroid/app/Dialog;

    .line 58
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Lmlt;

    invoke-virtual {p0, p1}, Lmrg;->a([Lmlt;)Lmls;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lmls;

    invoke-virtual {p0, p1}, Lmrg;->a(Lmls;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmrg;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lmrg;->b:Landroid/app/Dialog;

    .line 39
    return-void
.end method
