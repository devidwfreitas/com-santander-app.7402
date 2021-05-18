.class final Lcsl;
.super Ljava/lang/Object;

# interfaces
.implements Lcpz;


# instance fields
.field final synthetic a:Lcpy;

.field final synthetic b:Legw;

.field final synthetic c:Lcsn;

.field final synthetic d:Lcso;


# direct methods
.method constructor <init>(Lcpy;Legw;Lcsn;Lcso;)V
    .locals 0

    iput-object p1, p0, Lcsl;->a:Lcpy;

    iput-object p2, p0, Lcsl;->b:Legw;

    iput-object p3, p0, Lcsl;->c:Lcsn;

    iput-object p4, p0, Lcsl;->d:Lcso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcsl;->a:Lcpy;

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcpy;->a(JLjava/util/concurrent/TimeUnit;)Lcqg;

    move-result-object v0

    iget-object v1, p0, Lcsl;->b:Legw;

    iget-object v2, p0, Lcsl;->c:Lcsn;

    invoke-interface {v2, v0}, Lcsn;->b(Lcqg;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Legw;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcsl;->b:Legw;

    iget-object v1, p0, Lcsl;->d:Lcso;

    invoke-interface {v1, p1}, Lcso;->a(Lcom/google/android/gms/common/api/Status;)Lcql;

    move-result-object v1

    invoke-virtual {v0, v1}, Legw;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
