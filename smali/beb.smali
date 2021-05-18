.class public Lbeb;
.super Lbdy;
.source "SourceFile"


# instance fields
.field private final e:Layy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbdy;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/graphics/RectF;

.field private final h:Landroid/graphics/Rect;

.field private final i:Landroid/graphics/RectF;

.field private j:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lawu;Lbee;Ljava/util/List;Lawr;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lawu;",
            "Lbee;",
            "Ljava/util/List",
            "<",
            "Lbee;",
            ">;",
            "Lawr;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Lbdy;-><init>(Lawu;Lbee;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbeb;->f:Ljava/util/List;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbeb;->g:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbeb;->h:Landroid/graphics/Rect;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbeb;->i:Landroid/graphics/RectF;

    .line 36
    invoke-virtual {p2}, Lbee;->u()Lbao;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lbeb;->e:Layy;

    .line 39
    iget-object v0, p0, Lbeb;->e:Layy;

    invoke-virtual {p0, v0}, Lbeb;->a(Layy;)V

    .line 40
    iget-object v0, p0, Lbeb;->e:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 45
    :goto_0
    new-instance v6, Landroid/support/v4/util/LongSparseArray;

    .line 46
    invoke-virtual {p4}, Lawr;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 49
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move-object v1, v2

    :goto_1
    if-ltz v5, :cond_3

    .line 50
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbee;

    .line 51
    invoke-static {v0, p1, p4}, Lbdy;->a(Lbee;Lawu;Lawr;)Lbdy;

    move-result-object v3

    .line 52
    if-nez v3, :cond_1

    move-object v0, v1

    .line 49
    :goto_2
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move-object v1, v0

    goto :goto_1

    .line 42
    :cond_0
    iput-object v2, p0, Lbeb;->e:Layy;

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v3}, Lbdy;->c()Lbee;

    move-result-object v7

    invoke-virtual {v7}, Lbee;->e()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 56
    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v1, v3}, Lbdy;->a(Lbdy;)V

    move-object v0, v2

    .line 58
    goto :goto_2

    .line 60
    :cond_2
    iget-object v7, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v7, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 61
    sget-object v7, Lbec;->a:[I

    invoke-virtual {v0}, Lbee;->l()Lbei;

    move-result-object v0

    invoke-virtual {v0}, Lbei;->ordinal()I

    move-result v0

    aget v0, v7, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_2

    :pswitch_0
    move-object v0, v3

    .line 64
    goto :goto_2

    :cond_3
    move v2, v4

    .line 70
    :goto_3
    invoke-virtual {v6}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 71
    invoke-virtual {v6, v2}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    .line 72
    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdy;

    .line 73
    invoke-virtual {v0}, Lbdy;->c()Lbee;

    move-result-object v1

    invoke-virtual {v1}, Lbee;->m()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbdy;

    .line 74
    if-eqz v1, :cond_4

    .line 75
    invoke-virtual {v0, v1}, Lbdy;->b(Lbdy;)V

    .line 70
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 78
    :cond_5
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 122
    invoke-super {p0, p1}, Lbdy;->a(F)V

    .line 123
    iget-object v0, p0, Lbeb;->e:Layy;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lbeb;->b:Lawu;

    invoke-virtual {v0}, Lawu;->s()Lawr;

    move-result-object v0

    invoke-virtual {v0}, Lawr;->d()J

    move-result-wide v2

    .line 125
    iget-object v0, p0, Lbeb;->e:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 126
    long-to-float v0, v0

    long-to-float v1, v2

    div-float p1, v0, v1

    .line 128
    :cond_0
    iget-object v0, p0, Lbeb;->c:Lbee;

    invoke-virtual {v0}, Lbee;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lbeb;->c:Lbee;

    invoke-virtual {v0}, Lbee;->b()F

    move-result v0

    div-float/2addr p1, v0

    .line 132
    :cond_1
    iget-object v0, p0, Lbeb;->c:Lbee;

    invoke-virtual {v0}, Lbee;->c()F

    move-result v0

    sub-float v2, p1, v0

    .line 133
    iget-object v0, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 134
    iget-object v0, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdy;

    invoke-virtual {v0, v2}, Lbdy;->a(F)V

    .line 133
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 136
    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-super {p0, p1, p2}, Lbdy;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 104
    iget-object v0, p0, Lbeb;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    iget-object v0, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 106
    iget-object v0, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdy;

    .line 107
    iget-object v2, p0, Lbeb;->g:Landroid/graphics/RectF;

    iget-object v3, p0, Lbeb;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Lbdy;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lbeb;->g:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 105
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lbeb;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 112
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lbeb;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 113
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lbeb;->g:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 114
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lbeb;->g:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 115
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 111
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 119
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 177
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 178
    iget-object v0, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdy;

    .line 179
    invoke-virtual {v0}, Lbdy;->c()Lbee;

    move-result-object v2

    invoke-virtual {v2}, Lbee;->f()Ljava/lang/String;

    move-result-object v2

    .line 180
    if-nez p1, :cond_1

    .line 181
    invoke-virtual {v0, v3, v3, p3}, Lbdy;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 177
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v0, p1, p2, p3}, Lbdy;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 186
    :cond_2
    return-void
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    const-string v0, "CompositionLayer#draw"

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lbeb;->h:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 83
    iget-object v0, p0, Lbeb;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lbeb;->c:Lbee;

    invoke-virtual {v1}, Lbee;->h()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lbeb;->c:Lbee;

    invoke-virtual {v2}, Lbee;->i()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    iget-object v0, p0, Lbeb;->i:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 86
    iget-object v0, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 87
    const/4 v0, 0x1

    .line 88
    iget-object v2, p0, Lbeb;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iget-object v0, p0, Lbeb;->i:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v0

    .line 91
    :cond_0
    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdy;

    .line 93
    invoke-virtual {v0, p1, p2, p3}, Lbdy;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 86
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lbeb;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Lbeb;->h:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 99
    :cond_3
    const-string v0, "CompositionLayer#draw"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    .line 100
    return-void
.end method

.method public f()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-object v0, p0, Lbeb;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 140
    iget-object v0, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    .line 141
    iget-object v0, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdy;

    .line 142
    instance-of v3, v0, Lbek;

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v0}, Lbdy;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbeb;->k:Ljava/lang/Boolean;

    move v0, v1

    .line 154
    :goto_1
    return v0

    .line 147
    :cond_0
    instance-of v3, v0, Lbeb;

    if-eqz v3, :cond_1

    check-cast v0, Lbeb;

    invoke-virtual {v0}, Lbeb;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbeb;->k:Ljava/lang/Boolean;

    move v0, v1

    .line 149
    goto :goto_1

    .line 140
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 152
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbeb;->k:Ljava/lang/Boolean;

    .line 154
    :cond_3
    iget-object v0, p0, Lbeb;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method

.method public g()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 158
    iget-object v0, p0, Lbeb;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 159
    invoke-virtual {p0}, Lbeb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbeb;->j:Ljava/lang/Boolean;

    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    .line 165
    iget-object v0, p0, Lbeb;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdy;

    invoke-virtual {v0}, Lbdy;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbeb;->j:Ljava/lang/Boolean;

    move v0, v1

    .line 167
    goto :goto_0

    .line 164
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 170
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbeb;->j:Ljava/lang/Boolean;

    .line 172
    :cond_3
    iget-object v0, p0, Lbeb;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
