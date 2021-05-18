.class Ldcw;
.super Ljava/lang/Object;

# interfaces
.implements Lcth;
.implements Ldec;


# instance fields
.field final synthetic a:Ldcq;

.field private final b:Lcph;

.field private final c:Ldth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldth",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Lcug;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Ldcq;Lcph;Ldth;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcph;",
            "Ldth",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Ldcw;->a:Ldcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldcw;->d:Lcug;

    iput-object v0, p0, Ldcw;->e:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldcw;->f:Z

    iput-object p2, p0, Ldcw;->b:Lcph;

    iput-object p3, p0, Ldcw;->c:Ldth;

    return-void
.end method

.method static synthetic a(Ldcw;)Lcph;
    .locals 1

    iget-object v0, p0, Ldcw;->b:Lcph;

    return-object v0
.end method

.method private a()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Ldcw;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcw;->d:Lcug;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcw;->b:Lcph;

    iget-object v1, p0, Ldcw;->d:Lcug;

    iget-object v2, p0, Ldcw;->e:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcph;->a(Lcug;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Ldcw;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldcw;->f:Z

    return p1
.end method

.method static synthetic b(Ldcw;)V
    .locals 0

    invoke-direct {p0}, Ldcw;->a()V

    return-void
.end method

.method static synthetic c(Ldcw;)Ldth;
    .locals 1

    iget-object v0, p0, Ldcw;->c:Ldth;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldcw;->a:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldcx;

    invoke-direct {v1, p0, p1}, Ldcx;-><init>(Ldcw;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcug;Ljava/util/Set;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcug;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "GoogleApiManager"

    const-string v1, "Received null response from onSignInSuccess"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, v0}, Ldcw;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Ldcw;->d:Lcug;

    iput-object p2, p0, Ldcw;->e:Ljava/util/Set;

    invoke-direct {p0}, Ldcw;->a()V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcw;->a:Ldcq;

    invoke-static {v0}, Ldcq;->j(Ldcq;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ldcw;->c:Ldth;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    invoke-virtual {v0, p1}, Ldcs;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
