.class Ldmy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Z

.field final synthetic c:Ldmw;


# direct methods
.method constructor <init>(Ldmw;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Ldmy;->c:Ldmw;

    iput-object p2, p0, Ldmy;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Ldmy;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ldmy;->c:Ldmw;

    invoke-virtual {v0}, Ldmw;->k()Ldno;

    move-result-object v0

    iget-object v1, p0, Ldmy;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Ldmy;->b:Z

    invoke-virtual {v0, v1, v2}, Ldno;->a(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
