.class Lgng;
.super Lgno;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgno",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgne;


# direct methods
.method constructor <init>(Lgne;)V
    .locals 1

    .prologue
    .line 286
    iput-object p1, p0, Lgng;->a:Lgne;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgno;-><init>(Lgnf;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lgng;->a:Lgne;

    invoke-static {v0}, Lgne;->a(Lgne;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 292
    iget-object v0, p0, Lgng;->a:Lgne;

    iget-object v1, p0, Lgng;->a:Lgne;

    iget-object v2, p0, Lgng;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgne;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lgne;->a(Lgne;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
