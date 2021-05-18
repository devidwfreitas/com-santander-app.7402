.class public Lknn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lknm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lkns;

    new-instance v1, Lkno;

    invoke-direct {v1, p0, p1}, Lkno;-><init>(Lknn;Lgkw;)V

    invoke-direct {v0, v1}, Lkns;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lkls;

    const/4 v2, 0x0

    check-cast p2, Lkls;

    aput-object p2, v1, v2

    .line 30
    invoke-virtual {v0, v1}, Lkns;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    return-void
.end method

.method public b(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lknt;

    new-instance v1, Lknp;

    invoke-direct {v1, p0, p1}, Lknp;-><init>(Lknn;Lgkw;)V

    invoke-direct {v0, v1}, Lknt;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lklz;

    const/4 v2, 0x0

    check-cast p2, Lklz;

    aput-object p2, v1, v2

    .line 41
    invoke-virtual {v0, v1}, Lknt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 42
    return-void
.end method

.method public c(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lknr;

    new-instance v1, Lknq;

    invoke-direct {v1, p0, p1}, Lknq;-><init>(Lknn;Lgkw;)V

    invoke-direct {v0, v1}, Lknr;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lkla;

    const/4 v2, 0x0

    check-cast p2, Lkla;

    aput-object p2, v1, v2

    .line 52
    invoke-virtual {v0, v1}, Lknr;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    return-void
.end method
