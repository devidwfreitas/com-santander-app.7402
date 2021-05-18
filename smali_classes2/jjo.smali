.class public Ljjo;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljdp;",
        "Ljava/lang/Void;",
        "Ljdo;",
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
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Ljjo;->a:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Ljjo;->c:Lgkv;

    .line 30
    return-void
.end method


# virtual methods
.method protected varargs a([Ljdp;)Ljdo;
    .locals 6

    .prologue
    .line 40
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 42
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Ljdo;

    invoke-static {}, Lhas;->al()Ljava/lang/String;

    move-result-object v3

    const-string v4, "consultarLegendas"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdo;

    return-object v0
.end method

.method protected a(Ljdo;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ljjo;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Ljjo;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Ljjo;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Ljjo;->b:Landroid/app/Dialog;

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljdp;

    invoke-virtual {p0, p1}, Ljjo;->a([Ljdp;)Ljdo;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljdo;

    invoke-virtual {p0, p1}, Ljjo;->a(Ljdo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 35
    iget-object v0, p0, Ljjo;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljjo;->b:Landroid/app/Dialog;

    .line 36
    return-void
.end method
