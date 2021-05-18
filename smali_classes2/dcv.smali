.class Ldcv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic b:Ldcs;


# direct methods
.method constructor <init>(Ldcs;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Ldcv;->b:Ldcs;

    iput-object p2, p0, Ldcv;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldcv;->b:Ldcs;

    iget-object v1, p0, Ldcv;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Ldcs;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
