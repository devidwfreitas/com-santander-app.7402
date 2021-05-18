.class final Lctx;
.super Ljava/lang/Object;

# interfaces
.implements Lcte;


# instance fields
.field final synthetic a:Lcpw;


# direct methods
.method constructor <init>(Lcpw;)V
    .locals 0

    iput-object p1, p0, Lctx;->a:Lcpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lctx;->a:Lcpw;

    invoke-interface {v0, p1}, Lcpw;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
