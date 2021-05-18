.class public Lazi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lawr;Lbbv;)Lazg;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lawr;",
            "Lbbv",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Lazg;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 32
    .line 33
    invoke-virtual {p1}, Lawr;->p()F

    move-result v0

    .line 32
    invoke-static {p0, p1, v0, p2}, Laya;->a(Lorg/json/JSONObject;Lawr;FLbbv;)Laxz;

    move-result-object v10

    .line 36
    const-string v0, "ti"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 37
    const-string v1, "to"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 38
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {p1}, Lawr;->p()F

    move-result v2

    invoke-static {v1, v2}, Lbes;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 40
    invoke-virtual {p1}, Lawr;->p()F

    move-result v2

    invoke-static {v0, v2}, Lbes;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v8, v0

    move-object v9, v1

    .line 43
    :goto_0
    new-instance v0, Lazg;

    iget-object v2, v10, Laxz;->a:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget-object v3, v10, Laxz;->b:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    iget-object v4, v10, Laxz;->c:Landroid/view/animation/Interpolator;

    iget v5, v10, Laxz;->d:F

    iget-object v6, v10, Laxz;->e:Ljava/lang/Float;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lazg;-><init>(Lawr;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lazh;)V

    .line 48
    iget-object v1, v10, Laxz;->b:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, v10, Laxz;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, v10, Laxz;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v10, Laxz;->b:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v10, Laxz;->b:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 49
    invoke-virtual {v1, v3, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 51
    :goto_1
    iget-object v2, v0, Lazg;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 52
    iget-object v1, v10, Laxz;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v10, Laxz;->b:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    invoke-static {v1, v2, v9, v8}, Lbey;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v1

    invoke-static {v0, v1}, Lazg;->a(Lazg;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 54
    :cond_0
    return-object v0

    .line 49
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move-object v8, v7

    move-object v9, v7

    goto :goto_0
.end method
