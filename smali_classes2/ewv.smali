.class public final Lewv;
.super Leww;
.source "SourceFile"


# instance fields
.field private final a:[Lexd;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lepy;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Leww;-><init>()V

    .line 44
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 46
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    if-eqz v0, :cond_2

    .line 48
    sget-object v2, Lepu;->EAN_13:Lepu;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 49
    new-instance v2, Lewn;

    invoke-direct {v2}, Lewn;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    :goto_1
    sget-object v2, Lepu;->EAN_8:Lepu;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    new-instance v2, Lewp;

    invoke-direct {v2}, Lewp;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    sget-object v2, Lepu;->UPC_E:Lepu;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Lexf;

    invoke-direct {v0}, Lexf;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    new-instance v0, Lewn;

    invoke-direct {v0}, Lewn;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Lewp;

    invoke-direct {v0}, Lewp;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Lexf;

    invoke-direct {v0}, Lexf;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lexd;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexd;

    iput-object v0, p0, Lewv;->a:[Lexd;

    .line 67
    return-void

    .line 44
    :cond_4
    sget-object v0, Lepy;->POSSIBLE_FORMATS:Lepy;

    .line 45
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_0

    .line 50
    :cond_5
    sget-object v2, Lepu;->UPC_A:Lepu;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    new-instance v2, Lewy;

    invoke-direct {v2}, Lewy;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public a(ILets;Ljava/util/Map;)Leqm;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lets;",
            "Ljava/util/Map",
            "<",
            "Lepy;",
            "*>;)",
            "Leqm;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-static {p2}, Lexd;->a(Lets;)[I

    move-result-object v1

    .line 75
    iget-object v4, p0, Lewv;->a:[Lexd;

    array-length v5, v4

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_5

    aget-object v6, v4, v0

    .line 78
    :try_start_0
    invoke-virtual {v6, p1, p2, v1, p3}, Lexd;->a(ILets;[ILjava/util/Map;)Leqm;
    :try_end_0
    .catch Leql; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Leqm;->d()Lepu;

    move-result-object v0

    sget-object v4, Lepu;->EAN_13:Lepu;

    if-ne v0, v4, :cond_1

    .line 96
    invoke-virtual {v1}, Leqm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-ne v0, v4, :cond_1

    move v4, v3

    .line 98
    :goto_1
    if-nez p3, :cond_2

    const/4 v0, 0x0

    .line 100
    :goto_2
    if-eqz v0, :cond_0

    sget-object v5, Lepu;->UPC_A:Lepu;

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v3

    .line 102
    :goto_3
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 104
    new-instance v0, Leqm;

    invoke-virtual {v1}, Leqm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v1}, Leqm;->b()[B

    move-result-object v3

    .line 106
    invoke-virtual {v1}, Leqm;->c()[Leqo;

    move-result-object v4

    sget-object v5, Lepu;->UPC_A:Lepu;

    invoke-direct {v0, v2, v3, v4, v5}, Leqm;-><init>(Ljava/lang/String;[B[Leqo;Lepu;)V

    .line 108
    invoke-virtual {v1}, Leqm;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Leqm;->a(Ljava/util/Map;)V

    .line 111
    :goto_4
    return-object v0

    :cond_1
    move v4, v2

    .line 96
    goto :goto_1

    .line 98
    :cond_2
    sget-object v0, Lepy;->POSSIBLE_FORMATS:Lepy;

    .line 99
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_2

    :cond_3
    move v0, v2

    .line 100
    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 111
    goto :goto_4

    .line 79
    :catch_0
    move-exception v6

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_5
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 119
    iget-object v1, p0, Lewv;->a:[Lexd;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 120
    invoke-interface {v3}, Leqk;->a()V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method
