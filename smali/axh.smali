.class public Laxh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Laxj;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbew;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxh;->a:Z

    .line 24
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Laxh;->b:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laxh;->c:Ljava/util/Map;

    .line 26
    new-instance v0, Laxi;

    invoke-direct {v0, p0}, Laxi;-><init>(Laxh;)V

    iput-object v0, p0, Laxh;->d:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Laxh;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 72
    return-void
.end method

.method public a(Laxj;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laxh;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public a(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 45
    iget-boolean v0, p0, Laxh;->a:Z

    if-nez v0, :cond_1

    .line 60
    :cond_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Laxh;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbew;

    .line 49
    if-nez v0, :cond_2

    .line 50
    new-instance v0, Lbew;

    invoke-direct {v0}, Lbew;-><init>()V

    .line 51
    iget-object v1, p0, Laxh;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_2
    invoke-virtual {v0, p2}, Lbew;->a(F)V

    .line 55
    const-string v0, "root"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Laxh;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxj;

    .line 57
    invoke-interface {v0, p2}, Laxj;->a(F)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Laxh;->a:Z

    .line 42
    return-void
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-boolean v0, p0, Laxh;->a:Z

    if-nez v0, :cond_1

    .line 84
    :cond_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Laxh;->c()Ljava/util/List;

    move-result-object v3

    .line 79
    const-string v0, "LOTTIE"

    const-string v1, "Render times:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 80
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 81
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 82
    const-string v4, "LOTTIE"

    const-string v5, "\t\t%30s:%.2f"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    aput-object v7, v6, v2

    const/4 v7, 0x1

    iget-object v0, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Laxj;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Laxh;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-boolean v0, p0, Laxh;->a:Z

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 90
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Laxh;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    iget-object v0, p0, Laxh;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    new-instance v3, Landroid/support/v4/util/Pair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbew;

    invoke-virtual {v0}, Lbew;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_1
    iget-object v0, p0, Laxh;->d:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    .line 95
    goto :goto_0
.end method
