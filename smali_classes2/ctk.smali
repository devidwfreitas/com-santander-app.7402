.class public Lctk;
.super Ljava/lang/Object;

# interfaces
.implements Lcth;


# instance fields
.field final synthetic a:Lctb;


# direct methods
.method public constructor <init>(Lctb;)V
    .locals 0

    iput-object p1, p0, Lctk;->a:Lctb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lctk;->a:Lctb;

    const/4 v1, 0x0

    iget-object v2, p0, Lctk;->a:Lctb;

    invoke-virtual {v2}, Lctb;->y()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lctb;->a(Lcug;Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lctk;->a:Lctb;

    invoke-static {v0}, Lctb;->d(Lctb;)Lcte;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctk;->a:Lctb;

    invoke-static {v0}, Lctb;->d(Lctb;)Lcte;

    move-result-object v0

    invoke-interface {v0, p1}, Lcte;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
