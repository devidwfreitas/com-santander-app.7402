.class public final Lctm;
.super Lctc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lctc;"
    }
.end annotation


# instance fields
.field final synthetic e:Lctb;


# direct methods
.method public constructor <init>(Lctb;ILandroid/os/Bundle;)V
    .locals 0
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, Lctm;->e:Lctb;

    invoke-direct {p0, p1, p2, p3}, Lctc;-><init>(Lctb;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lctm;->e:Lctb;

    iget-object v0, v0, Lctb;->b:Lcth;

    invoke-interface {v0, p1}, Lcth;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lctm;->e:Lctb;

    invoke-virtual {v0, p1}, Lctb;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected a()Z
    .locals 2

    iget-object v0, p0, Lctm;->e:Lctb;

    iget-object v0, v0, Lctb;->b:Lcth;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->u:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcth;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
