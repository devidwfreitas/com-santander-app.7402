.class Ldnd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ldmw;


# direct methods
.method constructor <init>(Ldmw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldnd;->e:Ldmw;

    iput-object p2, p0, Ldnd;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Ldnd;->b:Ljava/lang/String;

    iput-object p4, p0, Ldnd;->c:Ljava/lang/String;

    iput-object p5, p0, Ldnd;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ldnd;->e:Ldmw;

    iget-object v0, v0, Ldmw;->n:Ldlv;

    invoke-virtual {v0}, Ldlv;->v()Ldno;

    move-result-object v0

    iget-object v1, p0, Ldnd;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Ldnd;->b:Ljava/lang/String;

    iget-object v3, p0, Ldnd;->c:Ljava/lang/String;

    iget-object v4, p0, Ldnd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Ldno;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
