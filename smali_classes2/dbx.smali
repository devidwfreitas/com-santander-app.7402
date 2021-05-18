.class Ldbx;
.super Ldcn;


# instance fields
.field final synthetic a:Lcth;


# direct methods
.method constructor <init>(Ldbv;Ldcl;Lcth;)V
    .locals 0

    iput-object p3, p0, Ldbx;->a:Lcth;

    invoke-direct {p0, p2}, Ldcn;-><init>(Ldcl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Ldbx;->a:Lcth;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcth;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
