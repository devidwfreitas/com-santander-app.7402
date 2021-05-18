.class public Lhhj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhhi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgkv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkv",
            "<",
            "Lhfl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lhfk;

    invoke-direct {v0}, Lhfk;-><init>()V

    .line 25
    new-instance v1, Lhhl;

    invoke-direct {v1, p1}, Lhhl;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lhfk;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lhhl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    return-void
.end method

.method public a(Lhfk;Lgkv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhfk;",
            "Lgkv",
            "<",
            "Lhfl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lhho;

    invoke-direct {v0, p2}, Lhho;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhfk;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lhho;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    return-void
.end method

.method public b(Lhfk;Lgkv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhfk;",
            "Lgkv",
            "<",
            "Lhfl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lhhp;

    invoke-direct {v0, p2}, Lhhp;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhfk;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lhhp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 36
    return-void
.end method

.method public c(Lhfk;Lgkv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhfk;",
            "Lgkv",
            "<",
            "Lhfl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lhhm;

    invoke-direct {v0, p2}, Lhhm;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhfk;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lhhm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method public d(Lhfk;Lgkv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhfk;",
            "Lgkv",
            "<",
            "Lhfl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lhhk;

    invoke-direct {v0, p2}, Lhhk;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhfk;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lhhk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method

.method public e(Lhfk;Lgkv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhfk;",
            "Lgkv",
            "<",
            "Lhfl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lhhn;

    invoke-direct {v0, p2}, Lhhn;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhfk;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lhhn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method
