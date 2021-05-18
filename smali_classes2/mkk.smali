.class public Lmkk;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lmix;",
        "Ljava/lang/Void;",
        "Lmiy;",
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
    iput-object p1, p0, Lmkk;->a:Lgkv;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs a([Lmix;)Lmiy;
    .locals 6

    .prologue
    .line 34
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 35
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lmiy;

    invoke-static {}, Lhas;->k()Ljava/lang/String;

    move-result-object v3

    const-string v4, "consultarDadosAplicacao"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiy;

    .line 36
    return-object v0
.end method

.method protected a(Lmiy;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lmkk;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Lmix;

    invoke-virtual {p0, p1}, Lmkk;->a([Lmix;)Lmiy;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lmiy;

    invoke-virtual {p0, p1}, Lmkk;->a(Lmiy;)V

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
