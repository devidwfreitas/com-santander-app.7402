.class public final Lnmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnna;


# annotations
.annotation build Lnlv;
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnmf",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnmg;->b:Ljava/util/Queue;

    .line 43
    invoke-static {p1}, Lnmd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lnmg;->a:Ljava/lang/Class;

    .line 44
    return-void
.end method

.method private a(Lnmi;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lnmg;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnmf;

    .line 82
    if-nez v0, :cond_0

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1, v0}, Lnmi;->execute(Lnmf;)V

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lnmg;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public a(Lnmf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnmf",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lnmg;->b:Ljava/util/Queue;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lnmi;->RELEASE:Lnmi;

    invoke-direct {p0, v0}, Lnmg;->a(Lnmi;)V

    .line 66
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lnmi;->RESTORE:Lnmi;

    invoke-direct {p0, v0}, Lnmg;->a(Lnmi;)V

    .line 76
    return-void
.end method
