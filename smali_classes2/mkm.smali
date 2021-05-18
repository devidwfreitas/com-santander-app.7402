.class public Lmkm;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lmje;",
        "Ljava/lang/Void;",
        "Lmjf;",
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
    iput-object p1, p0, Lmkm;->a:Lgkv;

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs a([Lmje;)Lmjf;
    .locals 6

    .prologue
    .line 27
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 29
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lmjf;

    invoke-static {}, Lhas;->k()Ljava/lang/String;

    move-result-object v3

    const-string v4, "simularAplicacao"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmjf;

    return-object v0
.end method

.method protected a(Lmjf;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lmkm;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Lmje;

    invoke-virtual {p0, p1}, Lmkm;->a([Lmje;)Lmjf;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lmjf;

    invoke-virtual {p0, p1}, Lmkm;->a(Lmjf;)V

    return-void
.end method
