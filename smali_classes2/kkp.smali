.class public Lkkp;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lkjg;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;

.field private b:Lkid;


# direct methods
.method public constructor <init>(Lkid;Lgkv;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Lkkp;->b:Lkid;

    .line 25
    iput-object p2, p0, Lkkp;->a:Lgkv;

    .line 26
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lkjg;
    .locals 6

    .prologue
    .line 30
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 31
    iget-object v1, p0, Lkkp;->b:Lkid;

    const-class v2, Lkjg;

    invoke-static {}, Lhas;->q()Ljava/lang/String;

    move-result-object v3

    const-string v4, "alterarProgramacaoRecarga"

    const-string v5, "recargaResponse"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkjg;

    return-object v0
.end method

.method protected a(Lkjg;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lkkp;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lkkp;->a([Ljava/lang/Void;)Lkjg;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lkjg;

    invoke-virtual {p0, p1}, Lkkp;->a(Lkjg;)V

    return-void
.end method
