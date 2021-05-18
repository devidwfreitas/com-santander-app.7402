.class public Lcqq;
.super Ljava/lang/Object;


# instance fields
.field private a:Lded;

.field private b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcqp;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcqq;->a:Lded;

    if-nez v0, :cond_0

    new-instance v0, Ldtg;

    invoke-direct {v0}, Ldtg;-><init>()V

    iput-object v0, p0, Lcqq;->a:Lded;

    :cond_0
    iget-object v0, p0, Lcqq;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcqq;->b:Landroid/os/Looper;

    :cond_1
    :goto_0
    new-instance v0, Lcqp;

    iget-object v1, p0, Lcqq;->a:Lded;

    iget-object v2, p0, Lcqq;->b:Landroid/os/Looper;

    invoke-direct {v0, v1, v3, v2, v3}, Lcqp;-><init>(Lded;Landroid/accounts/Account;Landroid/os/Looper;Lcqo;)V

    return-object v0

    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcqq;->b:Landroid/os/Looper;

    goto :goto_0
.end method

.method public a(Landroid/os/Looper;)Lcqq;
    .locals 1

    const-string v0, "Looper must not be null."

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcqq;->b:Landroid/os/Looper;

    return-object p0
.end method

.method public a(Lded;)Lcqq;
    .locals 1

    const-string v0, "StatusExceptionMapper must not be null."

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcqq;->a:Lded;

    return-object p0
.end method
