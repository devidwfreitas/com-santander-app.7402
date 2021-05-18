.class public Lgjn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgjr;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lgjn;->a:Landroid/app/Activity;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lgjy;

    iget-object v1, p0, Lgjn;->a:Landroid/app/Activity;

    new-instance v2, Lgjo;

    invoke-direct {v2, p0, p1}, Lgjo;-><init>(Lgjn;Lgkw;)V

    invoke-direct {v0, v1, v2}, Lgjy;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lgib;

    const/4 v2, 0x0

    check-cast p2, Lgib;

    aput-object p2, v1, v2

    .line 39
    invoke-virtual {v0, v1}, Lgjy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method

.method public b(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lgjw;

    iget-object v1, p0, Lgjn;->a:Landroid/app/Activity;

    new-instance v2, Lgjp;

    invoke-direct {v2, p0, p1}, Lgjp;-><init>(Lgjn;Lgkw;)V

    invoke-direct {v0, v1, v2}, Lgjw;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lghx;

    const/4 v2, 0x0

    check-cast p2, Lghx;

    aput-object p2, v1, v2

    .line 49
    invoke-virtual {v0, v1}, Lgjw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method

.method public c(Lgkw;Lgoe;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public d(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lgka;

    iget-object v1, p0, Lgjn;->a:Landroid/app/Activity;

    new-instance v2, Lgjq;

    invoke-direct {v2, p0, p1}, Lgjq;-><init>(Lgjn;Lgkw;)V

    invoke-direct {v0, v1, v2}, Lgka;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lgie;

    const/4 v2, 0x0

    check-cast p2, Lgie;

    aput-object p2, v1, v2

    .line 65
    invoke-virtual {v0, v1}, Lgka;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    return-void
.end method
