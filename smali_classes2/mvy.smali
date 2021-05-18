.class public Lmvy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmvv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lmvw;)V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lmri;

    invoke-direct {v0, p1}, Lmri;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v1, Lmwb;

    new-instance v2, Lmvz;

    invoke-direct {v2, p0, p2}, Lmvz;-><init>(Lmvy;Lmvw;)V

    invoke-direct {v1, v2}, Lmwb;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lmri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 40
    invoke-virtual {v1, v2}, Lmwb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method public a(Lmvx;)V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lmrm;

    invoke-direct {v0}, Lmrm;-><init>()V

    .line 46
    new-instance v1, Lmwc;

    new-instance v2, Lmwa;

    invoke-direct {v2, p0, p1}, Lmwa;-><init>(Lmvy;Lmvx;)V

    invoke-direct {v1, v2}, Lmwc;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lmrm;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 60
    invoke-virtual {v1, v2}, Lmwc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-void
.end method
