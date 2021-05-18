.class public final Lngz;
.super Ljava/lang/Object;

# interfaces
.implements Lnje;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lnhc;

.field private final e:Lnhp;

.field private final f:Lnik;

.field private g:Lngm;


# direct methods
.method public constructor <init>(Lnkj;Lnhp;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lngz;->e:Lnhp;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lngz;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lngz;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lnkj;->o()Lnhc;

    move-result-object v0

    iput-object v0, p0, Lngz;->d:Lnhc;

    invoke-direct {p0}, Lngz;->a()Lnik;

    move-result-object v0

    iput-object v0, p0, Lngz;->f:Lnik;

    invoke-virtual {p1}, Lnkj;->m()Lngm;

    move-result-object v0

    iput-object v0, p0, Lngz;->g:Lngm;

    invoke-virtual {p1}, Lnkj;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "visitor-service.tealiumiq.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lnkj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lngz;->a:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, Lnkj;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lngz;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lngz;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lngz;Lngm;)Lngm;
    .locals 0

    iput-object p1, p0, Lngz;->g:Lngm;

    return-object p1
.end method

.method private a()Lnik;
    .locals 1

    new-instance v0, Lnha;

    invoke-direct {v0, p0}, Lnha;-><init>(Lngz;)V

    return-object v0
.end method

.method private a(Lngm;Lngm;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v4, v0

    :goto_0
    if-nez p2, :cond_2

    move v3, v0

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {p1, p2}, Lngm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Lngz;->e:Lnhp;

    new-instance v2, Lnhb;

    invoke-direct {v2, p1, p2}, Lnhb;-><init>(Lngm;Lngm;)V

    invoke-interface {v0, v2}, Lnhp;->a(Lnib;)V

    new-instance v5, Lngt;

    if-eqz v4, :cond_5

    move-object v2, v1

    :goto_3
    if-eqz v3, :cond_6

    move-object v0, v1

    :goto_4
    invoke-direct {v5, v2, v0}, Lngt;-><init>(Lnfu;Lnfu;)V

    invoke-direct {p0, v5}, Lngz;->a(Lngs;)V

    new-instance v5, Lngu;

    if-eqz v4, :cond_7

    move-object v2, v1

    :goto_5
    if-eqz v3, :cond_8

    move-object v0, v1

    :goto_6
    invoke-direct {v5, v2, v0}, Lngu;-><init>(Lnfu;Lnfu;)V

    invoke-direct {p0, v5}, Lngz;->a(Lngs;)V

    new-instance v5, Lngv;

    if-eqz v4, :cond_9

    move-object v2, v1

    :goto_7
    if-eqz v3, :cond_a

    move-object v0, v1

    :goto_8
    invoke-direct {v5, v2, v0}, Lngv;-><init>(Lnfu;Lnfu;)V

    invoke-direct {p0, v5}, Lngz;->a(Lngs;)V

    new-instance v5, Lngw;

    if-eqz v4, :cond_b

    move-object v2, v1

    :goto_9
    if-eqz v3, :cond_c

    move-object v0, v1

    :goto_a
    invoke-direct {v5, v2, v0}, Lngw;-><init>(Lnfu;Lnfu;)V

    invoke-direct {p0, v5}, Lngz;->a(Lngs;)V

    new-instance v5, Lngx;

    if-eqz v4, :cond_d

    move-object v2, v1

    :goto_b
    if-eqz v3, :cond_e

    move-object v0, v1

    :goto_c
    invoke-direct {v5, v2, v0}, Lngx;-><init>(Lnfu;Lnfu;)V

    invoke-direct {p0, v5}, Lngz;->a(Lngs;)V

    new-instance v2, Lngy;

    if-eqz v4, :cond_f

    move-object v0, v1

    :goto_d
    if-eqz v3, :cond_10

    :goto_e
    invoke-direct {v2, v0, v1}, Lngy;-><init>(Lnfu;Lnfu;)V

    invoke-direct {p0, v2}, Lngz;->a(Lngs;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lngm;->a()Lnfu;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lngm;->a()Lnfu;

    move-result-object v0

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lngm;->b()Lnfu;

    move-result-object v0

    move-object v2, v0

    goto :goto_5

    :cond_8
    invoke-virtual {p2}, Lngm;->b()Lnfu;

    move-result-object v0

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Lngm;->j()Lnfu;

    move-result-object v0

    move-object v2, v0

    goto :goto_7

    :cond_a
    invoke-virtual {p2}, Lngm;->j()Lnfu;

    move-result-object v0

    goto :goto_8

    :cond_b
    invoke-virtual {p1}, Lngm;->g()Lnfu;

    move-result-object v0

    move-object v2, v0

    goto :goto_9

    :cond_c
    invoke-virtual {p2}, Lngm;->g()Lnfu;

    move-result-object v0

    goto :goto_a

    :cond_d
    invoke-virtual {p1}, Lngm;->h()Lnfu;

    move-result-object v0

    move-object v2, v0

    goto :goto_b

    :cond_e
    invoke-virtual {p2}, Lngm;->h()Lnfu;

    move-result-object v0

    goto :goto_c

    :cond_f
    invoke-virtual {p1}, Lngm;->i()Lnfu;

    move-result-object v0

    goto :goto_d

    :cond_10
    invoke-virtual {p2}, Lngm;->i()Lnfu;

    move-result-object v1

    goto :goto_e
.end method

.method private a(Lngs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lngs",
            "<**>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lngs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lngz;->e:Lnhp;

    invoke-interface {v0, p1}, Lnhp;->a(Lnib;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lngz;Lngm;Lngm;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lngz;->a(Lngm;Lngm;)V

    return-void
.end method

.method static synthetic b(Lngz;)Lnhc;
    .locals 1

    iget-object v0, p0, Lngz;->d:Lnhc;

    return-object v0
.end method

.method static synthetic c(Lngz;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    iget-object v0, p0, Lngz;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic d(Lngz;)Lngm;
    .locals 1

    iget-object v0, p0, Lngz;->g:Lngm;

    return-object v0
.end method


# virtual methods
.method public a(Lnil;)V
    .locals 8

    const-wide/16 v6, 0x2710

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lngz;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lngz;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    iget-object v0, p0, Lngz;->a:Ljava/lang/String;

    invoke-static {v0}, Lnii;->b(Ljava/lang/String;)Lnii;

    move-result-object v0

    invoke-virtual {v0}, Lnii;->a()Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lngz;->e:Lnhp;

    const-wide/16 v0, 0x0

    invoke-interface {v3, v2, v0, v1}, Lnhp;->a(Ljava/lang/Runnable;J)V

    :cond_2
    iget-object v2, p0, Lngz;->a:Ljava/lang/String;

    invoke-static {v2}, Lnii;->b(Ljava/lang/String;)Lnii;

    move-result-object v2

    iget-object v3, p0, Lngz;->f:Lnik;

    invoke-virtual {v2, v3}, Lnii;->a(Lnik;)Lnii;

    move-result-object v2

    invoke-virtual {v2}, Lnii;->a()Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lngz;->e:Lnhp;

    add-long/2addr v0, v6

    invoke-interface {v3, v2, v0, v1}, Lnhp;->a(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lngz;->d:Lnhc;

    invoke-virtual {v0}, Lnhc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lngz;->d:Lnhc;

    sget v1, Lnkf;->visitor_profile_retriever_fetching:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lngz;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lnhc;->a(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
