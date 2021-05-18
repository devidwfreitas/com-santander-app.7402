.class public Lidv;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Libq;",
        "Ljava/lang/Integer;",
        "Libr;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgkv",
            "<",
            "Libr;",
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
            "Libr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Lidv;->a:Lgkv;

    .line 25
    return-void
.end method


# virtual methods
.method protected varargs a([Libq;)Libr;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 34
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 36
    aget-object v1, p1, v7

    const-class v2, Libr;

    invoke-static {}, Lhas;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "obterFAQFormatado"

    const-string v5, "return"

    const-string v6, "http://webservice.atendimento.app.bsbr.altec.com/"

    invoke-interface/range {v0 .. v7}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libr;

    .line 37
    return-object v0
.end method

.method protected a(Libr;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lidv;->a:Lgkv;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lidv;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Libq;

    invoke-virtual {p0, p1}, Lidv;->a([Libq;)Libr;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Libr;

    invoke-virtual {p0, p1}, Lidv;->a(Libr;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 30
    return-void
.end method
