.class public Libk;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lhzk;",
        "Ljava/lang/Void;",
        "Lhzm;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Libk;->a:Lgkv;

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs a([Lhzk;)Lhzm;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 33
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 34
    aget-object v1, p1, v7

    const-class v2, Lhzm;

    invoke-static {}, Lhas;->aj()Ljava/lang/String;

    move-result-object v3

    const-string v4, "registrarManifestacao"

    const-string v5, "return"

    const-string v6, "http://webservice.atendimento.app.bsbr.altec.com/"

    invoke-virtual/range {v0 .. v7}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzm;

    .line 35
    return-object v0
.end method

.method protected a(Lhzm;)V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Libk;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Lhzk;

    invoke-virtual {p0, p1}, Libk;->a([Lhzk;)Lhzm;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lhzm;

    invoke-virtual {p0, p1}, Libk;->a(Lhzm;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 28
    return-void
.end method
