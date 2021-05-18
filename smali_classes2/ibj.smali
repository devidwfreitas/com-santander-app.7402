.class public Libj;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lhzq;",
        "Ljava/lang/Void;",
        "Lhzr;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgkv",
            "<",
            "Lhzr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkv",
            "<",
            "Lhzr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Libj;->a:Lgkv;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs a([Lhzq;)Lhzr;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 33
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 34
    aget-object v1, p1, v7

    const-class v2, Lhzr;

    invoke-static {}, Lhas;->aj()Ljava/lang/String;

    move-result-object v3

    const-string v4, "obterServico"

    const-string v5, "return"

    const-string v6, "http://webservice.atendimento.app.bsbr.altec.com/"

    invoke-interface/range {v0 .. v7}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzr;

    return-object v0
.end method

.method protected a(Lhzr;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Libj;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Lhzq;

    invoke-virtual {p0, p1}, Libj;->a([Lhzq;)Lhzr;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lhzr;

    invoke-virtual {p0, p1}, Libj;->a(Lhzr;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 29
    return-void
.end method
