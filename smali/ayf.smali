.class public Layf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layg;
.implements Layp;
.implements Layz;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/RectF;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laye;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lawu;

.field private g:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Layp;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lazq;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lawu;Lbdy;Lbdj;)V
    .locals 6

    .prologue
    .line 57
    invoke-virtual {p3}, Lbdj;->a()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {p3}, Lbdj;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Layf;->a(Lawu;Lbdy;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 59
    invoke-virtual {p3}, Lbdj;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Layf;->a(Ljava/util/List;)Lbbr;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 57
    invoke-direct/range {v0 .. v5}, Layf;-><init>(Lawu;Lbdy;Ljava/lang/String;Ljava/util/List;Lbbr;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lawu;Lbdy;Ljava/lang/String;Ljava/util/List;Lbbr;)V
    .locals 4
    .param p5    # Lbbr;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lawu;",
            "Lbdy;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Laye;",
            ">;",
            "Lbbr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Layf;->a:Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Layf;->b:Landroid/graphics/Path;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Layf;->c:Landroid/graphics/RectF;

    .line 64
    iput-object p3, p0, Layf;->d:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Layf;->f:Lawu;

    .line 66
    iput-object p4, p0, Layf;->e:Ljava/util/List;

    .line 68
    if-eqz p5, :cond_0

    .line 69
    invoke-virtual {p5}, Lbbr;->h()Lazq;

    move-result-object v0

    iput-object v0, p0, Layf;->h:Lazq;

    .line 70
    iget-object v0, p0, Layf;->h:Lazq;

    invoke-virtual {v0, p2}, Lazq;->a(Lbdy;)V

    .line 71
    iget-object v0, p0, Layf;->h:Lazq;

    invoke-virtual {v0, p0}, Lazq;->a(Layz;)V

    .line 74
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 76
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 77
    instance-of v3, v0, Layl;

    if-eqz v3, :cond_1

    .line 78
    check-cast v0, Layl;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 83
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layl;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p4, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    invoke-interface {v0, v3}, Layl;->a(Ljava/util/ListIterator;)V

    .line 82
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 85
    :cond_3
    return-void
.end method

.method static a(Ljava/util/List;)Lbbr;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbcd;",
            ">;)",
            "Lbbr;"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 38
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcd;

    .line 39
    instance-of v2, v0, Lbbr;

    if-eqz v2, :cond_0

    .line 40
    check-cast v0, Lbbr;

    .line 43
    :goto_1
    return-object v0

    .line 37
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Lawu;Lbdy;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lawu;",
            "Lbdy;",
            "Ljava/util/List",
            "<",
            "Lbcd;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Laye;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 28
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcd;

    invoke-interface {v0, p0, p1}, Lbcd;->a(Lawu;Lbdy;)Laye;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 33
    :cond_1
    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Layf;->f:Lawu;

    invoke-virtual {v0}, Lawu;->invalidateSelf()V

    .line 89
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 3

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 160
    iget-object v0, p0, Layf;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 162
    iget-object v0, p0, Layf;->h:Lazq;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Layf;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Layf;->h:Lazq;

    invoke-virtual {v1}, Lazq;->d()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 164
    iget-object v0, p0, Layf;->h:Lazq;

    .line 165
    invoke-virtual {v0}, Lazq;->a()Layy;

    move-result-object v0

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float v1, p3

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    mul-float/2addr v0, v2

    float-to-int p3, v0

    .line 171
    :cond_0
    iget-object v0, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 172
    iget-object v0, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 173
    instance-of v2, v0, Layg;

    if-eqz v2, :cond_1

    .line 174
    check-cast v0, Layg;

    iget-object v2, p0, Layf;->a:Landroid/graphics/Matrix;

    invoke-interface {v0, p1, v2, p3}, Layg;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 171
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 177
    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Layf;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 181
    iget-object v0, p0, Layf;->h:Lazq;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Layf;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Layf;->h:Lazq;

    invoke-virtual {v1}, Lazq;->d()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 184
    :cond_0
    iget-object v0, p0, Layf;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 185
    iget-object v0, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 186
    iget-object v0, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 187
    instance-of v2, v0, Layg;

    if-eqz v2, :cond_1

    .line 188
    check-cast v0, Layg;

    iget-object v2, p0, Layf;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Layf;->a:Landroid/graphics/Matrix;

    invoke-interface {v0, v2, v3}, Layg;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Layf;->c:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 185
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Layf;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 193
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Layf;->c:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 194
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Layf;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 195
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Layf;->c:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 196
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 192
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 201
    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 3
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
    .line 97
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 98
    iget-object v0, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 99
    instance-of v1, v0, Layg;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 100
    check-cast v1, Layg;

    .line 101
    if-eqz p2, :cond_0

    invoke-interface {v0}, Laye;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, p1, v0, p3}, Layg;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 97
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 104
    :cond_2
    invoke-interface {v1, p1, p2, p3}, Layg;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 108
    :cond_3
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
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
    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v0, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 116
    iget-object v0, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 117
    iget-object v3, p0, Layf;->e:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Laye;->a(Ljava/util/List;Ljava/util/List;)V

    .line 118
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Layf;->d:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Layp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Layf;->g:Ljava/util/List;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layf;->g:Ljava/util/List;

    .line 125
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 126
    iget-object v0, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 127
    instance-of v2, v0, Layp;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Layf;->g:Ljava/util/List;

    check-cast v0, Layp;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Layf;->g:Ljava/util/List;

    return-object v0
.end method

.method d()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Layf;->h:Lazq;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Layf;->h:Lazq;

    invoke-virtual {v0}, Lazq;->d()Landroid/graphics/Matrix;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Layf;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 140
    iget-object v0, p0, Layf;->a:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public e()Landroid/graphics/Path;
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Layf;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 146
    iget-object v0, p0, Layf;->h:Lazq;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Layf;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Layf;->h:Lazq;

    invoke-virtual {v1}, Lazq;->d()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 149
    :cond_0
    iget-object v0, p0, Layf;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 150
    iget-object v0, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 151
    iget-object v0, p0, Layf;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 152
    instance-of v2, v0, Layp;

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Layf;->b:Landroid/graphics/Path;

    check-cast v0, Layp;

    invoke-interface {v0}, Layp;->e()Landroid/graphics/Path;

    move-result-object v0

    iget-object v3, p0, Layf;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 150
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Layf;->b:Landroid/graphics/Path;

    return-object v0
.end method
