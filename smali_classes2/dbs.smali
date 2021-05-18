.class public Ldbs;
.super Ljava/lang/Object;

# interfaces
.implements Ldcl;


# instance fields
.field private final a:Ldcm;

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Landroid/content/Context;

.field private final d:Lcwn;

.field private e:Lcom/google/android/gms/common/ConnectionResult;

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/os/Bundle;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcpf;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ldpx;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcug;

.field private p:Z

.field private q:Z

.field private final r:Lctn;

.field private final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcox",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcpd;
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

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldcm;Lctn;Ljava/util/Map;Lcwn;Lcpd;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldcm;",
            "Lctn;",
            "Ljava/util/Map",
            "<",
            "Lcox",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcwn;",
            "Lcpd",
            "<+",
            "Ldpx;",
            "Ldpy;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldbs;->g:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ldbs;->i:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldbs;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldbs;->u:Ljava/util/ArrayList;

    iput-object p1, p0, Ldbs;->a:Ldcm;

    iput-object p2, p0, Ldbs;->r:Lctn;

    iput-object p3, p0, Ldbs;->s:Ljava/util/Map;

    iput-object p4, p0, Ldbs;->d:Lcwn;

    iput-object p5, p0, Ldbs;->t:Lcpd;

    iput-object p6, p0, Ldbs;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Ldbs;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Ldbs;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ldbs;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/zzbaw;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldbs;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbaw;->a()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbaw;->b()Lcom/google/android/gms/common/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->b()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "GoogleApiClientConnecting"

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

    invoke-direct {p0, v1}, Ldbs;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldbs;->n:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->a()Lcug;

    move-result-object v1

    iput-object v1, p0, Ldbs;->o:Lcug;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->c()Z

    move-result v1

    iput-boolean v1, p0, Ldbs;->p:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->d()Z

    move-result v0

    iput-boolean v0, p0, Ldbs;->q:Z

    invoke-direct {p0}, Ldbs;->e()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Ldbs;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Ldbs;->h()V

    invoke-direct {p0}, Ldbs;->e()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Ldbs;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method static synthetic a(Ldbs;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Ldbs;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic a(Ldbs;Lcom/google/android/gms/common/ConnectionResult;Lcox;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldbs;->b(Lcom/google/android/gms/common/ConnectionResult;Lcox;Z)V

    return-void
.end method

.method static synthetic a(Ldbs;Lcom/google/android/gms/internal/zzbaw;)V
    .locals 0

    invoke-direct {p0, p1}, Ldbs;->a(Lcom/google/android/gms/internal/zzbaw;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Ldbs;->k:Ldpx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldbs;->k:Ldpx;

    invoke-interface {v0}, Ldpx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Ldbs;->k:Ldpx;

    invoke-interface {v0}, Ldpx;->k()V

    :cond_0
    iget-object v0, p0, Ldbs;->k:Ldpx;

    invoke-interface {v0}, Ldpx;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldbs;->o:Lcug;

    :cond_1
    return-void
.end method

.method private a(IZLcom/google/android/gms/common/ConnectionResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0, p3}, Ldbs;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ldbs;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_2

    iget v1, p0, Ldbs;->f:I

    if-ge p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ldbs;->d:Lcwn;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcwn;->b(I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ldbs;I)Z
    .locals 1

    invoke-direct {p0, p1}, Ldbs;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ldbs;)Lcwn;
    .locals 1

    iget-object v0, p0, Ldbs;->d:Lcwn;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;Lcox;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcox",
            "<*>;Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcox;->a()Lcpg;

    move-result-object v0

    invoke-virtual {v0}, Lcpg;->a()I

    move-result v0

    invoke-direct {p0, v0, p3, p1}, Ldbs;->a(IZLcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Ldbs;->e:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Ldbs;->f:I

    :cond_0
    iget-object v0, p0, Ldbs;->a:Ldcm;

    iget-object v0, v0, Ldcm;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcox;->c()Lcpf;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(I)Z
    .locals 5

    iget v0, p0, Ldbs;->g:I

    if-eq v0, p1, :cond_0

    const-string v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Ldbs;->a:Ldcm;

    iget-object v1, v1, Ldcm;->i:Ldce;

    invoke-virtual {v1}, Ldce;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected callback in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    iget v1, p0, Ldbs;->h:I

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "mRemainingConnections="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    iget v1, p0, Ldbs;->g:I

    invoke-direct {p0, v1}, Ldbs;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Ldbs;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GoogleApiClient connecting is in step "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but received callback for step "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Ldbs;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    iget-boolean v0, p0, Ldbs;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ldbs;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1}, Ldbs;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    goto :goto_0

    :pswitch_1
    const-string v0, "STEP_GETTING_REMOTE_SERVICE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Ldbs;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Ldbs;->b:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    invoke-direct {p0}, Ldbs;->i()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Ldbs;->a(Z)V

    iget-object v0, p0, Ldbs;->a:Ldcm;

    invoke-virtual {v0, p1}, Ldcm;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Ldbs;->a:Ldcm;

    iget-object v0, v0, Ldcm;->j:Lddh;

    invoke-interface {v0, p1}, Lddh;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Ldbs;)Ldcm;
    .locals 1

    iget-object v0, p0, Ldbs;->a:Ldcm;

    return-object v0
.end method

.method private d()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Ldbs;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ldbs;->h:I

    iget v1, p0, Ldbs;->h:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Ldbs;->h:I

    if-gez v1, :cond_1

    const-string v1, "GoogleApiClientConnecting"

    iget-object v2, p0, Ldbs;->a:Ldcm;

    iget-object v2, v2, Ldcm;->i:Ldce;

    invoke-virtual {v2}, Ldce;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GoogleApiClientConnecting"

    const-string v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Ldbs;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldbs;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldbs;->a:Ldcm;

    iget v2, p0, Ldbs;->f:I

    iput v2, v1, Ldcm;->h:I

    iget-object v1, p0, Ldbs;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Ldbs;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 1

    iget v0, p0, Ldbs;->h:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Ldbs;->m:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ldbs;->n:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-direct {p0}, Ldbs;->f()V

    goto :goto_0
.end method

.method static synthetic e(Ldbs;)Z
    .locals 1

    iget-boolean v0, p0, Ldbs;->m:Z

    return v0
.end method

.method static synthetic f(Ldbs;)Ldpx;
    .locals 1

    iget-object v0, p0, Ldbs;->k:Ldpx;

    return-object v0
.end method

.method private f()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ldbs;->g:I

    iget-object v0, p0, Ldbs;->a:Ldcm;

    iget-object v0, v0, Ldcm;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Ldbs;->h:I

    iget-object v0, p0, Ldbs;->a:Ldcm;

    iget-object v0, v0, Ldcm;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    iget-object v3, p0, Ldbs;->a:Ldcm;

    iget-object v3, v3, Ldcm;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Ldbs;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldbs;->g()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Ldbs;->a:Ldcm;

    iget-object v3, v3, Ldcm;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldbs;->u:Ljava/util/ArrayList;

    invoke-static {}, Ldcp;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Ldby;

    invoke-direct {v3, p0, v1}, Ldby;-><init>(Ldbs;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method static synthetic g(Ldbs;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Ldbs;->j()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Ldbs;->a:Ldcm;

    invoke-virtual {v0}, Ldcm;->i()V

    invoke-static {}, Ldcp;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ldbt;

    invoke-direct {v1, p0}, Ldbt;-><init>(Ldbs;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ldbs;->k:Ldpx;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldbs;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldbs;->k:Ldpx;

    iget-object v1, p0, Ldbs;->o:Lcug;

    iget-boolean v2, p0, Ldbs;->q:Z

    invoke-interface {v0, v1, v2}, Ldpx;->a(Lcug;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldbs;->a(Z)V

    :cond_1
    iget-object v0, p0, Ldbs;->a:Ldcm;

    iget-object v0, v0, Ldcm;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    iget-object v2, p0, Ldbs;->a:Ldcm;

    iget-object v2, v2, Ldcm;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    invoke-interface {v0}, Lcph;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldbs;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Ldbs;->a:Ldcm;

    iget-object v1, v1, Ldcm;->j:Lddh;

    invoke-interface {v1, v0}, Lddh;->a(Landroid/os/Bundle;)V

    return-void

    :cond_3
    iget-object v0, p0, Ldbs;->i:Landroid/os/Bundle;

    goto :goto_1
.end method

.method static synthetic h(Ldbs;)Lcug;
    .locals 1

    iget-object v0, p0, Ldbs;->o:Lcug;

    return-object v0
.end method

.method private h()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbs;->m:Z

    iget-object v0, p0, Ldbs;->a:Ldcm;

    iget-object v0, v0, Ldcm;->i:Ldce;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Ldce;->f:Ljava/util/Set;

    iget-object v0, p0, Ldbs;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    iget-object v2, p0, Ldbs;->a:Ldcm;

    iget-object v2, v2, Ldcm;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ldbs;->a:Ldcm;

    iget-object v2, v2, Ldcm;->d:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Ldbs;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldbs;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic i(Ldbs;)V
    .locals 0

    invoke-direct {p0}, Ldbs;->h()V

    return-void
.end method

.method private j()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldbs;->r:Lctn;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Ldbs;->r:Lctn;

    invoke-virtual {v0}, Lctn;->e()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Ldbs;->r:Lctn;

    invoke-virtual {v0}, Lctn;->g()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcox;

    iget-object v4, p0, Ldbs;->a:Ldcm;

    iget-object v4, v4, Ldcm;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcox;->c()Lcpf;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcto;

    iget-object v0, v0, Lcto;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic j(Ldbs;)V
    .locals 0

    invoke-direct {p0}, Ldbs;->e()V

    return-void
.end method

.method static synthetic k(Ldbs;)Z
    .locals 1

    invoke-direct {p0}, Ldbs;->d()Z

    move-result v0

    return v0
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

    iget-object v0, p0, Ldbs;->a:Ldcm;

    iget-object v0, v0, Ldcm;->i:Ldce;

    iget-object v0, v0, Ldce;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a()V
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Ldbs;->a:Ldcm;

    iget-object v0, v0, Ldcm;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v3, p0, Ldbs;->m:Z

    iput-object v10, p0, Ldbs;->e:Lcom/google/android/gms/common/ConnectionResult;

    iput v3, p0, Ldbs;->g:I

    iput-boolean v5, p0, Ldbs;->l:Z

    iput-boolean v3, p0, Ldbs;->n:Z

    iput-boolean v3, p0, Ldbs;->p:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Ldbs;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcox;

    iget-object v1, p0, Ldbs;->a:Ldcm;

    iget-object v1, v1, Ldcm;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcox;->c()Lcpf;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcph;

    invoke-virtual {v0}, Lcox;->a()Lcpg;

    move-result-object v4

    invoke-virtual {v4}, Lcpg;->a()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    or-int/2addr v4, v2

    iget-object v2, p0, Ldbs;->s:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1}, Lcph;->d()Z

    move-result v8

    if-eqz v8, :cond_0

    iput-boolean v5, p0, Ldbs;->m:Z

    if-eqz v2, :cond_2

    iget-object v8, p0, Ldbs;->j:Ljava/util/Set;

    invoke-virtual {v0}, Lcox;->c()Lcpf;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    new-instance v8, Ldbu;

    invoke-direct {v8, p0, v0, v2}, Ldbu;-><init>(Ldbs;Lcox;Z)V

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Ldbs;->l:Z

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    iput-boolean v3, p0, Ldbs;->m:Z

    :cond_4
    iget-boolean v0, p0, Ldbs;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldbs;->r:Lctn;

    iget-object v1, p0, Ldbs;->a:Ldcm;

    iget-object v1, v1, Ldcm;->i:Ldce;

    invoke-virtual {v1}, Ldce;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lctn;->a(Ljava/lang/Integer;)V

    new-instance v5, Ldcb;

    invoke-direct {v5, p0, v10}, Ldcb;-><init>(Ldbs;Ldbt;)V

    iget-object v0, p0, Ldbs;->t:Lcpd;

    iget-object v1, p0, Ldbs;->c:Landroid/content/Context;

    iget-object v2, p0, Ldbs;->a:Ldcm;

    iget-object v2, v2, Ldcm;->i:Ldce;

    invoke-virtual {v2}, Ldce;->c()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Ldbs;->r:Lctn;

    iget-object v4, p0, Ldbs;->r:Lctn;

    invoke-virtual {v4}, Lctn;->k()Ldpy;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcpd;->a(Landroid/content/Context;Landroid/os/Looper;Lctn;Ljava/lang/Object;Lcpv;Lcpw;)Lcph;

    move-result-object v0

    check-cast v0, Ldpx;

    iput-object v0, p0, Ldbs;->k:Ldpx;

    :cond_5
    iget-object v0, p0, Ldbs;->a:Ldcm;

    iget-object v0, v0, Ldcm;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Ldbs;->h:I

    iget-object v0, p0, Ldbs;->u:Ljava/util/ArrayList;

    invoke-static {}, Ldcp;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Ldbv;

    invoke-direct {v2, p0, v7}, Ldbv;-><init>(Ldbs;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Ldbs;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldbs;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Ldbs;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    invoke-direct {p0}, Ldbs;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldbs;->g()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcox;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcox",
            "<*>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldbs;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ldbs;->b(Lcom/google/android/gms/common/ConnectionResult;Lcox;Z)V

    invoke-direct {p0}, Ldbs;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldbs;->g()V

    goto :goto_0
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

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ldbs;->i()V

    invoke-direct {p0, v2}, Ldbs;->a(Z)V

    iget-object v0, p0, Ldbs;->a:Ldcm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldcm;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2
.end method

.method public c()V
    .locals 0

    return-void
.end method
