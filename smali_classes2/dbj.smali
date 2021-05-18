.class Ldbj;
.super Ljava/lang/Object;

# interfaces
.implements Lcpz;


# instance fields
.field final synthetic a:Ldat;

.field final synthetic b:Ldbi;


# direct methods
.method constructor <init>(Ldbi;Ldat;)V
    .locals 0

    iput-object p1, p0, Ldbj;->b:Ldbi;

    iput-object p2, p0, Ldbj;->a:Ldat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Ldbj;->b:Ldbi;

    invoke-static {v0}, Ldbi;->a(Ldbi;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ldbj;->a:Ldat;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
