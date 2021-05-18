.class public Ldbl;
.super Ldap;


# instance fields
.field private final e:Lcvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcvk",
            "<",
            "Ldth",
            "<*>;>;"
        }
    .end annotation
.end field

.field private f:Ldcq;


# direct methods
.method private constructor <init>(Lddk;)V
    .locals 2

    invoke-direct {p0, p1}, Ldap;-><init>(Lddk;)V

    new-instance v0, Lcvk;

    invoke-direct {v0}, Lcvk;-><init>()V

    iput-object v0, p0, Ldbl;->e:Lcvk;

    iget-object v0, p0, Ldbl;->d:Lddk;

    const-string v1, "ConnectionlessLifecycleHelper"

    invoke-interface {v0, v1, p0}, Lddk;->a(Ljava/lang/String;Lddj;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ldcq;Ldth;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ldcq;",
            "Ldth",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p0}, Ldbl;->a(Landroid/app/Activity;)Lddk;

    move-result-object v1

    const-string v0, "ConnectionlessLifecycleHelper"

    const-class v2, Ldbl;

    invoke-interface {v1, v0, v2}, Lddk;->a(Ljava/lang/String;Ljava/lang/Class;)Lddj;

    move-result-object v0

    check-cast v0, Ldbl;

    if-nez v0, :cond_0

    new-instance v0, Ldbl;

    invoke-direct {v0, v1}, Ldbl;-><init>(Lddk;)V

    :cond_0
    iput-object p1, v0, Ldbl;->f:Ldcq;

    invoke-direct {v0, p2}, Ldbl;->a(Ldth;)V

    invoke-virtual {p1, v0}, Ldcq;->a(Ldbl;)V

    return-void
.end method

.method private a(Ldth;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldth",
            "<*>;)V"
        }
    .end annotation

    const-string v0, "ApiKey cannot be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ldbl;->e:Lcvk;

    invoke-virtual {v0, p1}, Lcvk;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Ldap;->a()V

    iget-object v0, p0, Ldbl;->e:Lcvk;

    invoke-virtual {v0}, Lcvk;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldbl;->f:Ldcq;

    invoke-virtual {v0, p0}, Ldcq;->a(Ldbl;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Ldbl;->f:Ldcq;

    invoke-virtual {v0, p1, p2}, Ldcq;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Ldap;->b()V

    iget-object v0, p0, Ldbl;->f:Ldcq;

    invoke-virtual {v0, p0}, Ldcq;->b(Ldbl;)V

    return-void
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Ldbl;->f:Ldcq;

    invoke-virtual {v0}, Ldcq;->d()V

    return-void
.end method

.method e()Lcvk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcvk",
            "<",
            "Ldth",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Ldbl;->e:Lcvk;

    return-object v0
.end method
