.class public Lkkq;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lkia;",
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
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Lkkq;->b:Lkid;

    .line 24
    iput-object p2, p0, Lkkq;->a:Lgkv;

    .line 25
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lkia;
    .locals 6

    .prologue
    .line 29
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 30
    iget-object v1, p0, Lkkq;->b:Lkid;

    const-class v2, Lkia;

    invoke-static {}, Lhas;->q()Ljava/lang/String;

    move-result-object v3

    const-string v4, "recargaImp"

    const-string v5, "recargaResponse"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkia;

    return-object v0
.end method

.method protected a(Lkia;)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lkkq;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lkkq;->a([Ljava/lang/Void;)Lkia;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lkia;

    invoke-virtual {p0, p1}, Lkkq;->a(Lkia;)V

    return-void
.end method
