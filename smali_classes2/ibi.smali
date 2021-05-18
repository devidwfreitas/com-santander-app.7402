.class public Libi;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lhzi;",
        "Ljava/lang/Void;",
        "Lhzj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Libi;->a:Lgkv;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs a([Lhzi;)Lhzj;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 34
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 35
    aget-object v1, p1, v7

    const-class v2, Lhzj;

    invoke-static {}, Lhas;->aj()Ljava/lang/String;

    move-result-object v3

    const-string v4, "obterNomeUsuario"

    const-string v5, "return"

    const-string v6, "http://webservice.atendimento.app.bsbr.altec.com/"

    invoke-virtual/range {v0 .. v7}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzj;

    .line 36
    return-object v0
.end method

.method protected a(Lhzj;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Libi;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Lhzi;

    invoke-virtual {p0, p1}, Libi;->a([Lhzi;)Lhzj;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lhzj;

    invoke-virtual {p0, p1}, Libi;->a(Lhzj;)V

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
