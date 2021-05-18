.class public final Lngm;
.super Lngp;


# instance fields
.field private volatile a:I

.field private final b:Lnfu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnfu",
            "<",
            "Lnfw;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lnfu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnfu",
            "<",
            "Lnfx;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lngl;

.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method private constructor <init>(JLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lngl;ZLjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Lnfw;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lnfx;",
            ">;",
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
            ">;",
            "Lngl;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lngp;-><init>(JLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    if-nez p9, :cond_0

    new-instance v2, Lngl;

    invoke-direct {v2}, Lngl;-><init>()V

    iput-object v2, p0, Lngm;->d:Lngl;

    :goto_0
    new-instance v2, Lnfu;

    invoke-direct {v2, p4}, Lnfu;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lngm;->c:Lnfu;

    new-instance v2, Lnfu;

    invoke-direct {v2, p3}, Lnfu;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lngm;->b:Lnfu;

    move/from16 v0, p10

    iput-boolean v0, p0, Lngm;->f:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lngm;->e:Ljava/lang/String;

    return-void

    :cond_0
    move-object/from16 v0, p9

    iput-object v0, p0, Lngm;->d:Lngl;

    goto :goto_0
.end method

.method synthetic constructor <init>(JLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lngl;ZLjava/lang/String;Lngn;)V
    .locals 1

    invoke-direct/range {p0 .. p11}, Lngm;-><init>(JLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lngl;ZLjava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lnfw;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnfw;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lnfw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lngm;
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lngo;

    invoke-direct {v1}, Lngo;-><init>()V

    const-string v2, "creation_ts"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lngo;->a(J)Lngo;

    move-result-object v1

    const-string v2, "audiences"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lngm;->a(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lngo;->a(Ljava/util/Collection;)Lngo;

    move-result-object v1

    const-string v2, "badges"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lngm;->b(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lngo;->b(Ljava/util/Collection;)Lngo;

    move-result-object v1

    const-string v2, "dates"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lngm;->f(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lngo;->c(Ljava/util/Collection;)Lngo;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lngm;->c(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lngo;->d(Ljava/util/Collection;)Lngo;

    move-result-object v1

    const-string v2, "metrics"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lngm;->d(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lngo;->e(Ljava/util/Collection;)Lngo;

    move-result-object v1

    const-string v2, "properties"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lngm;->e(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lngo;->f(Ljava/util/Collection;)Lngo;

    move-result-object v1

    const-string v2, "current_visit"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lngm;->g(Lorg/json/JSONObject;)Lngl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lngo;->a(Lngl;)Lngo;

    move-result-object v1

    const-string v2, "new_visitor"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lngo;->a(Z)Lngo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lngo;->a(Ljava/lang/String;)Lngo;

    move-result-object v0

    invoke-virtual {v0}, Lngo;->a()Lngm;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lnfx;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lnfx;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnfx;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lnga;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnga;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, v2, v4}, Lnga;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static d(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lngb;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lngb;

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-direct {v3, v2, v4, v5}, Lngb;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static e(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lngc;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lngc;

    const-string v4, ""

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lngc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static f(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lnfz;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnfz;

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v3, v2, v4, v5}, Lnfz;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static g(Lorg/json/JSONObject;)Lngl;
    .locals 12

    const-wide/16 v10, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v0, "dates"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    new-instance v1, Lngl;

    const-string v2, "creation_ts"

    invoke-virtual {p0, v2, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "dates"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lngm;->f(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v4

    const-string v5, "flags"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lngm;->c(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v5

    const-string v6, "metrics"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lngm;->d(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v6

    const-string v7, "properties"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lngm;->e(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v7

    const-string v8, "last_event_ts"

    invoke-virtual {v0, v8, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "total_event_count"

    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-direct/range {v1 .. v10}, Lngl;-><init>(JLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;JI)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lnfu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnfu",
            "<",
            "Lnfw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lngm;->b:Lnfu;

    return-object v0
.end method

.method public b()Lnfu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnfu",
            "<",
            "Lnfx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lngm;->c:Lnfu;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lngm;->f:Z

    return v0
.end method

.method public d()Lngl;
    .locals 1

    iget-object v0, p0, Lngm;->d:Lngl;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lngm;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lngp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lngm;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lngm;

    iget-object v1, p0, Lngm;->b:Lnfu;

    iget-object v2, p1, Lngm;->b:Lnfu;

    invoke-virtual {v1, v2}, Lnfu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lngm;->c:Lnfu;

    iget-object v2, p1, Lngm;->c:Lnfu;

    invoke-virtual {v1, v2}, Lnfu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lngm;->d:Lngl;

    invoke-virtual {p1}, Lngm;->d()Lngl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lngl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lngm;->f:Z

    iget-boolean v2, p1, Lngm;->f:Z

    if-ne v1, v2, :cond_0

    invoke-super {p0, p1}, Lngp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lngm;->a:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lngp;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lngm;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lngm;->b:Lnfu;

    invoke-virtual {v1}, Lnfu;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lngm;->c:Lnfu;

    invoke-virtual {v1}, Lnfu;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lngm;->d:Lngl;

    invoke-virtual {v1}, Lngl;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lngm;->a:I

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "    "

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile : {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "creation_ts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lngm;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_new_visitor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lngm;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "audiences : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lngm;->b:Lnfu;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Lnfu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "badges : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lngm;->c:Lnfu;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Lnfu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dates : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lngm;->j()Lnfu;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Lnfu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flags : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lngm;->g()Lnfu;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Lnfu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "metrics : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lngm;->h()Lnfu;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Lnfu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "properties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lngm;->i()Lnfu;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Lnfu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "current_visit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lngm;->d:Lngl;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Lngl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
