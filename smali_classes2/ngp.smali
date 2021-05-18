.class Lngp;
.super Ljava/lang/Object;


# instance fields
.field private volatile a:I

.field private final b:J

.field private final c:Lnfu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnfu",
            "<",
            "Lnga;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lnfu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnfu",
            "<",
            "Lngb;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lnfu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnfu",
            "<",
            "Lngc;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lnfu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnfu",
            "<",
            "Lnfz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lngp;->b:J

    new-instance v0, Lnfu;

    invoke-direct {v0}, Lnfu;-><init>()V

    iput-object v0, p0, Lngp;->c:Lnfu;

    new-instance v0, Lnfu;

    invoke-direct {v0}, Lnfu;-><init>()V

    iput-object v0, p0, Lngp;->d:Lnfu;

    new-instance v0, Lnfu;

    invoke-direct {v0}, Lnfu;-><init>()V

    iput-object v0, p0, Lngp;->f:Lnfu;

    new-instance v0, Lnfu;

    invoke-direct {v0}, Lnfu;-><init>()V

    iput-object v0, p0, Lngp;->e:Lnfu;

    return-void
.end method

.method constructor <init>(JLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Lnfz;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lnga;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lngb;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lngc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lngp;->b:J

    new-instance v0, Lnfu;

    invoke-direct {v0, p4}, Lnfu;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lngp;->c:Lnfu;

    new-instance v0, Lnfu;

    invoke-direct {v0, p5}, Lnfu;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lngp;->d:Lnfu;

    new-instance v0, Lnfu;

    invoke-direct {v0, p6}, Lnfu;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lngp;->e:Lnfu;

    new-instance v0, Lnfu;

    invoke-direct {v0, p3}, Lnfu;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lngp;->f:Lnfu;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lngp;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lngp;

    iget-wide v2, p0, Lngp;->b:J

    iget-wide v4, p1, Lngp;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lngp;->c:Lnfu;

    iget-object v2, p1, Lngp;->c:Lnfu;

    invoke-virtual {v1, v2}, Lnfu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lngp;->d:Lnfu;

    iget-object v2, p1, Lngp;->d:Lnfu;

    invoke-virtual {v1, v2}, Lnfu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lngp;->e:Lnfu;

    iget-object v2, p1, Lngp;->e:Lnfu;

    invoke-virtual {v1, v2}, Lnfu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lngp;->f:Lnfu;

    iget-object v2, p1, Lngp;->f:Lnfu;

    invoke-virtual {v1, v2}, Lnfu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lngp;->b:J

    return-wide v0
.end method

.method public final g()Lnfu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnfu",
            "<",
            "Lnga;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lngp;->c:Lnfu;

    return-object v0
.end method

.method public final h()Lnfu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnfu",
            "<",
            "Lngb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lngp;->d:Lnfu;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lngp;->a:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lngp;->b:J

    iget-wide v2, p0, Lngp;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lngp;->f:Lnfu;

    invoke-virtual {v1}, Lnfu;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lngp;->c:Lnfu;

    invoke-virtual {v1}, Lnfu;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lngp;->d:Lnfu;

    invoke-virtual {v1}, Lnfu;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lngp;->e:Lnfu;

    invoke-virtual {v1}, Lnfu;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lngp;->a:I

    :cond_0
    return v0
.end method

.method public final i()Lnfu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnfu",
            "<",
            "Lngc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lngp;->e:Lnfu;

    return-object v0
.end method

.method public final j()Lnfu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnfu",
            "<",
            "Lnfz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lngp;->f:Lnfu;

    return-object v0
.end method
