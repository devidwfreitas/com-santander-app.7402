.class public final Lcpm;
.super Ldat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldat",
        "<",
        "Lcpp;",
        ">;"
    }
.end annotation


# instance fields
.field private d:I

.field private e:Z

.field private f:Z

.field private final g:[Lcpy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcpy",
            "<*>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/List;Lcpt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcpy",
            "<*>;>;",
            "Lcpt;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Ldat;-><init>(Lcpt;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcpm;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcpm;->d:I

    iget v0, p0, Lcpm;->d:I

    new-array v0, v0, [Lcpy;

    iput-object v0, p0, Lcpm;->g:[Lcpy;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcpp;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcpm;->g:[Lcpy;

    invoke-direct {v0, v1, v2}, Lcpp;-><init>(Lcom/google/android/gms/common/api/Status;[Lcpy;)V

    invoke-virtual {p0, v0}, Lcpm;->a(Lcqg;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpy;

    iget-object v2, p0, Lcpm;->g:[Lcpy;

    aput-object v0, v2, v1

    new-instance v2, Lcpn;

    invoke-direct {v2, p0}, Lcpn;-><init>(Lcpm;)V

    invoke-virtual {v0, v2}, Lcpy;->a(Lcpz;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcpt;Lcpn;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcpm;-><init>(Ljava/util/List;Lcpt;)V

    return-void
.end method

.method static synthetic a(Lcpm;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcpm;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcpm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcpm;->f:Z

    return p1
.end method

.method static synthetic b(Lcpm;)I
    .locals 2

    iget v0, p0, Lcpm;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcpm;->d:I

    return v0
.end method

.method static synthetic b(Lcpm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcpm;->e:Z

    return p1
.end method

.method static synthetic c(Lcpm;)I
    .locals 1

    iget v0, p0, Lcpm;->d:I

    return v0
.end method

.method static synthetic d(Lcpm;)Z
    .locals 1

    iget-boolean v0, p0, Lcpm;->f:Z

    return v0
.end method

.method static synthetic e(Lcpm;)V
    .locals 0

    invoke-super {p0}, Ldat;->a()V

    return-void
.end method

.method static synthetic f(Lcpm;)Z
    .locals 1

    iget-boolean v0, p0, Lcpm;->e:Z

    return v0
.end method

.method static synthetic g(Lcpm;)[Lcpy;
    .locals 1

    iget-object v0, p0, Lcpm;->g:[Lcpy;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcpp;
    .locals 2

    new-instance v0, Lcpp;

    iget-object v1, p0, Lcpm;->g:[Lcpy;

    invoke-direct {v0, p1, v1}, Lcpp;-><init>(Lcom/google/android/gms/common/api/Status;[Lcpy;)V

    return-object v0
.end method

.method public a()V
    .locals 4

    invoke-super {p0}, Ldat;->a()V

    iget-object v1, p0, Lcpm;->g:[Lcpy;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcpy;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcqg;
    .locals 1

    invoke-virtual {p0, p1}, Lcpm;->a(Lcom/google/android/gms/common/api/Status;)Lcpp;

    move-result-object v0

    return-object v0
.end method
