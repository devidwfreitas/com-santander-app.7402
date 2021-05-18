.class public Lkhg;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lkgk;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lkgl;

.field private b:Lgkv;


# direct methods
.method public constructor <init>(Lkgl;Lgkv;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lkhg;->a:Lkgl;

    .line 23
    iput-object p2, p0, Lkhg;->b:Lgkv;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lkgk;
    .locals 6

    .prologue
    .line 28
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 29
    iget-object v1, p0, Lkhg;->a:Lkgl;

    const-class v2, Lkgk;

    invoke-static {}, Lhas;->q()Ljava/lang/String;

    move-result-object v3

    const-string v4, "consultarProgramacoesRecarga"

    const-string v5, "programacoesRecargaResultListResponse"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgk;

    return-object v0
.end method

.method protected a(Lkgk;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lkhg;->b:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lkhg;->a([Ljava/lang/Void;)Lkgk;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lkgk;

    invoke-virtual {p0, p1}, Lkhg;->a(Lkgk;)V

    return-void
.end method
