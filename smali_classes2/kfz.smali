.class public Lkfz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkfy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lkgg;

    new-instance v1, Lkga;

    invoke-direct {v1, p0, p1}, Lkga;-><init>(Lkfz;Lgkw;)V

    invoke-direct {v0, v1}, Lkgg;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lkdl;

    const/4 v2, 0x0

    check-cast p2, Lkdl;

    aput-object p2, v1, v2

    .line 31
    invoke-virtual {v0, v1}, Lkgg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    return-void
.end method

.method public b(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lkgh;

    new-instance v1, Lkgb;

    invoke-direct {v1, p0, p1}, Lkgb;-><init>(Lkfz;Lgkw;)V

    invoke-direct {v0, v1}, Lkgh;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lkcz;

    const/4 v2, 0x0

    check-cast p2, Lkcz;

    aput-object p2, v1, v2

    .line 41
    invoke-virtual {v0, v1}, Lkgh;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 42
    return-void
.end method

.method public c(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lkgf;

    new-instance v1, Lkgc;

    invoke-direct {v1, p0, p1}, Lkgc;-><init>(Lkfz;Lgkw;)V

    invoke-direct {v0, v1}, Lkgf;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lkde;

    const/4 v2, 0x0

    check-cast p2, Lkde;

    aput-object p2, v1, v2

    .line 51
    invoke-virtual {v0, v1}, Lkgf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    return-void
.end method

.method public d(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lkge;

    new-instance v1, Lkgd;

    invoke-direct {v1, p0, p1}, Lkgd;-><init>(Lkfz;Lgkw;)V

    invoke-direct {v0, v1}, Lkge;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lkcx;

    const/4 v2, 0x0

    check-cast p2, Lkcx;

    aput-object p2, v1, v2

    .line 61
    invoke-virtual {v0, v1}, Lkge;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method
