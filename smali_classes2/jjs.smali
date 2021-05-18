.class public Ljjs;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljdt;",
        "Ljava/lang/Void;",
        "Ljds;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;

.field private c:Lgkv;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgkv;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Ljjs;->a:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Ljjs;->c:Lgkv;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs a([Ljdt;)Ljds;
    .locals 6

    .prologue
    .line 43
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 45
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Ljds;

    invoke-static {}, Lhas;->al()Ljava/lang/String;

    move-result-object v3

    const-string v4, "buscarTermoAdesaoFundo "

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljds;

    return-object v0
.end method

.method protected a(Ljds;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljjs;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Ljjs;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Ljjs;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Ljjs;->b:Landroid/app/Dialog;

    .line 55
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljdt;

    invoke-virtual {p0, p1}, Ljjs;->a([Ljdt;)Ljds;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Ljds;

    invoke-virtual {p0, p1}, Ljjs;->a(Ljds;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 37
    iget-object v0, p0, Ljjs;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljjs;->b:Landroid/app/Dialog;

    .line 38
    return-void
.end method
