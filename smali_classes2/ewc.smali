.class public final Lewc;
.super Lfal;
.source "SourceFile"


# static fields
.field private static final a:[Lety;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lety;

    sput-object v0, Lewc;->a:[Lety;

    return-void
.end method

.method public constructor <init>(Lett;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lfal;-><init>(Lett;)V

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)[Lety;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lepy;",
            "*>;)[",
            "Lety;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lewc;->a()Lett;

    move-result-object v1

    .line 49
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 51
    :goto_0
    new-instance v2, Lewd;

    invoke-direct {v2, v1, v0}, Lewd;-><init>(Lett;Leqp;)V

    .line 52
    invoke-virtual {v2, p1}, Lewd;->a(Ljava/util/Map;)[Lfar;

    move-result-object v1

    .line 54
    array-length v0, v1

    if-nez v0, :cond_1

    .line 55
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 49
    :cond_0
    sget-object v0, Lepy;->NEED_RESULT_POINT_CALLBACK:Lepy;

    .line 50
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqp;

    goto :goto_0

    .line 58
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 61
    :try_start_0
    invoke-virtual {p0, v4}, Lewc;->a(Lfar;)Lety;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Leql; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    sget-object v0, Lewc;->a:[Lety;

    .line 69
    :goto_3
    return-object v0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lety;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lety;

    goto :goto_3

    .line 62
    :catch_0
    move-exception v4

    goto :goto_2
.end method
