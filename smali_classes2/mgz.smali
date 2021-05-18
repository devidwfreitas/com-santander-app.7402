.class public Lmgz;
.super Lnfg;
.source "SourceFile"


# instance fields
.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lnfg;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmgz;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lmgz;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lnfg;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 20
    invoke-super {p0, p1}, Lnfg;->a(Ljava/lang/Object;)V

    .line 29
    :goto_0
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lmgz;->b:Landroid/os/Handler;

    new-instance v1, Lmha;

    invoke-direct {v1, p0, p1}, Lmha;-><init>(Lmgz;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
