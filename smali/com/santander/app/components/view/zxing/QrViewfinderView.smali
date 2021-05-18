.class public Lcom/santander/app/components/view/zxing/QrViewfinderView;
.super Lcom/journeyapps/barcodescanner/ViewfinderView;
.source "SourceFile"


# static fields
.field protected static final s:Ljava/lang/String;

.field protected static final t:[I

.field protected static final u:J = 0x50L

.field protected static final v:I = 0xa0

.field protected static final w:I = 0x14

.field protected static final x:I = 0x6


# instance fields
.field protected final A:I

.field protected final B:I

.field protected final C:I

.field protected final D:I

.field protected E:I

.field protected F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leqo;",
            ">;"
        }
    .end annotation
.end field

.field protected G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leqo;",
            ">;"
        }
    .end annotation
.end field

.field protected H:Lcom/journeyapps/barcodescanner/CameraPreview;

.field protected I:Landroid/graphics/Rect;

.field protected J:Landroid/graphics/Rect;

.field protected final y:Landroid/graphics/Paint;

.field protected z:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/santander/app/components/view/zxing/QrViewfinderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->s:Ljava/lang/String;

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->t:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/QrViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/QrViewfinderView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lese;->zxing_finder:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 61
    const/4 v2, 0x3

    const v3, 0x7f0e01bf

    .line 62
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->A:I

    .line 63
    const v2, 0x7f0e01bb

    .line 64
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 63
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->B:I

    .line 65
    const/4 v2, 0x2

    const v3, 0x7f0e01be

    .line 66
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->C:I

    .line 67
    const v2, 0x7f0e01ba

    .line 68
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 67
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->D:I

    .line 70
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    iput v4, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->E:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->F:Ljava/util/List;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->G:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->H:Lcom/journeyapps/barcodescanner/CameraPreview;

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->H:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->g()Landroid/graphics/Rect;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->H:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->h()Landroid/graphics/Rect;

    move-result-object v1

    .line 109
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 110
    iput-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->I:Landroid/graphics/Rect;

    .line 111
    iput-object v1, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->J:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->z:Landroid/graphics/Bitmap;

    .line 204
    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/QrViewfinderView;->invalidate()V

    .line 205
    return-void
.end method

.method public a(Leqo;)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->F:Ljava/util/List;

    .line 214
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 216
    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 218
    const/4 v2, 0x0

    add-int/lit8 v1, v1, -0xa

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->z:Landroid/graphics/Bitmap;

    .line 190
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->z:Landroid/graphics/Bitmap;

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/QrViewfinderView;->invalidate()V

    .line 195
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0xa0

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/santander/app/components/view/zxing/QrViewfinderView;->a()V

    .line 119
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->I:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->J:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v8, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->I:Landroid/graphics/Rect;

    .line 124
    iget-object v9, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->J:Landroid/graphics/Rect;

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    .line 129
    iget-object v2, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->B:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    int-to-float v3, v10

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 131
    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 132
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    int-to-float v5, v10

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 133
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v10

    int-to-float v4, v11

    iget-object v5, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 137
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->z:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v13, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 129
    :cond_2
    iget v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->A:I

    goto :goto_1

    .line 141
    :cond_3
    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 142
    iget v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->C:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    sget-object v0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->t:[I

    iget v1, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->E:I

    aget v0, v0, v1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 144
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    iget v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->E:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/santander/app/components/view/zxing/QrViewfinderView;->t:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->E:I

    .line 147
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 149
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 150
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 152
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->F:Ljava/util/List;

    .line 153
    iget-object v3, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->G:Ljava/util/List;

    .line 154
    iget v4, v8, Landroid/graphics/Rect;->left:I

    .line 155
    iget v5, v8, Landroid/graphics/Rect;->top:I

    .line 156
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 157
    iput-object v13, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->G:Ljava/util/List;

    .line 169
    :cond_4
    if-eqz v3, :cond_6

    .line 170
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    const/16 v6, 0x50

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    iget-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    iget v6, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->D:I

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    const/high16 v6, 0x40400000    # 3.0f

    .line 173
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqo;

    .line 174
    invoke-virtual {v0}, Leqo;->a()F

    move-result v7

    mul-float/2addr v7, v1

    float-to-int v7, v7

    add-int/2addr v7, v4

    int-to-float v7, v7

    .line 175
    invoke-virtual {v0}, Leqo;->b()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v5

    int-to-float v0, v0

    iget-object v9, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    .line 174
    invoke-virtual {p1, v7, v0, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 159
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->F:Ljava/util/List;

    .line 160
    iput-object v0, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->G:Ljava/util/List;

    .line 161
    iget-object v6, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object v6, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    iget v7, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->D:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqo;

    .line 164
    invoke-virtual {v0}, Leqo;->a()F

    move-result v7

    mul-float/2addr v7, v1

    float-to-int v7, v7

    add-int/2addr v7, v4

    int-to-float v7, v7

    .line 165
    invoke-virtual {v0}, Leqo;->b()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v5

    int-to-float v0, v0

    const/high16 v9, 0x40c00000    # 6.0f

    iget-object v10, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->y:Landroid/graphics/Paint;

    .line 164
    invoke-virtual {p1, v7, v0, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 180
    :cond_6
    const-wide/16 v2, 0x50

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v0, -0x6

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v0, -0x6

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v0, 0x6

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v0, 0x6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/santander/app/components/view/zxing/QrViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method

.method public setCameraPreview(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, Lcom/santander/app/components/view/zxing/QrViewfinderView;->H:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 79
    new-instance v0, Lgur;

    invoke-direct {v0, p0}, Lgur;-><init>(Lcom/santander/app/components/view/zxing/QrViewfinderView;)V

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lfcz;)V

    .line 101
    return-void
.end method
