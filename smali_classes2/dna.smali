.class Ldna;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Ldmw;


# direct methods
.method constructor <init>(Ldmw;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Ldna;->b:Ldmw;

    iput-object p2, p0, Ldna;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldna;->b:Ldmw;

    invoke-virtual {v0}, Ldmw;->k()Ldno;

    move-result-object v0

    iget-object v1, p0, Ldna;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ldno;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
