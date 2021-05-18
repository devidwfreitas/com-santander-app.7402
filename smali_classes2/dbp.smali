.class public Ldbp;
.super Ljava/lang/Object;

# interfaces
.implements Ldcl;


# instance fields
.field private final a:Ldcm;

.field private b:Z


# direct methods
.method public constructor <init>(Ldcm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbp;->b:Z

    iput-object p1, p0, Ldbp;->a:Ldcm;

    return-void
.end method

.method static synthetic a(Ldbp;)Ldcm;
    .locals 1

    iget-object v0, p0, Ldbp;->a:Ldcm;

    return-object v0
.end method

.method private c(Ldan;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcpe;",
            ">(",
            "Ldan",
            "<+",
            "Lcqg;",
            "TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldbp;->a:Ldcm;

    iget-object v0, v0, Ldcm;->i:Ldce;

    iget-object v0, v0, Ldce;->k:Ldem;

    invoke-virtual {v0, p1}, Ldem;->a(Ldat;)V

    iget-object v0, p0, Ldbp;->a:Ldcm;

    iget-object v0, v0, Ldcm;->i:Ldce;

    invoke-virtual {p1}, Ldan;->b()Lcpf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldce;->b(Lcpf;)Lcph;

    move-result-object v0

    invoke-interface {v0}, Lcph;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldbp;->a:Ldcm;

    iget-object v1, v1, Ldcm;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ldan;->b()Lcpf;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Ldan;->a(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    :cond_0
    instance-of v1, v0, Lcsu;

    if-eqz v1, :cond_1

    check-cast v0, Lcsu;

    invoke-virtual {v0}, Lcsu;->k()Lcpj;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Ldan;->a(Lcpe;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ldan;)Ldan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcpe;",
            "R::",
            "Lcqg;",
            "T:",
            "Ldan",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ldbp;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Ldbp;->a:Ldcm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldcm;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Ldbp;->a:Ldcm;

    iget-object v0, v0, Ldcm;->j:Lddh;

    iget-boolean v1, p0, Ldbp;->b:Z

    invoke-interface {v0, p1, v1}, Lddh;->a(IZ)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcox;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcox",
            "<*>;Z)V"
        }
    .end annotation

    return-void
.end method

.method public b(Ldan;)Ldan;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcpe;",
            "T:",
            "Ldan",
            "<+",
            "Lcqg;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Ldbp;->c(Ldan;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    iget-object v0, p0, Ldbp;->a:Ldcm;

    new-instance v1, Ldbq;

    invoke-direct {v1, p0, p0}, Ldbq;-><init>(Ldbp;Ldcl;)V

    invoke-virtual {v0, v1}, Ldcm;->a(Ldcn;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Ldbp;->b:Z

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Ldbp;->a:Ldcm;

    iget-object v2, v2, Ldcm;->i:Ldce;

    invoke-virtual {v2}, Ldce;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Ldbp;->b:Z

    iget-object v0, p0, Ldbp;->a:Ldcm;

    iget-object v0, v0, Ldcm;->i:Ldce;

    iget-object v0, v0, Ldce;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldej;

    invoke-virtual {v0}, Ldej;->a()V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ldbp;->a:Ldcm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldcm;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Ldbp;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbp;->b:Z

    iget-object v0, p0, Ldbp;->a:Ldcm;

    new-instance v1, Ldbr;

    invoke-direct {v1, p0, p0}, Ldbr;-><init>(Ldbp;Ldcl;)V

    invoke-virtual {v0, v1}, Ldcm;->a(Ldcn;)V

    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    iget-boolean v0, p0, Ldbp;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbp;->b:Z

    iget-object v0, p0, Ldbp;->a:Ldcm;

    iget-object v0, v0, Ldcm;->i:Ldce;

    iget-object v0, v0, Ldce;->k:Ldem;

    invoke-virtual {v0}, Ldem;->a()V

    invoke-virtual {p0}, Ldbp;->b()Z

    :cond_0
    return-void
.end method
