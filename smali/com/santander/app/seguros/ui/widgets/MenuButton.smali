.class public Lcom/santander/app/seguros/ui/widgets/MenuButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/text/TextPaint;

.field private c:Landroid/text/TextPaint;

.field private d:Ljava/lang/Float;

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Paint;

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Bitmap;

.field private o:Z

.field private final p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v0, "fonts/OpenSans-Light.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->p:Ljava/lang/String;

    .line 48
    const-string v0, "fonts/OpenSans-Light.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->q:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->a()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-string v0, "fonts/OpenSans-Light.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->p:Ljava/lang/String;

    .line 48
    const-string v0, "fonts/OpenSans-Light.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->q:Ljava/lang/String;

    .line 58
    sget-object v0, Lflv;->MenuButton:[I

    invoke-virtual {p1, p2, v0, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->e:Ljava/lang/String;

    .line 60
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->d:Ljava/lang/Float;

    .line 61
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->f:Landroid/graphics/Bitmap;

    .line 65
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->g:Landroid/graphics/Bitmap;

    .line 69
    :cond_1
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 71
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0078

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->m:I

    .line 72
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3, v2}, Lmhj;->b(Landroid/content/Context;F)F

    move-result v2

    iput v2, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->i:F

    .line 73
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Lmhj;->b(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->j:F

    .line 74
    const/4 v0, 0x7

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->o:Z

    .line 75
    const/16 v0, 0x8

    const v2, -0x333334

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->l:I

    .line 77
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->a()V

    .line 80
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 86
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    .line 87
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00b9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 90
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 91
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->i:F

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->k:F

    .line 96
    :goto_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->h:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->a:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x18

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x18

    invoke-virtual {p0, v0, v1, v2}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->n:Landroid/graphics/Bitmap;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    const-string v0, "fonts/OpenSans-Light.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->q:Ljava/lang/String;

    .line 112
    :cond_2
    return-void

    .line 87
    :cond_3
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->m:I

    goto :goto_0

    .line 93
    :cond_4
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->i:F

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->k:F

    goto :goto_1
.end method

.method private b()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 155
    .line 158
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->e:Ljava/lang/String;

    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 159
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->k:F

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float v7, v0, v2

    move v0, v1

    .line 161
    :cond_0
    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_7

    .line 162
    aget-object v2, v5, v0

    .line 163
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    invoke-virtual {p0, v2, v3}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->a(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_3

    .line 164
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 165
    const-string v3, ""

    .line 166
    const-string v2, ""

    move v4, v1

    .line 167
    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_2

    .line 168
    iget-object v9, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    invoke-virtual {p0, v3, v9}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->a(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v7

    if-gez v9, :cond_1

    .line 169
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v9, v8, v4

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v9, v8, v4

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 175
    :cond_2
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 178
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    add-int/lit8 v0, v0, -0x1

    .line 180
    aput-object v2, v5, v0

    goto :goto_0

    :cond_3
    move-object v10, v2

    move v2, v0

    move-object v0, v10

    .line 185
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v3, v5

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v5, v3

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    invoke-virtual {p0, v3, v4}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->a(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_6

    array-length v3, v5

    if-ge v2, v3, :cond_6

    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v0, v5

    if-ge v2, v0, :cond_5

    aget-object v0, v5, v2

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 185
    :cond_4
    const-string v3, ""

    goto :goto_4

    .line 187
    :cond_5
    const-string v0, ""

    goto :goto_5

    .line 189
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 190
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto/16 :goto_0

    .line 193
    :cond_7
    return-object v6
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 222
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 223
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 206
    int-to-float v0, p2

    int-to-float v2, v3

    div-float/2addr v0, v2

    .line 207
    int-to-float v2, p3

    int-to-float v5, v4

    div-float/2addr v2, v5

    .line 209
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 211
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 214
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    return-object v0
.end method

.method public b(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 229
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 121
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->n:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->i:F

    mul-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 126
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b()Ljava/util/List;

    move-result-object v3

    .line 130
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 131
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getHeight()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    .line 143
    :goto_0
    const/4 v1, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 144
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->k:F

    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    invoke-virtual {p0, v0, v4}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    add-float/2addr v2, v0

    .line 143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getHeight()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b:Landroid/text/TextPaint;

    invoke-virtual {p0, v1, v2}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->b(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 149
    :cond_3
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->o:Z

    if-eqz v0, :cond_4

    .line 150
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 152
    :cond_4
    return-void
.end method

.method public setSelectedCustom(Z)V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->setSelected(Z)V

    .line 116
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->a()V

    .line 117
    return-void
.end method

.method public setTopText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/MenuButton;->e:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MenuButton;->invalidate()V

    .line 201
    return-void
.end method
