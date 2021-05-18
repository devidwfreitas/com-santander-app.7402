.class final Lfp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfa",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lfw;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lfw;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lfp;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lfp;->b:Lfw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lfp;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lfp;->b:Lfw;

    invoke-virtual {v0, p1}, Lfw;->b(Ljava/lang/Object;)V

    .line 418
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 416
    :cond_0
    invoke-virtual {p1}, Lfd;->g()Ljava/lang/Exception;

    goto :goto_0
.end method

.method public synthetic b(Lfd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lfp;->a(Lfd;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
