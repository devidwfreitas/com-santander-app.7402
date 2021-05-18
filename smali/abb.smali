.class public final Labb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private final d:F

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/PopupWindow;

.field private g:Labm;

.field private h:Labo;

.field private i:Labn;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/ImageView;

.field private final l:Landroid/view/View$OnClickListener;

.field private final m:Landroid/view/View$OnLongClickListener;

.field private final n:Landroid/view/View$OnTouchListener;

.field private final o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final p:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final q:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method private constructor <init>(Labk;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Labe;

    invoke-direct {v0, p0}, Labe;-><init>(Labb;)V

    iput-object v0, p0, Labb;->l:Landroid/view/View$OnClickListener;

    .line 302
    new-instance v0, Labf;

    invoke-direct {v0, p0}, Labf;-><init>(Labb;)V

    iput-object v0, p0, Labb;->m:Landroid/view/View$OnLongClickListener;

    .line 309
    new-instance v0, Labg;

    invoke-direct {v0, p0}, Labg;-><init>(Labb;)V

    iput-object v0, p0, Labb;->n:Landroid/view/View$OnTouchListener;

    .line 320
    new-instance v0, Labh;

    invoke-direct {v0, p0}, Labh;-><init>(Labb;)V

    iput-object v0, p0, Labb;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 332
    new-instance v0, Labi;

    invoke-direct {v0, p0}, Labi;-><init>(Labb;)V

    iput-object v0, p0, Labb;->p:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 372
    new-instance v0, Labj;

    invoke-direct {v0, p0}, Labj;-><init>(Labb;)V

    iput-object v0, p0, Labb;->q:Landroid/view/View$OnAttachStateChangeListener;

    .line 84
    invoke-static {p1}, Labk;->a(Labk;)Z

    move-result v0

    iput-boolean v0, p0, Labb;->a:Z

    .line 85
    invoke-static {p1}, Labk;->b(Labk;)Z

    move-result v0

    iput-boolean v0, p0, Labb;->b:Z

    .line 87
    invoke-static {p1}, Labk;->c(Labk;)I

    move-result v0

    iput v0, p0, Labb;->c:I

    .line 88
    invoke-static {p1}, Labk;->d(Labk;)F

    move-result v0

    iput v0, p0, Labb;->d:F

    .line 89
    invoke-static {p1}, Labk;->e(Labk;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Labb;->e:Landroid/view/View;

    .line 90
    invoke-static {p1}, Labk;->f(Labk;)Labm;

    move-result-object v0

    iput-object v0, p0, Labb;->g:Labm;

    .line 91
    invoke-static {p1}, Labk;->g(Labk;)Labo;

    move-result-object v0

    iput-object v0, p0, Labb;->h:Labo;

    .line 92
    invoke-static {p1}, Labk;->h(Labk;)Labn;

    move-result-object v0

    iput-object v0, p0, Labb;->i:Labn;

    .line 94
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-static {p1}, Labk;->i(Labk;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Labb;->f:Landroid/widget/PopupWindow;

    .line 95
    iget-object v0, p0, Labb;->f:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Labb;->f:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 97
    iget-object v0, p0, Labb;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 98
    iget-object v0, p0, Labb;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 99
    iget-object v0, p0, Labb;->f:Landroid/widget/PopupWindow;

    invoke-direct {p0, p1}, Labb;->a(Labk;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Labb;->f:Landroid/widget/PopupWindow;

    invoke-static {p1}, Labk;->a(Labk;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 101
    iget-object v0, p0, Labb;->f:Landroid/widget/PopupWindow;

    new-instance v1, Labc;

    invoke-direct {v1, p0}, Labc;-><init>(Labb;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Labk;Labc;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Labb;-><init>(Labk;)V

    return-void
.end method

.method static synthetic a(Labb;)Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Labb;->q:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method private a(Labk;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x30

    const/16 v8, 0x11

    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v1, 0x0

    .line 114
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 115
    invoke-static {p1}, Labk;->j(Labk;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 116
    invoke-static {p1}, Labk;->k(Labk;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 118
    invoke-static {p1}, Labk;->l(Labk;)F

    move-result v2

    float-to-int v2, v2

    .line 120
    new-instance v3, Landroid/widget/TextView;

    invoke-static {p1}, Labk;->i(Labk;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-static {p1}, Labk;->m(Labk;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 122
    invoke-static {p1}, Labk;->n(Labk;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const/high16 v4, 0x437a0000    # 250.0f

    invoke-static {v4}, Labl;->b(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 124
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 125
    invoke-static {p1}, Labk;->o(Labk;)F

    move-result v2

    invoke-static {p1}, Labk;->p(Labk;)F

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 126
    invoke-static {p1}, Labk;->q(Labk;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {p1}, Labk;->r(Labk;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 128
    invoke-static {p1}, Labk;->s(Labk;)F

    move-result v2

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_0

    .line 129
    invoke-static {p1}, Labk;->s(Labk;)F

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 131
    :cond_0
    invoke-static {p1}, Labk;->t(Labk;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 132
    invoke-static {p1}, Labk;->t(Labk;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 135
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-static {p1}, Labk;->i(Labk;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 139
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 142
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 143
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {p1}, Labk;->i(Labk;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Labb;->k:Landroid/widget/ImageView;

    .line 146
    iget-object v0, p0, Labb;->k:Landroid/widget/ImageView;

    invoke-static {p1}, Labk;->u(Labk;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget v0, p0, Labb;->c:I

    if-eq v0, v9, :cond_2

    iget v0, p0, Labb;->c:I

    const/16 v4, 0x50

    if-ne v0, v4, :cond_7

    .line 150
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Labk;->v(Labk;)F

    move-result v4

    float-to-int v4, v4

    invoke-static {p1}, Labk;->w(Labk;)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v0, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 154
    :goto_0
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 155
    iget-object v4, p0, Labb;->k:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {p1}, Labk;->i(Labk;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Labb;->j:Landroid/widget/LinearLayout;

    .line 158
    iget-object v0, p0, Labb;->j:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v4, p0, Labb;->j:Landroid/widget/LinearLayout;

    iget v0, p0, Labb;->c:I

    const v5, 0x800003

    if-eq v0, v5, :cond_3

    iget v0, p0, Labb;->c:I

    const v5, 0x800005

    if-ne v0, v5, :cond_8

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Labl;->b(F)F

    move-result v0

    float-to-int v0, v0

    .line 163
    iget v4, p0, Labb;->c:I

    sparse-switch v4, :sswitch_data_0

    .line 176
    :goto_2
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {p1}, Labk;->i(Labk;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 177
    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Labl;->b(F)F

    move-result v1

    float-to-int v1, v1

    .line 179
    invoke-static {p1}, Labk;->i(Labk;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lkz;->ic_clear:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 182
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    iget v0, p0, Labb;->c:I

    if-eq v0, v9, :cond_4

    iget v0, p0, Labb;->c:I

    const v1, 0x800003

    if-ne v0, v1, :cond_9

    .line 186
    :cond_4
    iget-object v0, p0, Labb;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Labb;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Labb;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    :goto_3
    iget-object v0, p0, Labb;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Labb;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Labb;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Labb;->m:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 196
    invoke-static {p1}, Labk;->a(Labk;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Labk;->b(Labk;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    :cond_5
    iget-object v0, p0, Labb;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Labb;->n:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    :cond_6
    iget-object v0, p0, Labb;->j:Landroid/widget/LinearLayout;

    return-object v0

    .line 152
    :cond_7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Labk;->w(Labk;)F

    move-result v4

    float-to-int v4, v4

    invoke-static {p1}, Labk;->v(Labk;)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v0, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto/16 :goto_0

    .line 159
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 165
    :sswitch_0
    iget-object v4, p0, Labb;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    .line 169
    :sswitch_1
    iget-object v4, p0, Labb;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_2

    .line 172
    :sswitch_2
    iget-object v4, p0, Labb;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_2

    .line 189
    :cond_9
    iget-object v0, p0, Labb;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Labb;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Labb;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_1
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic b(Labb;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Labb;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Labb;)Labn;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Labb;->i:Labn;

    return-object v0
.end method

.method private d()Landroid/graphics/PointF;
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 266
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 268
    iget-object v1, p0, Labb;->e:Landroid/view/View;

    invoke-static {v1}, Labl;->b(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v1

    .line 269
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 271
    iget v3, p0, Labb;->c:I

    sparse-switch v3, :sswitch_data_0

    .line 290
    :goto_0
    return-object v0

    .line 273
    :sswitch_0
    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Labb;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Labb;->d:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 274
    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Labb;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 277
    :sswitch_1
    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Labb;->d:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 278
    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Labb;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 281
    :sswitch_2
    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Labb;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 282
    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Labb;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Labb;->d:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 285
    :sswitch_3
    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Labb;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 286
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Labb;->d:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_2
        0x50 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic d(Labb;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Labb;->f:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic e(Labb;)Labm;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Labb;->g:Labm;

    return-object v0
.end method

.method static synthetic f(Labb;)Labo;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Labb;->h:Labo;

    return-object v0
.end method

.method static synthetic g(Labb;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Labb;->a:Z

    return v0
.end method

.method static synthetic h(Labb;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Labb;->b:Z

    return v0
.end method

.method static synthetic i(Labb;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Labb;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Labb;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Labb;->p:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic k(Labb;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Labb;->d()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Labb;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Labb;->c:I

    return v0
.end method

.method static synthetic m(Labb;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Labb;->k:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Labm;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Labb;->g:Labm;

    .line 245
    return-void
.end method

.method public a(Labn;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Labb;->i:Labn;

    .line 263
    return-void
.end method

.method public a(Labo;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Labb;->h:Labo;

    .line 254
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Labb;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Labb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Labb;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Labb;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 219
    iget-object v0, p0, Labb;->e:Landroid/view/View;

    iget-object v1, p0, Labb;->q:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 220
    iget-object v0, p0, Labb;->e:Landroid/view/View;

    new-instance v1, Labd;

    invoke-direct {v1, p0}, Labd;-><init>(Labb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 225
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Labb;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 236
    return-void
.end method
