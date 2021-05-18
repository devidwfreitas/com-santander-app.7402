.class public Ldea;
.super Ldqc;

# interfaces
.implements Lcpv;
.implements Lcpw;


# static fields
.field private static c:Lcpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpd",
            "<+",
            "Ldpx;",
            "Ldpy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/os/Handler;

.field private final f:Lcpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpd",
            "<+",
            "Ldpx;",
            "Ldpy;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lctn;

.field private j:Ldpx;

.field private k:Ldec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ldpt;->c:Lcpd;

    sput-object v0, Ldea;->c:Lcpd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Ldqc;-><init>()V

    iput-object p1, p0, Ldea;->d:Landroid/content/Context;

    iput-object p2, p0, Ldea;->e:Landroid/os/Handler;

    sget-object v0, Ldea;->c:Lcpd;

    iput-object v0, p0, Ldea;->f:Lcpd;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldea;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lctn;Lcpd;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lctn;",
            "Lcpd",
            "<+",
            "Ldpx;",
            "Ldpy;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ldqc;-><init>()V

    iput-object p1, p0, Ldea;->d:Landroid/content/Context;

    iput-object p2, p0, Ldea;->e:Landroid/os/Handler;

    iput-object p3, p0, Ldea;->i:Lctn;

    invoke-virtual {p3}, Lctn;->e()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ldea;->h:Ljava/util/Set;

    iput-object p4, p0, Ldea;->f:Lcpd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldea;->g:Z

    return-void
.end method

.method static synthetic a(Ldea;Lcom/google/android/gms/internal/zzbaw;)V
    .locals 0

    invoke-direct {p0, p1}, Ldea;->b(Lcom/google/android/gms/internal/zzbaw;)V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/zzbaw;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbaw;->a()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbaw;->b()Lcom/google/android/gms/common/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->b()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "SignInCoordinator"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Ldea;->k:Ldec;

    invoke-interface {v0, v1}, Ldec;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Ldea;->j:Ldpx;

    invoke-interface {v0}, Ldpx;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Ldea;->k:Ldec;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->a()Lcug;

    move-result-object v0

    iget-object v2, p0, Ldea;->h:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Ldec;->a(Lcug;Ljava/util/Set;)V

    :goto_1
    iget-object v0, p0, Ldea;->j:Ldpx;

    invoke-interface {v0}, Ldpx;->a()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldea;->k:Ldec;

    invoke-interface {v1, v0}, Ldec;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Ldpx;
    .locals 1

    iget-object v0, p0, Ldea;->j:Ldpx;

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldea;->j:Ldpx;

    invoke-interface {v0}, Ldpx;->a()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldea;->j:Ldpx;

    invoke-interface {v0, p0}, Ldpx;->a(Ldqe;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldea;->k:Ldec;

    invoke-interface {v0, p1}, Ldec;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzbaw;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Ldea;->e:Landroid/os/Handler;

    new-instance v1, Ldeb;

    invoke-direct {v1, p0, p1}, Ldeb;-><init>(Ldea;Lcom/google/android/gms/internal/zzbaw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ldec;)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ldea;->j:Ldpx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldea;->j:Ldpx;

    invoke-interface {v0}, Ldpx;->a()V

    :cond_0
    iget-boolean v0, p0, Ldea;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldea;->d:Landroid/content/Context;

    invoke-static {v0}, Lcoi;->a(Landroid/content/Context;)Lcoi;

    move-result-object v0

    invoke-virtual {v0}, Lcoi;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iput-object v0, p0, Ldea;->h:Ljava/util/Set;

    new-instance v0, Lctn;

    iget-object v2, p0, Ldea;->h:Ljava/util/Set;

    const/4 v4, 0x0

    sget-object v8, Ldpy;->a:Ldpy;

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v8}, Lctn;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Ldpy;)V

    iput-object v0, p0, Ldea;->i:Lctn;

    :cond_1
    iget-object v0, p0, Ldea;->f:Lcpd;

    iget-object v1, p0, Ldea;->d:Landroid/content/Context;

    iget-object v2, p0, Ldea;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Ldea;->i:Lctn;

    iget-object v4, p0, Ldea;->i:Lctn;

    invoke-virtual {v4}, Lctn;->k()Ldpy;

    move-result-object v4

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcpd;->a(Landroid/content/Context;Landroid/os/Looper;Lctn;Ljava/lang/Object;Lcpv;Lcpw;)Lcph;

    move-result-object v0

    check-cast v0, Ldpx;

    iput-object v0, p0, Ldea;->j:Ldpx;

    iput-object p1, p0, Ldea;->k:Ldec;

    iget-object v0, p0, Ldea;->j:Ldpx;

    invoke-interface {v0}, Ldpx;->l()V

    return-void

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ldea;->j:Ldpx;

    invoke-interface {v0}, Ldpx;->a()V

    return-void
.end method
