.class public final Lcpu;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/accounts/Account;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcox",
            "<*>;",
            "Lcto;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/Context;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcox",
            "<*>;",
            "Lcoy;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lddi;

.field private l:I

.field private m:Lcpw;

.field private n:Landroid/os/Looper;

.field private o:Lcon;

.field private p:Lcpd;
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

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcpv;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcpw;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcpu;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcpu;->c:Ljava/util/Set;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcpu;->h:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcpu;->j:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcpu;->l:I

    invoke-static {}, Lcon;->a()Lcon;

    move-result-object v0

    iput-object v0, p0, Lcpu;->o:Lcon;

    sget-object v0, Ldpt;->c:Lcpd;

    iput-object v0, p0, Lcpu;->p:Lcpd;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcpu;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcpu;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcpu;->s:Z

    iput-object p1, p0, Lcpu;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcpu;->n:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcpu;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcpu;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcpv;Lcpw;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcpv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcpw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcpu;-><init>(Landroid/content/Context;)V

    const-string v0, "Must provide a connected listener"

    invoke-static {p2, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcpu;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "Must provide a connection failed listener"

    invoke-static {p3, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcpu;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Lcpd;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lctn;Lcpv;Lcpw;)Lcph;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcph;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcpd",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lctn;",
            "Lcpv;",
            "Lcpw;",
            ")TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcpd;->a(Landroid/content/Context;Landroid/os/Looper;Lctn;Ljava/lang/Object;Lcpv;Lcpw;)Lcph;

    move-result-object v0

    return-object v0
.end method

.method private a(Lddi;ILcpw;)Lcpu;
    .locals 2
    .param p1    # Lddi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcpw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "clientId must be non-negative"

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    iput p2, p0, Lcpu;->l:I

    iput-object p3, p0, Lcpu;->m:Lcpw;

    iput-object p1, p0, Lcpu;->k:Lddi;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs a(Lcox;Lcoy;[Lcom/google/android/gms/common/api/Scope;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcoy;",
            ">(",
            "Lcox",
            "<TO;>;TO;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcox;->a()Lcpg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcpg;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p3, v0

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcpu;->h:Ljava/util/Map;

    new-instance v2, Lcto;

    invoke-direct {v2, v1}, Lcto;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcpt;)V
    .locals 3

    iget-object v0, p0, Lcpu;->k:Lddi;

    invoke-static {v0}, Ldah;->a(Lddi;)Ldah;

    move-result-object v0

    iget v1, p0, Lcpu;->l:I

    iget-object v2, p0, Lcpu;->m:Lcpw;

    invoke-virtual {v0, v1, p1, v2}, Ldah;->a(ILcpt;Lcpw;)V

    return-void
.end method

.method private d()Lcpt;
    .locals 15

    invoke-virtual {p0}, Lcpu;->b()Lctn;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v0, 0x0

    invoke-virtual {v4}, Lctn;->g()Ljava/util/Map;

    move-result-object v12

    new-instance v7, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v7}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v10, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v10}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcpu;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v11, v0

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcox;

    iget-object v0, p0, Lcpu;->j:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ldax;

    invoke-direct {v5, v8, v0}, Ldax;-><init>(Lcox;Z)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcox;->b()Lcpd;

    move-result-object v0

    iget-object v2, p0, Lcpu;->i:Landroid/content/Context;

    iget-object v3, p0, Lcpu;->n:Landroid/os/Looper;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcpu;->a(Lcpd;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lctn;Lcpv;Lcpw;)Lcph;

    move-result-object v2

    invoke-virtual {v8}, Lcox;->c()Lcpf;

    move-result-object v3

    invoke-interface {v10, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcpg;->a()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-interface {v2}, Lcph;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v9, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Lcox;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcox;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cannot be used with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-object v8, v9

    :cond_3
    move v11, v0

    move-object v9, v8

    goto/16 :goto_0

    :cond_4
    if-eqz v9, :cond_6

    if-eqz v11, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v9}, Lcox;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x52

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "With using "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", GamesOptions can only be specified within GoogleSignInOptions.Builder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcpu;->a:Landroid/accounts/Account;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    const-string v1, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v9}, Lcox;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcsp;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcpu;->b:Ljava/util/Set;

    iget-object v1, p0, Lcpu;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v9}, Lcox;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcsp;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldce;->a(Ljava/lang/Iterable;Z)I

    move-result v12

    new-instance v0, Ldce;

    iget-object v1, p0, Lcpu;->i:Landroid/content/Context;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v3, p0, Lcpu;->n:Landroid/os/Looper;

    iget-object v5, p0, Lcpu;->o:Lcon;

    iget-object v6, p0, Lcpu;->p:Lcpd;

    iget-object v8, p0, Lcpu;->q:Ljava/util/ArrayList;

    iget-object v9, p0, Lcpu;->r:Ljava/util/ArrayList;

    iget v11, p0, Lcpu;->l:I

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Ldce;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lctn;Lcon;Lcpd;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;Z)V

    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    move v0, v11

    goto/16 :goto_2
