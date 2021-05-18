.class public Lkco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkcn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgkw;)V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lkcu;

    new-instance v1, Lkcq;

    invoke-direct {v1, p0, p1}, Lkcq;-><init>(Lkco;Lgkw;)V

    invoke-direct {v0, v1}, Lkcu;-><init>(Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 38
    invoke-virtual {v0, v1}, Lkcu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 39
    return-void
.end method

.method public a(Lgkw;Lkcc;)V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lkct;

    new-instance v1, Lkcp;

    invoke-direct {v1, p0, p1}, Lkcp;-><init>(Lkco;Lgkw;)V

    invoke-direct {v0, v1}, Lkct;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lkcc;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 28
    invoke-virtual {v0, v1}, Lkct;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 29
    return-void
.end method

.method public b(Lgkw;)V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lkcs;

    new-instance v1, Lkcr;

    invoke-direct {v1, p0, p1}, Lkcr;-><init>(Lkco;Lgkw;)V

    invoke-direct {v0, v1}, Lkcs;-><init>(Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 48
    invoke-virtual {v0, v1}, Lkcs;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    return-void
.end method
