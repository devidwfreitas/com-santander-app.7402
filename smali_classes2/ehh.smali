.class Lehh;
.super Ljava/lang/Object;

# interfaces
.implements Legs;
.implements Legt;
.implements Lehp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Legs;",
        "Legt",
        "<TTContinuationResult;>;",
        "Lehp",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Legq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Legq",
            "<TTResult;",
            "Legv",
            "<TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field private final c:Lehr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lehr",
            "<TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Legq;Lehr;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Legq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lehr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Legq",
            "<TTResult;",
            "Legv",
            "<TTContinuationResult;>;>;",
            "Lehr",
            "<TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lehh;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lehh;->b:Legq;

    iput-object p3, p0, Lehh;->c:Lehr;

    return-void
.end method

.method static synthetic a(Lehh;)Legq;
    .locals 1

    iget-object v0, p0, Lehh;->b:Legq;

    return-object v0
.end method

.method static synthetic b(Lehh;)Lehr;
    .locals 1

    iget-object v0, p0, Lehh;->c:Lehr;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Legv;)V
    .locals 2
    .param p1    # Legv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Legv",
            "<TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lehh;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lehi;

    invoke-direct {v1, p0, p1}, Lehi;-><init>(Lehh;Legv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lehh;->c:Lehr;

    invoke-virtual {v0, p1}, Lehr;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lehh;->c:Lehr;

    invoke-virtual {v0, p1}, Lehr;->a(Ljava/lang/Object;)V

    return-void
.end method
