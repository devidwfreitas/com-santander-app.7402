.class public abstract Lczk;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Lczq;

.field public h:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lczq;->a:Lczq;

    iput-object v0, p0, Lczk;->g:Lczq;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lczk;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Must provide an endpoint for this task by calling setService(ComponentName)."

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lczk;->c:Ljava/lang/String;

    invoke-static {v0}, Lcyy;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lczk;->g:Lczq;

    invoke-static {v0}, Lcom/google/android/gms/gcm/Task;->a(Lczq;)V

    iget-boolean v0, p0, Lczk;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lczk;->h:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/gms/gcm/Task;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b(I)Lczk;
.end method

.method public abstract b(Landroid/os/Bundle;)Lczk;
.end method

.method public abstract b(Ljava/lang/Class;)Lczk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcza;",
            ">;)",
            "Lczk;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lczk;
.end method

.method public abstract c()Lcom/google/android/gms/gcm/Task;
.end method

.method public abstract d(Z)Lczk;
.end method

.method public abstract e(Z)Lczk;
.end method

.method public abstract f(Z)Lczk;
.end method
