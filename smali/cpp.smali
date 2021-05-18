.class public final Lcpp;
.super Ljava/lang/Object;

# interfaces
.implements Lcqg;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:[Lcpy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcpy",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;[Lcpy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "[",
            "Lcpy",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpp;->a:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcpp;->b:[Lcpy;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcpp;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public a(Lcpq;)Lcqg;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcqg;",
            ">(",
            "Lcpq",
            "<TR;>;)TR;"
        }
    .end annotation

    iget v0, p1, Lcpq;->a:I

    iget-object v1, p0, Lcpp;->b:[Lcpy;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "The result token does not belong to this batch"

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcpp;->b:[Lcpy;

    iget v1, p1, Lcpq;->a:I

    aget-object v0, v0, v1

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcpy;->a(JLjava/util/concurrent/TimeUnit;)Lcqg;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
