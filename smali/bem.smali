.class public Lbem;
.super Lbdy;
.source "SourceFile"


# instance fields
.field private final e:[C

.field private final f:Landroid/graphics/RectF;

.field private final g:Landroid/graphics/Matrix;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lbae;",
            "Ljava/util/List",
            "<",
            "Layf;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Lazp;

.field private final l:Lawu;

.field private final m:Lawr;

.field private n:Layy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Layy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Layy;
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

.field private q:Layy;
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


# direct methods
.method constructor <init>(Lawu;Lbee;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0, p1, p2}, Lbdy;-><init>(Lawu;Lbee;)V

    .line 31
    new-array v0, v1, [C

    iput-object v0, p0, Lbem;->e:[C

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbem;->f:Landroid/graphics/RectF;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lbem;->g:Landroid/graphics/Matrix;

    .line 34
    new-instance v0, Lben;

    invoke-direct {v0, p0, v1}, Lben;-><init>(Lbem;I)V

    iput-object v0, p0, Lbem;->h:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Lbeo;

    invoke-direct {v0, p0, v1}, Lbeo;-><init>(Lbem;I)V

    iput-object v0, p0, Lbem;->i:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbem;->j:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lbem;->l:Lawu;

    .line 52
    invoke-virtual {p2}, Lbee;->a()Lawr;

    move-result-object v0

    iput-object v0, p0, Lbem;->m:Lawr;

    .line 54
    invoke-virtual {p2}, Lbee;->s()Lbbm;

    move-result-object v0

    invoke-virtual {v0}, Lbbm;->d()Lazp;

    move-result-object v0

    iput-object v0, p0, Lbem;->k:Lazp;

    .line 55
    iget-object v0, p0, Lbem;->k:Lazp;

    invoke-virtual {v0, p0}, Lazp;->a(Layz;)V

    .line 56
    iget-object v0, p0, Lbem;->k:Lazp;

    invoke-virtual {p0, v0}, Lbem;->a(Layy;)V

    .line 58
    invoke-virtual {p2}, Lbee;->t()Lbbp;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    iget-object v1, v0, Lbbp;->a:Lbal;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, v0, Lbbp;->a:Lbal;

    invoke-virtual {v1}, Lbal;->a()Layy;

    move-result-object v1

    iput-object v1, p0, Lbem;->n:Layy;

    .line 61
    iget-object v1, p0, Lbem;->n:Layy;

    invoke-virtual {v1, p0}, Layy;->a(Layz;)V

    .line 62
    iget-object v1, p0, Lbem;->n:Layy;

    invoke-virtual {p0, v1}, Lbem;->a(Layy;)V

    .line 66
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lbbp;->b:Lbal;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, v0, Lbbp;->b:Lbal;

    invoke-virtual {v1}, Lbal;->a()Layy;

    move-result-object v1

    iput-object v1, p0, Lbem;->o:Layy;

    .line 68
    iget-object v1, p0, Lbem;->o:Layy;

    invoke-virtual {v1, p0}, Layy;->a(Layz;)V

    .line 69
    iget-object v1, p0, Lbem;->o:Layy;

    invoke-virtual {p0, v1}, Lbem;->a(Layy;)V

    .line 72
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lbbp;->c:Lbao;

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, v0, Lbbp;->c:Lbao;

    invoke-virtual {v1}, Lbao;->a()Layy;

    move-result-object v1

    iput-object v1, p0, Lbem;->p:Layy;

    .line 74
    iget-object v1, p0, Lbem;->p:Layy;

    invoke-virtual {v1, p0}, Layy;->a(Layz;)V

    .line 75
    iget-object v1, p0, Lbem;->p:Layy;

    invoke-virtual {p0, v1}, Lbem;->a(Layy;)V

    .line 78
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Lbbp;->d:Lbao;

    if-eqz v1, :cond_3

    .line 79
    iget-object v0, v0, Lbbp;->d:Lbao;

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lbem;->q:Layy;

    .line 80
    iget-object v0, p0, Lbem;->q:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 81
    iget-object v0, p0, Lbem;->q:Layy;

    invoke-virtual {p0, v0}, Lbem;->a(Layy;)V

    .line 83
    :cond_3
    return-void
.end method

.method private a(Lbae;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbae;",
            ")",
            "Ljava/util/List",
            "<",
            "Layf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lbem;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lbem;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 252
    :goto_0
    return-object v0

    .line 244
    :cond_0
    invoke-virtual {p1}, Lbae;->a()Ljava/util/List;

    move-result-object v3

    .line 245
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 248
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdj;

    .line 249
    new-instance v5, Layf;

    iget-object v6, p0, Lbem;->l:Lawu;

    invoke-direct {v5, v6, p0, v0}, Layf;-><init>(Lawu;Lbdy;Lbdj;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 251
    :cond_1
    iget-object v0, p0, Lbem;->j:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 252
    goto :goto_0
.end method

.method private a(CLazz;Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lbem;->e:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 221
    iget-boolean v0, p2, Lazz;->j:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lbem;->e:[C

    iget-object v1, p0, Lbem;->h:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lbem;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 223
    iget-object v0, p0, Lbem;->e:[C

    iget-object v1, p0, Lbem;->i:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lbem;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lbem;->e:[C

    iget-object v1, p0, Lbem;->i:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lbem;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 226
    iget-object v0, p0, Lbem;->e:[C

    iget-object v1, p0, Lbem;->h:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lbem;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 216
    :cond_2
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(Lazz;Landroid/graphics/Matrix;Lbac;Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 130
    iget v0, p1, Lazz;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v3, v0, v1

    .line 131
    invoke-static {p2}, Lbey;->a(Landroid/graphics/Matrix;)F

    move-result v7

    .line 132
    iget-object v8, p1, Lazz;->a:Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 136
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 137
    invoke-virtual {p3}, Lbac;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lbac;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbae;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 138
    iget-object v1, p0, Lbem;->m:Lawr;

    invoke-virtual {v1}, Lawr;->k()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbae;

    .line 139
    if-nez v1, :cond_0

    .line 135
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p4

    .line 143
    invoke-direct/range {v0 .. v5}, Lbem;->a(Lbae;Landroid/graphics/Matrix;FLazz;Landroid/graphics/Canvas;)V

    .line 144
    invoke-virtual {v1}, Lbae;->c()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Lbem;->m:Lawr;

    invoke-virtual {v1}, Lawr;->p()F

    move-result v1

    mul-float/2addr v0, v1

    mul-float v2, v0, v7

    .line 146
    iget v0, p1, Lazz;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float v1, v0, v1

    .line 147
    iget-object v0, p0, Lbem;->q:Layy;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lbem;->q:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    .line 150
    :goto_2
    mul-float/2addr v0, v7

    add-float/2addr v0, v2

    .line 151
    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 153
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private a(Lazz;Lbac;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-static {p3}, Lbey;->a(Landroid/graphics/Matrix;)F

    move-result v5

    .line 158
    iget-object v0, p0, Lbem;->l:Lawu;

    invoke-virtual {p2}, Lbac;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lbac;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lawu;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 159
    if-nez v2, :cond_1

    .line 184
    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p1, Lazz;->a:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lbem;->l:Lawu;

    invoke-virtual {v1}, Lawu;->p()Laxy;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_3

    .line 165
    invoke-virtual {v1, v0}, Laxy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 167
    :goto_0
    iget-object v0, p0, Lbem;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 168
    iget-object v0, p0, Lbem;->h:Landroid/graphics/Paint;

    iget v2, p1, Lazz;->c:I

    int-to-float v2, v2

    iget-object v4, p0, Lbem;->m:Lawr;

    invoke-virtual {v4}, Lawr;->p()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 169
    iget-object v0, p0, Lbem;->i:Landroid/graphics/Paint;

    iget-object v2, p0, Lbem;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 170
    iget-object v0, p0, Lbem;->i:Landroid/graphics/Paint;

    iget-object v2, p0, Lbem;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    move v2, v3

    .line 171
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 173
    invoke-direct {p0, v0, p1, p4}, Lbem;->a(CLazz;Landroid/graphics/Canvas;)V

    .line 174
    iget-object v4, p0, Lbem;->e:[C

    aput-char v0, v4, v3

    .line 175
    iget-object v0, p0, Lbem;->h:Landroid/graphics/Paint;

    iget-object v4, p0, Lbem;->e:[C

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v3, v6}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v6

    .line 177
    iget v0, p1, Lazz;->e:I

    int-to-float v0, v0

    const/high16 v4, 0x41200000    # 10.0f

    div-float v4, v0, v4

    .line 178
    iget-object v0, p0, Lbem;->q:Layy;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lbem;->q:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v4

    .line 181
    :goto_2
    mul-float/2addr v0, v5

    add-float/2addr v0, v6

    .line 182
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private a(Lbae;Landroid/graphics/Matrix;FLazz;Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-direct {p0, p1}, Lbem;->a(Lbae;)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 193
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 194
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layf;

    invoke-virtual {v0}, Layf;->e()Landroid/graphics/Path;

    move-result-object v0

    .line 195
    iget-object v4, p0, Lbem;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 196
    iget-object v4, p0, Lbem;->g:Landroid/graphics/Matrix;

    invoke-virtual {v4, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 197
    iget-object v4, p0, Lbem;->g:Landroid/graphics/Matrix;

    invoke-virtual {v4, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 198
    iget-object v4, p0, Lbem;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 199
    iget-boolean v4, p4, Lazz;->j:Z

    if-eqz v4, :cond_0

    .line 200
    iget-object v4, p0, Lbem;->h:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v4, p5}, Lbem;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 201
    iget-object v4, p0, Lbem;->i:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v4, p5}, Lbem;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 193
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v4, p0, Lbem;->i:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v4, p5}, Lbem;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 204
    iget-object v4, p0, Lbem;->h:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v4, p5}, Lbem;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 207
    :cond_1
    return-void
.end method

.method private a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 231
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 237
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p3

    move-object v1, p1

    move v5, v4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    iget-object v0, p0, Lbem;->l:Lawu;

    invoke-virtual {v0}, Lawu;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lbem;->k:Lazp;

    invoke-virtual {v0}, Lazp;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazz;

    .line 91
    iget-object v1, p0, Lbem;->m:Lawr;

    invoke-virtual {v1}, Lawr;->l()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lazz;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbac;

    .line 92
    if-nez v1, :cond_1

    .line 126
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v2, p0, Lbem;->n:Layy;

    if-eqz v2, :cond_2

    .line 98
    iget-object v3, p0, Lbem;->h:Landroid/graphics/Paint;

    iget-object v2, p0, Lbem;->n:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    :goto_1
    iget-object v2, p0, Lbem;->o:Layy;

    if-eqz v2, :cond_3

    .line 104
    iget-object v3, p0, Lbem;->i:Landroid/graphics/Paint;

    iget-object v2, p0, Lbem;->o:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    :goto_2
    iget-object v2, p0, Lbem;->d:Lazq;

    invoke-virtual {v2}, Lazq;->a()Layy;

    move-result-object v2

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    .line 109
    iget-object v3, p0, Lbem;->h:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    iget-object v3, p0, Lbem;->i:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    iget-object v2, p0, Lbem;->p:Layy;

    if-eqz v2, :cond_4

    .line 113
    iget-object v3, p0, Lbem;->i:Landroid/graphics/Paint;

    iget-object v2, p0, Lbem;->p:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    :goto_3
    iget-object v2, p0, Lbem;->l:Lawu;

    invoke-virtual {v2}, Lawu;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    invoke-direct {p0, v0, p2, v1, p1}, Lbem;->a(Lazz;Landroid/graphics/Matrix;Lbac;Landroid/graphics/Canvas;)V

    .line 125
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v2, p0, Lbem;->h:Landroid/graphics/Paint;

    iget v3, v0, Lazz;->g:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 106
    :cond_3
    iget-object v2, p0, Lbem;->i:Landroid/graphics/Paint;

    iget v3, v0, Lazz;->h:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 115
    :cond_4
    invoke-static {p2}, Lbey;->a(Landroid/graphics/Matrix;)F

    move-result v2

    .line 116
    iget-object v3, p0, Lbem;->i:Landroid/graphics/Paint;

    iget v4, v0, Lazz;->i:I

    int-to-float v4, v4

    iget-object v5, p0, Lbem;->m:Lawr;

    invoke-virtual {v5}, Lawr;->p()F

    move-result v5

    mul-float/2addr v4, v5

    mul-float/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 122
    :cond_5
    invoke-direct {p0, v0, v1, p2, p1}, Lbem;->a(Lazz;Lbac;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    goto :goto_4
.end method
