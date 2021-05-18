.class Ldch;
.super Ljava/lang/Object;

# interfaces
.implements Lcpw;


# instance fields
.field final synthetic a:Ldee;


# direct methods
.method constructor <init>(Ldce;Ldee;)V
    .locals 0

    iput-object p2, p0, Ldch;->a:Ldee;

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

    iget-object v0, p0, Ldch;->a:Ldee;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Ldee;->a(Lcqg;)V

    return-void
.end method
