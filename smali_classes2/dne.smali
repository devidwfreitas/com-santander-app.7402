.class Ldne;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Ldmw;


# direct methods
.method constructor <init>(Ldmw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Ldne;->f:Ldmw;

    iput-object p2, p0, Ldne;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Ldne;->b:Ljava/lang/String;

    iput-object p4, p0, Ldne;->c:Ljava/lang/String;

    iput-object p5, p0, Ldne;->d:Ljava/lang/String;

    iput-boolean p6, p0, Ldne;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Ldne;->f:Ldmw;

    iget-object v0, v0, Ldmw;->n:Ldlv;

    invoke-virtual {v0}, Ldlv;->v()Ldno;

    move-result-object v0

    iget-object v1, p0, Ldne;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Ldne;->b:Ljava/lang/String;

    iget-object v3, p0, Ldne;->c:Ljava/lang/String;

    iget-object v4, p0, Ldne;->d:Ljava/lang/String;

    iget-boolean v5, p0, Ldne;->e:Z

    invoke-virtual/range {v0 .. v5}, Ldno;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
