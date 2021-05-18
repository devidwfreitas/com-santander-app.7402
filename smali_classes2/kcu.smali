.class public Lkcu;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfwu;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lkcu;->a:Lgkv;

    .line 22
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfwu;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lhbi;

    invoke-direct {v0}, Lhbi;-><init>()V

    invoke-virtual {v0}, Lhbi;->a()Lfwu;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lfwu;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lkcu;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lkcu;->a([Ljava/lang/Void;)Lfwu;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lfwu;

    invoke-virtual {p0, p1}, Lkcu;->a(Lfwu;)V

    return-void
.end method
