.class public Lcom/santander/app/components/view/RoundedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "RoundedImageView"

.field public static final b:F = 0.0f

.field public static final c:F = 0.0f

.field public static final d:Landroid/graphics/Shader$TileMode;

.field static final synthetic e:Z

.field private static final f:I = -0x2

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private final k:[F

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/content/res/ColorStateList;

.field private n:F

.field private o:Landroid/graphics/ColorFilter;

.field private p:Z

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Landroid/widget/ImageView$ScaleType;

.field private w:Landroid/graphics/Shader$TileMode;

.field private x:Landroid/graphics/Shader$TileMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    const-class v0, Lcom/santander/app/components/view/RoundedImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/santander/app/components/view/RoundedImageView;->e:Z

    .line 51
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/santander/app/components/view/RoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/santander/app/components/view/RoundedImageView;->j:[Landroid/widget/ImageView$ScaleType;

    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    .line 67
    const/high16 v0, -0x1000000

    .line 68
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/components/view/RoundedImageView;->n:F

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->o:Landroid/graphics/ColorFilter;

    .line 71
    iput-boolean v1, p0, Lcom/santander/app/components/view/RoundedImageView;->p:Z

    .line 73
    iput-boolean v1, p0, Lcom/santander/app/components/view/RoundedImageView;->r:Z

    .line 74
    iput-boolean v1, p0, Lcom/santander/app/components/view/RoundedImageView;->s:Z

    .line 75
    iput-boolean v1, p0, Lcom/santander/app/components/view/RoundedImageView;->t:Z

    .line 77
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 78
    sget-object v0, Lcom/santander/app/components/view/RoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    .line 79
    sget-object v0, Lcom/santander/app/components/view/RoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    .line 83
    return-void

    .line 63
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/santander/app/components/view/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v10, -0x2

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    .line 67
    const/high16 v0, -0x1000000

    .line 68
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 69
    iput v2, p0, Lcom/santander/app/components/view/RoundedImageView;->n:F

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->o:Landroid/graphics/ColorFilter;

    .line 71
    iput-boolean v4, p0, Lcom/santander/app/components/view/RoundedImageView;->p:Z

    .line 73
    iput-boolean v4, p0, Lcom/santander/app/components/view/RoundedImageView;->r:Z

    .line 74
    iput-boolean v4, p0, Lcom/santander/app/components/view/RoundedImageView;->s:Z

    .line 75
    iput-boolean v4, p0, Lcom/santander/app/components/view/RoundedImageView;->t:Z

    .line 77
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 78
    sget-object v0, Lcom/santander/app/components/view/RoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    .line 79
    sget-object v0, Lcom/santander/app/components/view/RoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    .line 92
    sget-object v0, Lflv;->RoundedImageView:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 94
    invoke-virtual {v6, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 95
    if-ltz v0, :cond_0

    .line 96
    sget-object v3, Lcom/santander/app/components/view/RoundedImageView;->j:[Landroid/widget/ImageView$ScaleType;

    aget-object v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    :goto_0
    invoke-virtual {v6, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v3, v0

    .line 105
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    const/4 v5, 0x2

    invoke-virtual {v6, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    aput v5, v0, v4

    .line 106
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    const/4 v5, 0x3

    invoke-virtual {v6, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    aput v5, v0, v1

    .line 107
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    const/4 v5, 0x2

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    aput v7, v0, v5

    .line 108
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    const/4 v5, 0x3

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    aput v7, v0, v5

    .line 111
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    array-length v7, v0

    move v5, v4

    move v0, v4

    :goto_1
    if-ge v5, v7, :cond_2

    .line 112
    iget-object v8, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aget v8, v8, v5

    cmpg-float v8, v8, v2

    if-gez v8, :cond_1

    .line 113
    iget-object v8, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aput v2, v8, v5

    .line 111
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 99
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 115
    goto :goto_2

    .line 119
    :cond_2
    if-nez v0, :cond_3

    .line 120
    cmpg-float v0, v3, v2

    if-gez v0, :cond_9

    move v0, v2

    .line 123
    :goto_3
    iget-object v3, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    array-length v5, v3

    move v3, v4

    :goto_4
    if-ge v3, v5, :cond_3

    .line 124
    iget-object v7, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aput v0, v7, v3

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 128
    :cond_3
    const/4 v0, 0x6

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/santander/app/components/view/RoundedImageView;->n:F

    .line 129
    iget v0, p0, Lcom/santander/app/components/view/RoundedImageView;->n:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 130
    iput v2, p0, Lcom/santander/app/components/view/RoundedImageView;->n:F

    .line 133
    :cond_4
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 134
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_5

    .line 135
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 138
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/components/view/RoundedImageView;->t:Z

    .line 139
    const/16 v0, 0x9

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/components/view/RoundedImageView;->s:Z

    .line 141
    const/16 v0, 0xa

    invoke-virtual {v6, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 142
    if-eq v0, v10, :cond_6

    .line 143
    invoke-static {v0}, Lcom/santander/app/components/view/RoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/santander/app/components/view/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 144
    invoke-static {v0}, Lcom/santander/app/components/view/RoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 147
    :cond_6
    const/16 v0, 0xb

    .line 148
    invoke-virtual {v6, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 149
    if-eq v0, v10, :cond_7

    .line 150
    invoke-static {v0}, Lcom/santander/app/components/view/RoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 153
    :cond_7
    const/16 v0, 0xc

    .line 154
    invoke-virtual {v6, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 155
    if-eq v0, v10, :cond_8

    .line 156
    invoke-static {v0}, Lcom/santander/app/components/view/RoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 159
    :cond_8
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->k()V

    .line 160
    invoke-direct {p0, v1}, Lcom/santander/app/components/view/RoundedImageView;->b(Z)V

    .line 162
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    return-void

    :cond_9
    move v0, v3

    goto :goto_3

    .line 63
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 310
    if-nez p1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    instance-of v0, p1, Lgrp;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 313
    check-cast v0, Lgrp;

    iget-object v2, p0, Lcom/santander/app/components/view/RoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 314
    invoke-virtual {v0, v2}, Lgrp;->a(Landroid/widget/ImageView$ScaleType;)Lgrp;

    move-result-object v0

    iget v2, p0, Lcom/santander/app/components/view/RoundedImageView;->n:F

    .line 315
    invoke-virtual {v0, v2}, Lgrp;->b(F)Lgrp;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/components/view/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 316
    invoke-virtual {v0, v2}, Lgrp;->a(Landroid/content/res/ColorStateList;)Lgrp;

    move-result-object v0

    iget-boolean v2, p0, Lcom/santander/app/components/view/RoundedImageView;->s:Z

    .line 317
    invoke-virtual {v0, v2}, Lgrp;->a(Z)Lgrp;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/components/view/RoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    .line 318
    invoke-virtual {v0, v2}, Lgrp;->a(Landroid/graphics/Shader$TileMode;)Lgrp;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/components/view/RoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    .line 319
    invoke-virtual {v0, v2}, Lgrp;->b(Landroid/graphics/Shader$TileMode;)Lgrp;

    .line 321
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    if-eqz v0, :cond_2

    .line 322
    check-cast p1, Lgrp;

    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aget v0, v0, v1

    iget-object v1, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lgrp;->a(FFFF)Lgrp;

    .line 327
    :cond_2
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->l()V

    goto :goto_0

    .line 328
    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 330
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 331
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    .line 332
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/santander/app/components/view/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 166
    packed-switch p0, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 170
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 172
    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/santander/app/components/view/RoundedImageView;->t:Z

    if-eqz v0, :cond_1

    .line 277
    if-eqz p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lgrp;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 282
    :cond_1
    return-void
.end method

.method private j()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 250
    if-nez v1, :cond_0

    .line 263
    :goto_0
    return-object v0

    .line 254
    :cond_0
    iget v2, p0, Lcom/santander/app/components/view/RoundedImageView;->u:I

    if-eqz v2, :cond_1

    .line 256
    :try_start_0
    iget v2, p0, Lcom/santander/app/components/view/RoundedImageView;->u:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 263
    :cond_1
    :goto_1
    invoke-static {v0}, Lgrp;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    const-string v2, "RoundedImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/santander/app/components/view/RoundedImageView;->u:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    const/4 v1, 0x0

    iput v1, p0, Lcom/santander/app/components/view/RoundedImageView;->u:I

    goto :goto_1
.end method

.method private k()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 273
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/santander/app/components/view/RoundedImageView;->p:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 300
    iget-boolean v0, p0, Lcom/santander/app/components/view/RoundedImageView;->r:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/santander/app/components/view/RoundedImageView;->o:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->b()F

    move-result v0

    return v0
.end method

.method public a(I)F
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aget v0, v0, p1

    return v0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/santander/app/components/view/RoundedImageView;->t:Z

    if-ne v0, p1, :cond_0

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    iput-boolean p1, p0, Lcom/santander/app/components/view/RoundedImageView;->t:Z

    .line 532
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->b(Z)V

    .line 533
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public b()F
    .locals 5

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    iget-object v2, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 358
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return v1
.end method

.method public c()F
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/santander/app/components/view/RoundedImageView;->n:F

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 181
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->invalidate()V

    .line 182
    return-void
.end method

.method public e()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/santander/app/components/view/RoundedImageView;->s:Z

    return v0
.end method

.method public g()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public h()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/santander/app/components/view/RoundedImageView;->t:Z

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/santander/app/components/view/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    iput-object p1, p0, Lcom/santander/app/components/view/RoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    .line 341
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->b(Z)V

    .line 342
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .prologue
    .line 468
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    .line 469
    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    if-eqz p1, :cond_2

    .line 479
    :goto_1
    iput-object p1, p0, Lcom/santander/app/components/view/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 480
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->k()V

    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->b(Z)V

    .line 482
    iget v0, p0, Lcom/santander/app/components/view/RoundedImageView;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->invalidate()V

    goto :goto_0

    .line 478
    :cond_2
    const/high16 v0, -0x1000000

    .line 479
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1
.end method

.method public setBorderWidth(F)V
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/santander/app/components/view/RoundedImageView;->n:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 457
    :cond_0
    iput p1, p0, Lcom/santander/app/components/view/RoundedImageView;->n:F

    .line 458
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->k()V

    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->b(Z)V

    .line 460
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->setBorderWidth(F)V

    .line 452
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 285
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->o:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 286
    iput-object p1, p0, Lcom/santander/app/components/view/RoundedImageView;->o:Landroid/graphics/ColorFilter;

    .line 287
    iput-boolean v1, p0, Lcom/santander/app/components/view/RoundedImageView;->r:Z

    .line 288
    iput-boolean v1, p0, Lcom/santander/app/components/view/RoundedImageView;->p:Z

    .line 289
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->l()V

    .line 290
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->invalidate()V

    .line 292
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .prologue
    .line 399
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/santander/app/components/view/RoundedImageView;->setCornerRadius(FFFF)V

    .line 400
    return-void
.end method

.method public setCornerRadius(FFFF)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aget v0, v0, v1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aget v0, v0, v2

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aget v0, v0, v3

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aget v0, v0, v4

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aput p1, v0, v1

    .line 437
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aput p2, v0, v2

    .line 438
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aput p3, v0, v4

    .line 439
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aput p4, v0, v3

    .line 441
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->k()V

    .line 442
    invoke-direct {p0, v1}, Lcom/santander/app/components/view/RoundedImageView;->b(Z)V

    .line 443
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCornerRadius(IF)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aget v0, v0, p1

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->k:[F

    aput p2, v0, p1

    .line 414
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->k()V

    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->b(Z)V

    .line 416
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCornerRadiusDimen(I)V
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 380
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/santander/app/components/view/RoundedImageView;->setCornerRadius(FFFF)V

    .line 381
    return-void
.end method

.method public setCornerRadiusDimen(II)V
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/santander/app/components/view/RoundedImageView;->setCornerRadius(IF)V

    .line 391
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/components/view/RoundedImageView;->u:I

    .line 228
    invoke-static {p1}, Lgrp;->a(Landroid/graphics/Bitmap;)Lgrp;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 229
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->k()V

    .line 230
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/components/view/RoundedImageView;->u:I

    .line 220
    invoke-static {p1}, Lgrp;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 221
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->k()V

    .line 222
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/santander/app/components/view/RoundedImageView;->u:I

    if-eq v0, p1, :cond_0

    .line 236
    iput p1, p0, Lcom/santander/app/components/view/RoundedImageView;->u:I

    .line 237
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 238
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->k()V

    .line 239
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 245
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    return-void
.end method

.method public setOval(Z)V
    .locals 1

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/santander/app/components/view/RoundedImageView;->s:Z

    .line 493
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->k()V

    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->b(Z)V

    .line 495
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->invalidate()V

    .line 496
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .prologue
    .line 191
    sget-boolean v0, Lcom/santander/app/components/view/RoundedImageView;->e:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 194
    iput-object p1, p0, Lcom/santander/app/components/view/RoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 196
    sget-object v0, Lgrr;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 207
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 211
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->k()V

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->b(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->invalidate()V

    .line 215
    :cond_1
    return-void

    .line 204
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 505
    :cond_0
    iput-object p1, p0, Lcom/santander/app/components/view/RoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    .line 506
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->k()V

    .line 507
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->b(Z)V

    .line 508
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/santander/app/components/view/RoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    .line 522
    :goto_0
    return-void

    .line 518
    :cond_0
    iput-object p1, p0, Lcom/santander/app/components/view/RoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    .line 519
    invoke-direct {p0}, Lcom/santander/app/components/view/RoundedImageView;->k()V

    .line 520
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/RoundedImageView;->b(Z)V

    .line 521
    invoke-virtual {p0}, Lcom/santander/app/components/view/RoundedImageView;->invalidate()V

    goto :goto_0
.end method
