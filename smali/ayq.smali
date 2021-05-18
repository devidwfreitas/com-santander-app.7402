.class public Layq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layp;
.implements Layz;


# static fields
.field private static final a:F = 0.47829f

.field private static final b:F = 0.25f


# instance fields
.field private final c:Landroid/graphics/Path;

.field private final d:Ljava/lang/String;

.field private final e:Lawu;

.field private final f:Lbcx;

.field private final g:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Layy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Layy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private n:Layw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Z


# direct methods
.method public constructor <init>(Lawu;Lbdy;Lbcu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Layq;->c:Landroid/graphics/Path;

    .line 43
    iput-object p1, p0, Layq;->e:Lawu;

    .line 45
    invoke-virtual {p3}, Lbcu;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Layq;->d:Ljava/lang/String;

    .line 46
    invoke-virtual {p3}, Lbcu;->b()Lbcx;

    move-result-object v0

    iput-object v0, p0, Layq;->f:Lbcx;

    .line 47
    invoke-virtual {p3}, Lbcu;->c()Lbao;

    move-result-object v0

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layq;->g:Layy;

    .line 48
    invoke-virtual {p3}, Lbcu;->d()Lbbu;

    move-result-object v0

    invoke-interface {v0}, Lbbu;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layq;->h:Layy;

    .line 49
    invoke-virtual {p3}, Lbcu;->e()Lbao;

    move-result-object v0

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layq;->i:Layy;

    .line 50
    invoke-virtual {p3}, Lbcu;->g()Lbao;

    move-result-object v0

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layq;->k:Layy;

    .line 51
    invoke-virtual {p3}, Lbcu;->i()Lbao;

    move-result-object v0

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layq;->m:Layy;

    .line 52
    iget-object v0, p0, Layq;->f:Lbcx;

    sget-object v1, Lbcx;->Star:Lbcx;

    if-ne v0, v1, :cond_2

    .line 53
    invoke-virtual {p3}, Lbcu;->f()Lbao;

    move-result-object v0

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layq;->j:Layy;

    .line 54
    invoke-virtual {p3}, Lbcu;->h()Lbao;

    move-result-object v0

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layq;->l:Layy;

    .line 60
    :goto_0
    iget-object v0, p0, Layq;->g:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 61
    iget-object v0, p0, Layq;->h:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 62
    iget-object v0, p0, Layq;->i:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 63
    iget-object v0, p0, Layq;->k:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 64
    iget-object v0, p0, Layq;->m:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 65
    iget-object v0, p0, Layq;->f:Lbcx;

    sget-object v1, Lbcx;->Star:Lbcx;

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Layq;->j:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 67
    iget-object v0, p0, Layq;->l:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 70
    :cond_0
    iget-object v0, p0, Layq;->g:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 71
    iget-object v0, p0, Layq;->h:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 72
    iget-object v0, p0, Layq;->i:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 73
    iget-object v0, p0, Layq;->k:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 74
    iget-object v0, p0, Layq;->m:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 75
    iget-object v0, p0, Layq;->f:Lbcx;

    sget-object v1, Lbcx;->Star:Lbcx;

    if-ne v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Layq;->k:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 77
    iget-object v0, p0, Layq;->m:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 79
    :cond_1
    return-void

    .line 56
    :cond_2
    iput-object v2, p0, Layq;->j:Layy;

    .line 57
    iput-object v2, p0, Layq;->l:Layy;

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Layq;->o:Z

    .line 87
    iget-object v0, p0, Layq;->e:Lawu;

    invoke-virtual {v0}, Lawu;->invalidateSelf()V

    .line 88
    return-void
.end method

.method private d()V
    .locals 32

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->g:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->i:Layy;

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    .line 133
    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 135
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 137
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v6, v8

    div-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 v22, v0

    .line 138
    const/high16 v4, 0x40000000    # 2.0f

    div-float v15, v22, v4

    .line 139
    float-to-int v4, v8

    int-to-float v4, v4

    sub-float v23, v8, v4

    .line 140
    const/4 v4, 0x0

    cmpl-float v4, v23, v4

    if-eqz v4, :cond_10

    .line 141
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v23

    mul-float/2addr v4, v15

    float-to-double v4, v4

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 144
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->k:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->j:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 148
    const/4 v2, 0x0

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Layq;->l:Layy;

    if-eqz v3, :cond_f

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->l:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    move v9, v2

    .line 152
    :goto_2
    const/4 v13, 0x0

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->m:Layy;

    if-eqz v2, :cond_0

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->m:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v13, v2, v3

    .line 161
    :cond_0
    const/4 v2, 0x0

    .line 162
    const/4 v3, 0x0

    cmpl-float v3, v23, v3

    if-eqz v3, :cond_3

    .line 163
    sub-float v2, v11, v12

    mul-float v2, v2, v23

    add-float/2addr v2, v12

    .line 164
    float-to-double v6, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v6, v6, v16

    double-to-float v6, v6

    .line 165
    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 166
    move-object/from16 v0, p0

    iget-object v7, v0, Layq;->c:Landroid/graphics/Path;

    invoke-virtual {v7, v6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 167
    mul-float v7, v22, v23

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    float-to-double v0, v7

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    move v10, v2

    move v2, v3

    move v3, v6

    .line 176
    :goto_3
    const/4 v7, 0x0

    .line 177
    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v24, v16, v18

    .line 178
    const/4 v6, 0x0

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v2

    move/from16 v19, v3

    move-wide/from16 v20, v4

    :goto_4
    move/from16 v0, v16

    int-to-double v2, v0

    cmpg-double v2, v2, v24

    if-gez v2, :cond_c

    .line 179
    if-eqz v17, :cond_4

    move v2, v11

    .line 181
    :goto_5
    const/4 v3, 0x0

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_e

    move/from16 v0, v16

    int-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v6, v24, v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_e

    .line 182
    mul-float v3, v22, v23

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move v14, v3

    .line 184
    :goto_6
    const/4 v3, 0x0

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_1

    move/from16 v0, v16

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v24, v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_1

    move v2, v10

    .line 189
    :cond_1
    float-to-double v4, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v7, v4

    .line 190
    float-to-double v2, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v8, v2

    .line 192
    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-nez v2, :cond_5

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->c:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    :goto_7
    float-to-double v2, v14

    add-double v4, v20, v2

    .line 226
    if-nez v17, :cond_b

    const/4 v2, 0x1

    .line 178
    :goto_8
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    move/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v7

    move-wide/from16 v20, v4

    goto :goto_4

    .line 131
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->i:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    goto/16 :goto_0

    .line 169
    :cond_3
    float-to-double v6, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v6, v6, v16

    double-to-float v6, v6

    .line 170
    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 171
    move-object/from16 v0, p0

    iget-object v7, v0, Layq;->c:Landroid/graphics/Path;

    invoke-virtual {v7, v6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 172
    float-to-double v0, v15

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    move v10, v2

    move v2, v3

    move v3, v6

    goto/16 :goto_3

    :cond_4
    move v2, v12

    .line 179
    goto/16 :goto_5

    .line 195
    :cond_5
    move/from16 v0, v18

    float-to-double v2, v0

    move/from16 v0, v19

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v4

    double-to-float v2, v2

    .line 196
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v5, v4

    .line 197
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v26, v0

    .line 199
    float-to-double v2, v8

    float-to-double v0, v7

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v28, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v2, v2, v28

    double-to-float v2, v2

    .line 200
    float-to-double v0, v2

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    .line 201
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v28, v0

    .line 203
    if-eqz v17, :cond_6

    move v4, v9

    .line 204
    :goto_9
    if-eqz v17, :cond_7

    move v6, v13

    .line 205
    :goto_a
    if-eqz v17, :cond_8

    move v3, v12

    .line 206
    :goto_b
    if-eqz v17, :cond_9

    move v2, v11

    .line 208
    :goto_c
    mul-float v29, v3, v4

    const v30, 0x3ef4e26d    # 0.47829f

    mul-float v29, v29, v30

    mul-float v5, v5, v29

    .line 209
    mul-float/2addr v3, v4

    const v4, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v3, v4

    mul-float v4, v3, v26

    .line 210
    mul-float v3, v2, v6

    const v26, 0x3ef4e26d    # 0.47829f

    mul-float v3, v3, v26

    mul-float v3, v3, v27

    .line 211
    mul-float/2addr v2, v6

    const v6, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v2, v6

    mul-float v2, v2, v28

    .line 212
    const/4 v6, 0x0

    cmpl-float v6, v23, v6

    if-eqz v6, :cond_d

    .line 213
    if-nez v16, :cond_a

    .line 214
    mul-float v5, v5, v23

    .line 215
    mul-float v4, v4, v23

    move v6, v2

    move/from16 v31, v3

    move v3, v5

    move/from16 v5, v31

    .line 222
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->c:Landroid/graphics/Path;

    sub-float v3, v19, v3

    sub-float v4, v18, v4

    add-float/2addr v5, v7

    add-float/2addr v6, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_7

    :cond_6
    move v4, v13

    .line 203
    goto :goto_9

    :cond_7
    move v6, v9

    .line 204
    goto :goto_a

    :cond_8
    move v3, v11

    .line 205
    goto :goto_b

    :cond_9
    move v2, v12

    .line 206
    goto :goto_c

    .line 216
    :cond_a
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v28, v24, v28

    cmpl-double v6, v26, v28

    if-nez v6, :cond_d

    .line 217
    mul-float v3, v3, v23

    .line 218
    mul-float v2, v2, v23

    move v6, v2

    move/from16 v31, v3

    move v3, v5

    move/from16 v5, v31

    goto :goto_d

    .line 226
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 230
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->h:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Layq;->c:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->c:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 233
    return-void

    :cond_d
    move v6, v2

    move/from16 v31, v3

    move v3, v5

    move/from16 v5, v31

    goto :goto_d

    :cond_e
    move v14, v15

    goto/16 :goto_6

    :cond_f
    move v9, v2

    goto/16 :goto_2

    :cond_10
    move-wide v4, v2

    goto/16 :goto_1
.end method

.method private f()V
    .locals 22

    .prologue
    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->g:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v6, v2

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->i:Layy;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 239
    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 241
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 243
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v8, v6

    div-double/2addr v2, v8

    double-to-float v12, v2

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->m:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v13, v2, v3

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->k:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 251
    float-to-double v2, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v7, v2

    .line 252
    float-to-double v2, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v8, v2

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->c:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 254
    float-to-double v2, v12

    add-double/2addr v4, v2

    .line 256
    int-to-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    .line 257
    const/4 v2, 0x0

    move v9, v2

    move v3, v7

    move-wide v10, v4

    move v4, v8

    :goto_1
    int-to-double v6, v9

    cmpg-double v2, v6, v16

    if-gez v2, :cond_2

    .line 260
    float-to-double v6, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v6, v6, v18

    double-to-float v7, v6

    .line 261
    float-to-double v0, v14

    move-wide/from16 v18, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v8, v0

    .line 263
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-eqz v2, :cond_1

    .line 264
    float-to-double v0, v4

    move-wide/from16 v18, v0

    float-to-double v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 265
    float-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v5, v0

    .line 266
    float-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 268
    float-to-double v0, v8

    move-wide/from16 v18, v0

    float-to-double v0, v7

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 269
    float-to-double v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 270
    float-to-double v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 272
    mul-float v18, v14, v13

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v18, v18, v19

    mul-float v5, v5, v18

    .line 273
    mul-float v18, v14, v13

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v18, v18, v19

    mul-float v18, v18, v2

    .line 274
    mul-float v2, v14, v13

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v2, v2, v19

    mul-float/2addr v15, v2

    .line 275
    mul-float v2, v14, v13

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v2, v2, v19

    mul-float/2addr v6, v2

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->c:Landroid/graphics/Path;

    sub-float/2addr v3, v5

    sub-float v4, v4, v18

    add-float v5, v7, v15

    add-float/2addr v6, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 281
    :goto_2
    float-to-double v2, v12

    add-double v4, v10, v2

    .line 257
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v3, v7

    move-wide v10, v4

    move v4, v8

    goto/16 :goto_1

    .line 237
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->i:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    goto/16 :goto_0

    .line 278
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->c:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 284
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->h:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Layq;->c:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Layq;->c:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 287
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Layq;->c()V

    .line 83
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laye;",
            ">;",
            "Ljava/util/List",
            "<",
            "Laye;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 92
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 93
    instance-of v1, v0, Layw;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Layw;

    .line 94
    invoke-virtual {v1}, Layw;->c()Lbdw;

    move-result-object v1

    sget-object v3, Lbdw;->Simultaneously:Lbdw;

    if-ne v1, v3, :cond_0

    .line 95
    check-cast v0, Layw;

    iput-object v0, p0, Layq;->n:Layw;

    .line 96
    iget-object v0, p0, Layq;->n:Layw;

    invoke-virtual {v0, p0}, Layw;->a(Layz;)V

    .line 91
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Layq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Layq;->o:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Layq;->c:Landroid/graphics/Path;

    .line 122
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Layq;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 108
    sget-object v0, Layr;->a:[I

    iget-object v1, p0, Layq;->f:Lbcx;

    invoke-virtual {v1}, Lbcx;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_1
    iget-object v0, p0, Layq;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 119
    iget-object v0, p0, Layq;->c:Landroid/graphics/Path;

    iget-object v1, p0, Layq;->n:Layw;

    invoke-static {v0, v1}, Lbey;->a(Landroid/graphics/Path;Layw;)V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Layq;->o:Z

    .line 122
    iget-object v0, p0, Layq;->c:Landroid/graphics/Path;

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-direct {p0}, Layq;->d()V

    goto :goto_1

    .line 113
    :pswitch_1
    invoke-direct {p0}, Layq;->f()V

    goto :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
