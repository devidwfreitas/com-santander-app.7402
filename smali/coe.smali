.class public final Lcoe;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/accounts/Account;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/auth/api/signin/internal/zzg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcoe;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcoe;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcoe;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcoe;->h:Ljava/util/Map;

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcoe;->a:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcoe;->b:Z

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcoe;->c:Z

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->d(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcoe;->d:Z

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->e(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcoe;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcoe;->f:Landroid/accounts/Account;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->g(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcoe;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->h(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcoe;->h:Ljava/util/Map;

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcoe;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcoe;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "two different server client ids provided"

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcoe;
    .locals 2

    iget-object v0, p0, Lcoe;->a:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcof;)Lcoe;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcoe;->h:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one extension per type may be added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcoe;->h:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/auth/api/signin/internal/zzg;

    invoke-direct {v2, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzg;-><init>(Lcof;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public varargs a(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcoe;
    .locals 2

    iget-object v0, p0, Lcoe;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcoe;->a:Ljava/util/Set;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcoe;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcoe;->d:Z

    invoke-direct {p0, p1}, Lcoe;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcoe;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcoe;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcoe;->b:Z

    invoke-direct {p0, p1}, Lcoe;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcoe;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lcoe;->c:Z

    return-object p0
.end method

.method public b()Lcoe;
    .locals 2

    iget-object v0, p0, Lcoe;->a:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcoe;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcoe;->a(Ljava/lang/String;Z)Lcoe;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcoe;
    .locals 2

    iget-object v0, p0, Lcoe;->a:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcoe;
    .locals 3

    new-instance v0, Landroid/accounts/Account;

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcoe;->f:Landroid/accounts/Account;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcoe;
    .locals 1

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcoe;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 11

    iget-boolean v0, p0, Lcoe;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcoe;->f:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcoe;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcoe;->a()Lcoe;

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    const/4 v1, 0x3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcoe;->a:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcoe;->f:Landroid/accounts/Account;

    iget-boolean v4, p0, Lcoe;->d:Z

    iget-boolean v5, p0, Lcoe;->b:Z

    iget-boolean v6, p0, Lcoe;->c:Z

    iget-object v7, p0, Lcoe;->e:Ljava/lang/String;

    iget-object v8, p0, Lcoe;->g:Ljava/lang/String;

    iget-object v9, p0, Lcoe;->h:Ljava/util/Map;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcod;)V

    return-object v0
.end method
