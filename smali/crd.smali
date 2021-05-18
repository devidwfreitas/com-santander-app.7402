.class public Lcrd;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcrd;->a:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrd;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcrd;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcrd;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrd;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcrd;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcrc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcrd;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcrd;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcrd;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/util/HashMap;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v0, p0, Lcrd;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcrd;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcrd;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcrd;->d:Ljava/util/HashMap;

    iget-object v3, p0, Lcrd;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static synthetic b(Lcrd;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcrd;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcrd;ILandroid/os/Bundle;Lcrc;)V

    return-object v0
.end method

.method public a(Landroid/content/ContentValues;)Lcrd;
    .locals 4

    invoke-static {p1}, Lcsz;->a(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcrd;->a(Ljava/util/HashMap;)Lcrd;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/HashMap;)Lcrd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcrd;"
        }
    .end annotation

    invoke-static {p1}, Lcsz;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcrd;->b(Ljava/util/HashMap;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcrd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrd;->e:Z

    return-object p0

    :cond_0
    iget-object v1, p0, Lcrd;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcrd;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method
