.class public Ldem;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;

.field private static final c:[Ldat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldat",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ldat",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ldep;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Lcph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const-string v2, "The connection to Google Play services was lost"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Ldem;->a:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    new-array v0, v0, [Ldat;

    sput-object v0, Ldem;->c:[Ldat;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Lcph;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ldem;->b:Ljava/util/Set;

    new-instance v0, Lden;

    invoke-direct {v0, p0}, Lden;-><init>(Ldem;)V

    iput-object v0, p0, Ldem;->d:Ldep;

    iput-object p1, p0, Ldem;->e:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Ldem;)Lcqt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Ldat;Lcqt;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldat",
            "<*>;",
            "Lcqt;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ldat;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ldeo;

    invoke-direct {v0, p0, p1, p2, v1}, Ldeo;-><init>(Ldat;Lcqt;Landroid/os/IBinder;Lden;)V

    invoke-virtual {p0, v0}, Ldat;->a(Ldep;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ldeo;

    invoke-direct {v0, p0, p1, p2, v1}, Ldeo;-><init>(Ldat;Lcqt;Landroid/os/IBinder;Lden;)V

    invoke-virtual {p0, v0}, Ldat;->a(Ldep;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldat;->a()V

    invoke-virtual {p0}, Ldat;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcqt;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ldat;->a(Ldep;)V

    invoke-virtual {p0}, Ldat;->a()V

    invoke-virtual {p0}, Ldat;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcqt;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Ldem;->b:Ljava/util/Set;

    sget-object v1, Ldem;->c:[Ldat;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldat;

    array-length v4, v0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    invoke-virtual {v2, v6}, Ldat;->a(Ldep;)V

    invoke-virtual {v2}, Ldat;->f()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ldat;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldem;->b:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ldat;->i()V

    iget-object v5, p0, Ldem;->e:Ljava/util/Map;

    move-object v1, v2

    check-cast v1, Ldan;

    invoke-virtual {v1}, Ldan;->b()Lcpf;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcph;

    invoke-interface {v1}, Lcph;->h()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v2, v6, v1}, Ldem;->a(Ldat;Lcqt;Landroid/os/IBinder;)V

    iget-object v1, p0, Ldem;->b:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method a(Ldat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldat",
            "<+",
            "Lcqg;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ldem;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldem;->d:Ldep;

    invoke-virtual {p1, v0}, Ldat;->a(Ldep;)V

    return-void
.end method

.method public a(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, " mUnconsumedApiCalls.size()="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Ldem;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Ldem;->b:Ljava/util/Set;

    sget-object v1, Ldem;->c:[Ldat;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldat;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    sget-object v4, Ldem;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v3, v4}, Ldat;->c(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
