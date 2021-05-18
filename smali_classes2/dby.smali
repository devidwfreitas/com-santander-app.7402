.class Ldby;
.super Ldcc;


# instance fields
.field final synthetic a:Ldbs;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldbs;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcph;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldby;->a:Ldbs;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldcc;-><init>(Ldbs;Ldbt;)V

    iput-object p2, p0, Ldby;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldby;->a:Ldbs;

    invoke-static {v0}, Ldbs;->d(Ldbs;)Ldcm;

    move-result-object v0

    iget-object v0, v0, Ldcm;->i:Ldce;

    iget-object v1, p0, Ldby;->a:Ldbs;

    invoke-static {v1}, Ldbs;->g(Ldbs;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Ldce;->f:Ljava/util/Set;

    iget-object v0, p0, Ldby;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    iget-object v2, p0, Ldby;->a:Ldbs;

    invoke-static {v2}, Ldbs;->h(Ldbs;)Lcug;

    move-result-object v2

    iget-object v3, p0, Ldby;->a:Ldbs;

    invoke-static {v3}, Ldbs;->d(Ldbs;)Ldcm;

    move-result-object v3

    iget-object v3, v3, Ldcm;->i:Ldce;

    iget-object v3, v3, Ldce;->f:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Lcph;->a(Lcug;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method
