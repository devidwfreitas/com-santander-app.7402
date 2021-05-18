.class public Laya;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method private static a()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Laya;->a:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    sput-object v0, Laya;->a:Landroid/support/v4/util/SparseArrayCompat;

    .line 120
    :cond_0
    sget-object v0, Laya;->a:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lawr;FLbbv;)Laxz;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lawr;",
            "F",
            "Lbbv",
            "<TT;>;)",
            "Laxz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v10, -0x3d380000    # -100.0f

    const/4 v6, 0x0

    .line 128
    .line 130
    const/4 v5, 0x0

    .line 135
    const-string v0, "t"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    const-string v0, "t"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v7, v0

    .line 137
    const-string v0, "s"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_9

    .line 139
    invoke-interface {p3, v0, p2}, Lbbv;->b(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .line 142
    :goto_0
    const-string v0, "e"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_8

    .line 144
    invoke-interface {p3, v0, p2}, Lbbv;->b(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .line 147
    :goto_1
    const-string v0, "o"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 148
    const-string v1, "i"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 149
    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 150
    invoke-static {v0, p2}, Lbes;->a(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 151
    invoke-static {v4, p2}, Lbes;->a(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v4, v0

    move-object v5, v1

    .line 154
    :goto_2
    const-string v0, "h"

    invoke-virtual {p0, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_0

    move v0, v8

    .line 156
    :goto_3
    if-eqz v0, :cond_1

    .line 159
    invoke-static {}, Laxz;->d()Landroid/view/animation/Interpolator;

    move-result-object v0

    move-object v3, v2

    :goto_4
    move-object v4, v0

    move v5, v7

    .line 190
    :goto_5
    new-instance v0, Laxz;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Laxz;-><init>(Lawr;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-object v0

    :cond_0
    move v0, v9

    .line 154
    goto :goto_3

    .line 160
    :cond_1
    if-eqz v5, :cond_3

    .line 161
    iget v0, v5, Landroid/graphics/PointF;->x:F

    neg-float v1, p2

    invoke-static {v0, v1, p2}, Lbex;->b(FFF)F

    move-result v0

    iput v0, v5, Landroid/graphics/PointF;->x:F

    .line 162
    iget v0, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v10, v11}, Lbex;->b(FFF)F

    move-result v0

    iput v0, v5, Landroid/graphics/PointF;->y:F

    .line 163
    iget v0, v4, Landroid/graphics/PointF;->x:F

    neg-float v1, p2

    invoke-static {v0, v1, p2}, Lbex;->b(FFF)F

    move-result v0

    iput v0, v4, Landroid/graphics/PointF;->x:F

    .line 164
    iget v0, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v10, v11}, Lbex;->b(FFF)F

    move-result v0

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 165
    iget v0, v5, Landroid/graphics/PointF;->x:F

    iget v1, v5, Landroid/graphics/PointF;->y:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget v9, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v8, v9}, Lbey;->a(FFFF)I

    move-result v8

    .line 166
    invoke-static {}, Laya;->a()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 167
    if-eqz v0, :cond_6

    .line 168
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Interpolator;

    .line 170
    :goto_6
    if-eqz v0, :cond_2

    if-nez v1, :cond_5

    .line 171
    :cond_2
    iget v0, v5, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, p2

    iget v1, v5, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, p2

    iget v5, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, p2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, p2

    invoke-static {v0, v1, v5, v4}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 174
    :try_start_0
    invoke-static {}, Laya;->a()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v8, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 175
    :catch_0
    move-exception v1

    goto :goto_4

    .line 184
    :cond_3
    invoke-static {}, Laxz;->d()Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_4

    .line 187
    :cond_4
    invoke-interface {p3, p0, p2}, Lbbv;->b(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v6

    move-object v2, v3

    .line 188
    goto :goto_5

    :cond_5
    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v1, v6

    goto :goto_6

    :cond_7
    move-object v4, v6

    move-object v5, v6

    goto/16 :goto_2

    :cond_8
    move-object v3, v6

    goto/16 :goto_1

    :cond_9
    move-object v2, v6

    goto/16 :goto_0
.end method

.method public static a(Lorg/json/JSONArray;Lawr;FLbbv;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lawr;",
            "F",
            "Lbbv",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 197
    if-nez v2, :cond_0

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    .line 200
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 202
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Laya;->a(Lorg/json/JSONObject;Lawr;FLbbv;)Laxz;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_1
    invoke-static {v0}, Laxz;->a(Ljava/util/List;)V

    goto :goto_0
.end method
