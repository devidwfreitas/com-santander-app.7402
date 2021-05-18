.class public abstract Lctv;
.super Lctb;

# interfaces
.implements Lcph;
.implements Lctz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lctb",
        "<TT;>;",
        "Lcph;",
        "Lctz;"
    }
.end annotation


# instance fields
.field private final e:Lctn;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILctn;Lcpv;Lcpw;)V
    .locals 9

    invoke-static {p1}, Lcua;->a(Landroid/content/Context;)Lcua;

    move-result-object v3

    invoke-static {}, Lcon;->a()Lcon;

    move-result-object v4

    invoke-static {p5}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcpv;

    invoke-static {p6}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcpw;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lctv;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcua;Lcon;ILctn;Lcpv;Lcpw;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcua;Lcon;ILctn;Lcpv;Lcpw;)V
    .locals 9

    invoke-static/range {p7 .. p7}, Lctv;->a(Lcpv;)Lctd;

    move-result-object v6

    invoke-static/range {p8 .. p8}, Lctv;->a(Lcpw;)Lcte;

    move-result-object v7

    invoke-virtual {p6}, Lctn;->i()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lctb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcua;Lcwn;ILctd;Lcte;Ljava/lang/String;)V

    iput-object p6, p0, Lctv;->e:Lctn;

    invoke-virtual {p6}, Lctn;->b()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lctv;->g:Landroid/accounts/Account;

    invoke-virtual {p6}, Lctn;->f()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lctv;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lctv;->f:Ljava/util/Set;

    return-void
.end method

.method private static a(Lcpv;)Lctd;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lctw;

    invoke-direct {v0, p0}, Lctw;-><init>(Lcpv;)V

    goto :goto_0
.end method

.method private static a(Lcpw;)Lcte;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lctx;

    invoke-direct {v0, p0}, Lctx;-><init>(Lcpw;)V

    goto :goto_0
.end method

.method private b(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lctv;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected a(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public final q()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lctv;->g:Landroid/accounts/Account;

    return-object v0
.end method

.method public r()[Lcom/google/android/gms/common/zzc;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/zzc;

    return-object v0
.end method

.method protected final y()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lctv;->f:Ljava/util/Set;

    return-object v0
.end method

.method protected final z()Lctn;
    .locals 1

    iget-object v0, p0, Lctv;->e:Lctn;

    return-object v0
.end method
