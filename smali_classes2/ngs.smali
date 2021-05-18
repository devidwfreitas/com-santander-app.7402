.class abstract Lngs;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L::Lnjg;",
        "A:",
        "Lnfy;",
        ">",
        "Lnib",
        "<T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lnfu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnfu",
            "<TA;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lnfu;Lnfu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<T",
            "L;",
            ">;",
            "Lnfu",
            "<TA;>;",
            "Lnfu",
            "<TA;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lngs;->a:Lnfu;

    invoke-direct {p0, p2, p3}, Lngs;->a(Lnfu;Lnfu;)V

    return-void
.end method

.method private a(Lnfu;Lnfu;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnfu",
            "<TA;>;",
            "Lnfu",
            "<TA;>;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p2}, Lnfu;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lngs;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p1}, Lnfu;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lngs;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lnfu;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnfy;

    invoke-virtual {v0}, Lnfy;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lnfu;->b(Ljava/lang/String;)Lnfy;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lngs;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lngs;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Lnfu;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnfy;

    invoke-virtual {p1, v0}, Lnfu;->b(Lnfy;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lngs;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lngs;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lngs;->b:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lngs;->b:Ljava/util/List;

    goto :goto_0
.end method

.method private h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lngs;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lngs;->c:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lngs;->c:Ljava/util/List;

    goto :goto_0
.end method

.method private i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lngs;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lngs;->d:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lngs;->d:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lngs;->b:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lngs;->d:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lngs;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Lnfu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnfu",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lngs;->a:Lnfu;

    return-object v0
.end method

.method protected final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lngs;->b:Ljava/util/List;

    return-object v0
.end method

.method protected final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lngs;->c:Ljava/util/List;

    return-object v0
.end method

.method protected final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lngs;->d:Ljava/util/List;

    return-object v0
.end method