.end method


# virtual methods
.method public a()Lcpu;
    .locals 1

    const-string v0, "<<default account>>"

    invoke-virtual {p0, v0}, Lcpu;->a(Ljava/lang/String;)Lcpu;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcpu;
    .locals 0

    iput p1, p0, Lcpu;->d:I

    return-object p0
.end method

.method public a(Landroid/accounts/Account;)Lcpu;
    .locals 0

    iput-object p1, p0, Lcpu;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public a(Landroid/os/Handler;)Lcpu;
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Handler must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcpu;->n:Landroid/os/Looper;

    return-object p0
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;ILcpw;)Lcpu;
    .locals 1
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcpw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lddi;

    invoke-direct {v0, p1}, Lddi;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2, p3}, Lcpu;->a(Lddi;ILcpw;)Lcpu;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;Lcpw;)Lcpu;
    .locals 1
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcpw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcpu;->a(Landroid/support/v4/app/FragmentActivity;ILcpw;)Lcpu;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)Lcpu;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "View must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcpu;->e:Landroid/view/View;

    return-object p0
.end method

.method public a(Lcom/google/android/gms/common/api/Scope;)Lcpu;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Scope must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcpu;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcox;)Lcpu;
    .locals 2
    .param p1    # Lcox;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcox",
            "<+",
            "Lcpb;",
            ">;)",
            "Lcpu;"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "Api must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcpu;->j:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcox;->a()Lcpg;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcpg;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcpu;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcpu;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Lcox;Lcoz;)Lcpu;
    .locals 2
    .param p1    # Lcox;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcoz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcoz;",
            ">(",
            "Lcox",
            "<TO;>;TO;)",
            "Lcpu;"
        }
    .end annotation

    const-string v0, "Api must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Null options are not permitted for this Api"

    invoke-static {p2, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcpu;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcox;->a()Lcpg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcpg;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcpu;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcpu;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs a(Lcox;Lcoz;[Lcom/google/android/gms/common/api/Scope;)Lcpu;
    .locals 1
    .param p1    # Lcox;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcoz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcoz;",
            ">(",
            "Lcox",
            "<TO;>;TO;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")",
            "Lcpu;"
        }
    .end annotation

    const-string v0, "Api must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Null options are not permitted for this Api"

    invoke-static {p2, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcpu;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcpu;->a(Lcox;Lcoy;[Lcom/google/android/gms/common/api/Scope;)V

    return-object p0
.end method

.method public varargs a(Lcox;[Lcom/google/android/gms/common/api/Scope;)Lcpu;
    .locals 2
    .param p1    # Lcox;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcox",
            "<+",
            "Lcpb;",
            ">;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")",
            "Lcpu;"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "Api must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcpu;->j:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v1, p2}, Lcpu;->a(Lcox;Lcoy;[Lcom/google/android/gms/common/api/Scope;)V

    return-object p0
.end method

.method public a(Lcpv;)Lcpu;
    .locals 1
    .param p1    # Lcpv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcpu;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcpw;)Lcpu;
    .locals 1
    .param p1    # Lcpw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcpu;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcpu;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcpu;->a:Landroid/accounts/Account;

    return-object p0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Lctn;
    .locals 9

    sget-object v8, Ldpy;->a:Ldpy;

    iget-object v0, p0, Lcpu;->j:Ljava/util/Map;

    sget-object v1, Ldpt;->g:Lcox;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcpu;->j:Ljava/util/Map;

    sget-object v1, Ldpt;->g:Lcox;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldpy;

    move-object v8, v0

    :cond_0
    new-instance v0, Lctn;

    iget-object v1, p0, Lcpu;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lcpu;->b:Ljava/util/Set;

    iget-object v3, p0, Lcpu;->h:Ljava/util/Map;

    iget v4, p0, Lcpu;->d:I

    iget-object v5, p0, Lcpu;->e:Landroid/view/View;

    iget-object v6, p0, Lcpu;->f:Ljava/lang/String;

    iget-object v7, p0, Lcpu;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lctn;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Ldpy;)V

    return-object v0
.end method

.method public c()Lcpt;
    .locals 3

    iget-object v0, p0, Lcpu;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "must call addApi() to add at least one API"

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcpu;->d()Lcpt;

    move-result-object v0

    invoke-static {}, Lcpt;->l()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcpt;->l()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lcpu;->l:I

    if-ltz v1, :cond_0

    invoke-direct {p0, v0}, Lcpu;->a(Lcpt;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
