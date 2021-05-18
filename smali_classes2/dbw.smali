.class Ldbw;
.super Ldcn;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic b:Ldbv;


# direct methods
.method constructor <init>(Ldbv;Ldcl;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Ldbw;->b:Ldbv;

    iput-object p3, p0, Ldbw;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Ldcn;-><init>(Ldcl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ldbw;->b:Ldbv;

    iget-object v0, v0, Ldbv;->a:Ldbs;

    iget-object v1, p0, Ldbw;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Ldbs;->a(Ldbs;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
