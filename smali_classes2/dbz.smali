.class Ldbz;
.super Ldqc;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ldbs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldbs;)V
    .locals 1

    invoke-direct {p0}, Ldqc;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldbz;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/zzbaw;)V
    .locals 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Ldbz;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbs;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ldbs;->d(Ldbs;)Ldcm;

    move-result-object v1

    new-instance v2, Ldca;

    invoke-direct {v2, p0, v0, v0, p1}, Ldca;-><init>(Ldbz;Ldcl;Ldbs;Lcom/google/android/gms/internal/zzbaw;)V

    invoke-virtual {v1, v2}, Ldcm;->a(Ldcn;)V

    goto :goto_0
.end method
