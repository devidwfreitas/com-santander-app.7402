.class public Lczg;
.super Lczk;


# instance fields
.field private i:J

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Lczk;-><init>()V

    iput-wide v0, p0, Lczg;->i:J

    iput-wide v0, p0, Lczg;->j:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lczg;->e:Z

    return-void
.end method

.method public static synthetic a(Lczg;)J
    .locals 2

    iget-wide v0, p0, Lczg;->i:J

    return-wide v0
.end method

.method public static synthetic b(Lczg;)J
    .locals 2

    iget-wide v0, p0, Lczg;->j:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Lczg;
    .locals 0

    iput p1, p0, Lczg;->a:I

    return-object p0
.end method

.method public a(JJ)Lczg;
    .locals 1

    iput-wide p1, p0, Lczg;->i:J

    iput-wide p3, p0, Lczg;->j:J

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lczg;
    .locals 0

    iput-object p1, p0, Lczg;->h:Landroid/os/Bundle;

    return-object p0
.end method

.method public a(Ljava/lang/Class;)Lczg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcza;",
            ">;)",
            "Lczg;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lczg;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lczg;
    .locals 0

    iput-object p1, p0, Lczg;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lczg;
    .locals 0

    iput-boolean p1, p0, Lczg;->f:Z

    return-object p0
.end method

.method protected a()V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-super {p0}, Lczk;->a()V

    iget-wide v0, p0, Lczg;->i:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lczg;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an execution window using setExecutionWindow."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lczg;->i:J

    iget-wide v2, p0, Lczg;->j:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window start must be shorter than window end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public b()Lcom/google/android/gms/gcm/OneoffTask;
    .locals 2

    invoke-virtual {p0}, Lczg;->a()V

    new-instance v0, Lcom/google/android/gms/gcm/OneoffTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/gcm/OneoffTask;-><init>(Lczg;Lczf;)V

    return-object v0
.end method

.method public b(Z)Lczg;
    .locals 0

    iput-boolean p1, p0, Lczg;->e:Z

    return-object p0
.end method

.method public synthetic b(I)Lczk;
    .locals 1

    invoke-virtual {p0, p1}, Lczg;->a(I)Lczg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/os/Bundle;)Lczk;
    .locals 1

    invoke-virtual {p0, p1}, Lczg;->a(Landroid/os/Bundle;)Lczg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Class;)Lczk;
    .locals 1

    invoke-virtual {p0, p1}, Lczg;->a(Ljava/lang/Class;)Lczg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Lczk;
    .locals 1

    invoke-virtual {p0, p1}, Lczg;->a(Ljava/lang/String;)Lczg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/android/gms/gcm/Task;
    .locals 1

    invoke-virtual {p0}, Lczg;->b()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Lczg;
    .locals 0

    iput-boolean p1, p0, Lczg;->d:Z

    return-object p0
.end method

.method public synthetic d(Z)Lczk;
    .locals 1

    invoke-virtual {p0, p1}, Lczg;->b(Z)Lczg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Z)Lczk;
    .locals 1

    invoke-virtual {p0, p1}, Lczg;->c(Z)Lczg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Z)Lczk;
    .locals 1

    invoke-virtual {p0, p1}, Lczg;->a(Z)Lczg;

    move-result-object v0

    return-object v0
.end method
