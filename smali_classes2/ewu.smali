.class public final Lewu;
.super Leww;
.source "SourceFile"


# instance fields
.field private final a:[Leww;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
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
    .line 41
    invoke-direct {p0}, Leww;-><init>()V

    .line 43
    if-nez p1, :cond_a

    const/4 v0, 0x0

    move-object v1, v0

    .line 45
    :goto_0
    if-eqz p1, :cond_b

    sget-object v0, Lepy;->ASSUME_CODE_39_CHECK_DIGIT:Lepy;

    .line 46
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 47
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    if-eqz v1, :cond_8

    .line 49
    sget-object v3, Lepu;->EAN_13:Lepu;

    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lepu;->UPC_A:Lepu;

    .line 50
    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lepu;->EAN_8:Lepu;

    .line 51
    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lepu;->UPC_E:Lepu;

    .line 52
    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    :cond_0
    new-instance v3, Lewv;

    invoke-direct {v3, p1}, Lewv;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    sget-object v3, Lepu;->CODE_39:Lepu;

    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    new-instance v3, Lewk;

    invoke-direct {v3, v0}, Lewk;-><init>(Z)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    sget-object v0, Lepu;->CODE_93:Lepu;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    new-instance v0, Lewm;

    invoke-direct {v0}, Lewm;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_3
    sget-object v0, Lepu;->CODE_128:Lepu;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    new-instance v0, Lewi;

    invoke-direct {v0}, Lewi;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_4
    sget-object v0, Lepu;->ITF:Lepu;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    new-instance v0, Lews;

    invoke-direct {v0}, Lews;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_5
    sget-object v0, Lepu;->CODABAR:Lepu;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    new-instance v0, Lewg;

    invoke-direct {v0}, Lewg;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_6
    sget-object v0, Lepu;->RSS_14:Lepu;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    new-instance v0, Lexk;

    invoke-direct {v0}, Lexk;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_7
    sget-object v0, Lepu;->RSS_EXPANDED:Lepu;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    new-instance v0, Lexp;

    invoke-direct {v0}, Lexp;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_8
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    new-instance v0, Lewv;

    invoke-direct {v0, p1}, Lewv;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lewk;

    invoke-direct {v0}, Lewk;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lewg;

    invoke-direct {v0}, Lewg;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Lewm;

    invoke-direct {v0}, Lewm;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lewi;

    invoke-direct {v0}, Lewi;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Lews;

    invoke-direct {v0}, Lews;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Lexk;

    invoke-direct {v0}, Lexk;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lexp;

    invoke-direct {v0}, Lexp;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_9
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Leww;

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leww;

    iput-object v0, p0, Lewu;->a:[Leww;

    .line 88
    return-void

    .line 43
    :cond_a
    sget-object v0, Lepy;->POSSIBLE_FORMATS:Lepy;

    .line 44
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    goto/16 :goto_0

    .line 46
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public a(ILets;Ljava/util/Map;)Leqm;
    .locals 4
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
    .line 94
    iget-object v1, p0, Lewu;->a:[Leww;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 96
    :try_start_0
    invoke-virtual {v3, p1, p2, p3}, Leww;->a(ILets;Ljava/util/Map;)Leqm;
    :try_end_0
    .catch Leql; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 97
    :catch_0
    move-exception v3

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Lewu;->a:[Leww;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 108
    invoke-interface {v3}, Leqk;->a()V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method
