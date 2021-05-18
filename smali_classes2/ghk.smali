.class public Lghk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lghp;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgkw;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lghk;->a:Landroid/app/Activity;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lgkw;Lghq;)V
    .locals 3

    .prologue
    .line 32
    iput-object p1, p0, Lghk;->b:Lgkw;

    .line 33
    new-instance v0, Lghn;

    iget-object v1, p0, Lghk;->a:Landroid/app/Activity;

    new-instance v2, Lghl;

    invoke-direct {v2, p0, p1}, Lghl;-><init>(Lghk;Lgkw;)V

    invoke-direct {v0, v1, v2}, Lghn;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lghq;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 39
    invoke-virtual {v0, v1}, Lghn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method

.method public a(Lgkw;Lghr;)V
    .locals 3

    .prologue
    .line 44
    iput-object p1, p0, Lghk;->b:Lgkw;

    .line 45
    new-instance v0, Lgho;

    iget-object v1, p0, Lghk;->a:Landroid/app/Activity;

    new-instance v2, Lghm;

    invoke-direct {v2, p0, p1}, Lghm;-><init>(Lghk;Lgkw;)V

    invoke-direct {v0, v1, v2}, Lgho;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lghr;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 51
    invoke-virtual {v0, v1}, Lgho;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    return-void
.end method
