.class public Lgdt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgds;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lgdt;->a:Landroid/app/Activity;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lgkw;Lgao;)V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lgea;

    iget-object v1, p0, Lgdt;->a:Landroid/app/Activity;

    invoke-direct {v0, p1, v1}, Lgea;-><init>(Lgkw;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lgao;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lgea;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method

.method public a(Lgkw;Lgaq;)V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lgdw;

    invoke-direct {v0, p1}, Lgdw;-><init>(Lgkw;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lgaq;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lgdw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method

.method public a(Lgkw;Lgat;)V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lgdy;

    iget-object v1, p0, Lgdt;->a:Landroid/app/Activity;

    invoke-direct {v0, p1, v1}, Lgdy;-><init>(Lgkw;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lgat;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lgdy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method public a(Lgkw;Lgau;)V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lgdx;

    iget-object v1, p0, Lgdt;->a:Landroid/app/Activity;

    new-instance v2, Lgdv;

    invoke-direct {v2, p0, p1}, Lgdv;-><init>(Lgdt;Lgkw;)V

    invoke-direct {v0, v1, v2}, Lgdx;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lgau;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 71
    invoke-virtual {v0, v1}, Lgdx;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    return-void
.end method

.method public a(Lgkw;Lgbe;)V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lgdz;

    iget-object v1, p0, Lgdt;->a:Landroid/app/Activity;

    new-instance v2, Lgdu;

    invoke-direct {v2, p0, p1}, Lgdu;-><init>(Lgdt;Lgkw;)V

    invoke-direct {v0, v1, v2}, Lgdz;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lgbe;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 61
    invoke-virtual {v0, v1}, Lgdz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method
