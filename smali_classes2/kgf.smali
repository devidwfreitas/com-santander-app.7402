.class public Lkgf;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lkde;",
        "Ljava/lang/Void;",
        "Lkdd;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Lkgf;->a:Lgkv;

    .line 25
    return-void
.end method


# virtual methods
.method protected varargs a([Lkde;)Lkdd;
    .locals 6

    .prologue
    .line 35
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 36
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lkdd;

    invoke-static {}, Lhas;->ad()Ljava/lang/String;

    move-result-object v3

    const-string v4, "detalharCobertura"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdd;

    .line 37
    return-object v0
.end method

.method protected a(Lkdd;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lkgf;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Lkde;

    invoke-virtual {p0, p1}, Lkgf;->a([Lkde;)Lkdd;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lkdd;

    invoke-virtual {p0, p1}, Lkgf;->a(Lkdd;)V

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
