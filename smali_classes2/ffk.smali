.class Lffk;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lffg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lffg;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lffk;->a:Ljava/lang/ref/WeakReference;

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lffk;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lffg;

    invoke-static {v0}, Lffg;->b(Lffg;)V

    .line 105
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v0, "LocationRetriever"

    const-string v1, "release mode, SEH skipping."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
