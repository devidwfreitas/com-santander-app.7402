.class public final Laoa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SantanderTooltip"


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:I

.field private final e:F

.field private final f:Landroid/view/View;

.field private final g:Landroid/widget/PopupWindow;

.field private h:Laok;

.field private i:Laon;

.field private j:Laom;

.field private k:Laol;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/ImageView;

.field private final n:Landroid/view/View$OnClickListener;

.field private final o:Landroid/view/View$OnLongClickListener;

.field private final p:Landroid/view/View$OnTouchListener;

.field private final q:Landroid/view/View$OnClickListener;

.field private final r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final s:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method private constructor <init>(Laoj;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Laod;

    invoke-direct {v0, p0}, Laod;-><init>(Laoa;)V

    iput-object v0, p0, Laoa;->n:Landroid/view/View$OnClickListener;

    .line 413
    new-instance v0, Laoe;

    invoke-direct {v0, p0}, Laoe;-><init>(Laoa;)V

    iput-object v0, p0, Laoa;->o:Landroid/view/View$OnLongClickListener;

    .line 421
    new-instance v0, Laof;

    invoke-direct {v0, p0}, Laof;-><init>(Laoa;)V

    iput-object v0, p0, Laoa;->p:Landroid/view/View$OnTouchListener;

    .line 433
    new-instance v0, Laog;

    invoke-direct {v0, p0}, Laog;-><init>(Laoa;)V

    iput-object v0, p0, Laoa;->q:Landroid/view/View$OnClickListener;

    .line 445
    new-instance v0, Laoh;

    invoke-direct {v0, p0}, Laoh;-><init>(Laoa;)V

    iput-object v0, p0, Laoa;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 505
    new-instance v0, Laoi;

    invoke-direct {v0, p0}, Laoi;-><init>(Laoa;)V

    iput-object v0, p0, Laoa;->s:Landroid/view/View$OnAttachStateChangeListener;

    .line 160
    invoke-static {p1}, Laoj;->a(Laoj;)Z

    move-result v0

    iput-boolean v0, p0, Laoa;->b:Z

    .line 161
    invoke-static {p1}, Laoj;->b(Laoj;)Z

    move-result v0

    iput-boolean v0, p0, Laoa;->c:Z

    .line 163
    invoke-static {p1}, Laoj;->c(Laoj;)I

    move-result v0

    iput v0, p0, Laoa;->d:I

    .line 164
    invoke-static {p1}, Laoj;->d(Laoj;)F

    move-result v0

    iput v0, p0, Laoa;->e:F

    .line 165
    invoke-static {p1}, Laoj;->e(Laoj;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laoa;->f:Landroid/view/View;

    .line 166
    invoke-static {p1}, Laoj;->f(Laoj;)Laok;

    move-result-object v0

    iput-object v0, p0, Laoa;->h:Laok;

    .line 167
    invoke-static {p1}, Laoj;->g(Laoj;)Laon;

    move-result-object v0

    iput-object v0, p0, Laoa;->i:Laon;

    .line 168
    invoke-static {p1}, Laoj;->h(Laoj;)Laom;

    move-result-object v0

    iput-object v0, p0, Laoa;->j:Laom;

    .line 169
    invoke-static {p1}, Laoj;->i(Laoj;)Laol;

    move-result-object v0

    iput-object v0, p0, Laoa;->k:Laol;

    .line 171
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-static {p1}, Laoj;->j(Laoj;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laoa;->g:Landroid/widget/PopupWindow;

    .line 172
    iget-object v0, p0, Laoa;->g:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v0, p0, Laoa;->g:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 174
    iget-object v0, p0, Laoa;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 175
    iget-object v0, p0, Laoa;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 176
    iget-object v0, p0, Laoa;->g:Landroid/widget/PopupWindow;

    invoke-direct {p0, p1}, Laoa;->a(Laoj;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Laoa;->g:Landroid/widget/PopupWindow;

    invoke-static {p1}, Laoj;->a(Laoj;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 178
    iget-object v0, p0, Laoa;->g:Landroid/widget/PopupWindow;

    new-instance v1, Laob;

    invoke-direct {v1, p0}, Laob;-><init>(Laoa;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Laoj;Laob;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Laoa;-><init>(Laoj;)V

    return-void
.end method

.method private a(Laoj;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x0

    const v7, 0x800003

    const/4 v6, -0x2

    const/4 v1, 0x0

    .line 192
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 193
    invoke-static {p1}, Laoj;->k(Laoj;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 194
    invoke-static {p1}, Laoj;->l(Laoj;)F

    move-result v0

    invoke-static {v0}, Laoo;->b(F)F

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 196
    invoke-static {p1}, Laoj;->m(Laoj;)F

    move-result v0

    invoke-static {v0}, Laoo;->b(F)F

    move-result v0

    float-to-int v2, v0

    .line 198
    new-instance v5, Landroid/widget/TextView;

    invoke-static {p1}, Laoj;->j(Laoj;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-static {p1}, Laoj;->n(Laoj;)I

    move-result v0

    invoke-static {v5, v0}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 200
    invoke-static {p1}, Laoj;->o(Laoj;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-static {p1}, Laoj;->p(Laoj;)F

    move-result v0

    invoke-static {v0}, Laoo;->b(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 203
    invoke-static {p1}, Laoj;->q(Laoj;)I

    move-result v0

    if-ne v0, v7, :cond_9

    move v0, v1

    .line 205
    :goto_0
    invoke-static {p1}, Laoj;->q(Laoj;)I

    move-result v3

    if-ne v3, v7, :cond_a

    move v3, v2

    .line 202
    :goto_1
    invoke-virtual {v5, v0, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 207
    invoke-static {p1}, Laoj;->r(Laoj;)F

    move-result v0

    invoke-static {p1}, Laoj;->s(Laoj;)F

    move-result v2

    invoke-virtual {v5, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 208
    invoke-static {p1}, Laoj;->t(Laoj;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {p1}, Laoj;->u(Laoj;)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 210
    invoke-static {p1}, Laoj;->v(Laoj;)F

    move-result v0

    cmpl-float v0, v0, v8

    if-ltz v0, :cond_0

    .line 211
    invoke-static {p1}, Laoj;->v(Laoj;)F

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 213
    :cond_0
    invoke-static {p1}, Laoj;->w(Laoj;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-static {p1}, Laoj;->w(Laoj;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 217
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-static {p1}, Laoj;->j(Laoj;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 218
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 220
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 221
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 224
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 225
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {p1}, Laoj;->j(Laoj;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laoa;->m:Landroid/widget/ImageView;

    .line 228
    iget-object v0, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-static {p1}, Laoj;->x(Laoj;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget v0, p0, Laoa;->d:I

    const/16 v3, 0x30

    if-eq v0, v3, :cond_2

    iget v0, p0, Laoa;->d:I

    const/16 v3, 0x50

    if-ne v0, v3, :cond_b

    .line 232
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 233
    invoke-static {p1}, Laoj;->y(Laoj;)F

    move-result v3

    float-to-int v3, v3

    .line 234
    invoke-static {p1}, Laoj;->z(Laoj;)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 240
    :goto_2
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 241
    iget-object v3, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {p1}, Laoj;->j(Laoj;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laoa;->l:Landroid/widget/LinearLayout;

    .line 244
    iget-object v0, p0, Laoa;->l:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v3, p0, Laoa;->l:Landroid/widget/LinearLayout;

    iget v0, p0, Laoa;->d:I

    if-eq v0, v7, :cond_3

    iget v0, p0, Laoa;->d:I

    const v4, 0x800005

    if-ne v0, v4, :cond_c

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 251
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Laoo;->b(F)F

    move-result v0

    float-to-int v0, v0

    .line 253
    iget v3, p0, Laoa;->d:I

    sparse-switch v3, :sswitch_data_0

    .line 266
    :goto_4
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {p1}, Laoj;->j(Laoj;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 267
    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Laoo;->b(F)F

    move-result v1

    float-to-int v1, v1

    .line 269
    sget v3, Lalr;->ic_tooltip_close:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 271
    iget-object v1, p0, Laoa;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-static {p1}, Laoj;->q(Laoj;)I

    move-result v1

    if-ne v1, v7, :cond_d

    .line 274
    invoke-static {p1}, Laoj;->A(Laoj;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    :cond_4
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    :cond_5
    :goto_5
    iget v0, p0, Laoa;->d:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_6

    iget v0, p0, Laoa;->d:I

    if-ne v0, v7, :cond_e

    .line 286
    :cond_6
    iget-object v0, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Laoa;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    :goto_6
    iget-object v0, p0, Laoa;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laoa;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Laoa;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laoa;->o:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 296
    invoke-static {p1}, Laoj;->a(Laoj;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Laoj;->b(Laoj;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 297
    :cond_7
    iget-object v0, p0, Laoa;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laoa;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    :cond_8
    iget-object v0, p0, Laoa;->l:Landroid/widget/LinearLayout;

    return-object v0

    :cond_9
    move v0, v2

    .line 203
    goto/16 :goto_0

    :cond_a
    move v3, v1

    .line 205
    goto/16 :goto_1

    .line 236
    :cond_b
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 237
    invoke-static {p1}, Laoj;->z(Laoj;)F

    move-result v3

    float-to-int v3, v3

    .line 238
    invoke-static {p1}, Laoj;->y(Laoj;)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto/16 :goto_2

    .line 247
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 255
    :sswitch_0
    iget-object v3, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_4

    .line 259
    :sswitch_1
    iget-object v3, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_4

    .line 262
    :sswitch_2
    iget-object v3, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_4

    .line 279
    :cond_d
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    invoke-static {p1}, Laoj;->A(Laoj;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 281
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 289
    :cond_e
    iget-object v0, p0, Laoa;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_1
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Laoa;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laoa;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)Laoa;
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x50

    invoke-static {p0, p1, v0}, Laoa;->a(Landroid/view/View;Ljava/lang/String;I)Laoa;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;I)Laoa;
    .locals 2

    .prologue
    .line 133
    sget v0, Lalp;->santander_tooltip:I

    const v1, 0x106000b

    invoke-static {p0, p1, p2, v0, v1}, Laoa;->a(Landroid/view/View;Ljava/lang/String;III)Laoa;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;III)Laoa;
    .locals 2
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 141
    new-instance v0, Laoj;

    sget v1, Lalw;->Santander_TooltipDefault:I

    invoke-direct {v0, p0, v1}, Laoj;-><init>(Landroid/view/View;I)V

    .line 142
    invoke-virtual {v0, p1}, Laoj;->a(Ljava/lang/CharSequence;)Laoj;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p2}, Laoj;->i(I)Laoj;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laoj;->a(I)Laoj;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laoj;->l(I)Laoj;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Laoj;->a()Laoa;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;IIIZ)Laoa;
    .locals 2
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 150
    new-instance v0, Laoj;

    sget v1, Lalw;->Santander_TooltipDefault:I

    invoke-direct {v0, p0, v1}, Laoj;-><init>(Landroid/view/View;I)V

    .line 151
    invoke-virtual {v0, p1}, Laoj;->a(Ljava/lang/CharSequence;)Laoj;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p2}, Laoj;->i(I)Laoj;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laoj;->a(I)Laoj;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laoj;->l(I)Laoj;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p5}, Laoj;->a(Z)Laoj;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Laoj;->a()Laoa;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;IZ)Laoa;
    .locals 6

    .prologue
    .line 137
    sget v3, Lalp;->santander_tooltip:I

    const v4, 0x106000b

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Laoa;->a(Landroid/view/View;Ljava/lang/String;IIIZ)Laoa;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Laoa;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laoa;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic c(Laoa;)Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laoa;->s:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method private d()Landroid/graphics/PointF;
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 377
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 379
    iget-object v1, p0, Laoa;->f:Landroid/view/View;

    invoke-static {v1}, Laoo;->a(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v1

    .line 380
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 382
    iget v3, p0, Laoa;->d:I

    sparse-switch v3, :sswitch_data_0

    .line 401
    :goto_0
    return-object v0

    .line 384
    :sswitch_0
    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Laoa;->e:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 385
    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 388
    :sswitch_1
    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Laoa;->e:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 389
    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 392
    :sswitch_2
    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 393
    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Laoa;->e:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 396
    :sswitch_3
    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 397
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Laoa;->e:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 382
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_2
        0x50 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic d(Laoa;)Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laoa;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Laoa;)Laom;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laoa;->j:Laom;

    return-object v0
.end method

.method private e()Z
    .locals 3

    .prologue
    .line 463
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 464
    iget-object v1, p0, Laoa;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 465
    iget-object v1, p0, Laoa;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoa;->f:Landroid/view/View;

    .line 466
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Laoa;->f:Landroid/view/View;

    .line 467
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 465
    :goto_0
    return v0

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Laoa;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laoa;->g:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private f()V
    .locals 10

    .prologue
    const/16 v8, 0x30

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 471
    iget-object v0, p0, Laoa;->f:Landroid/view/View;

    invoke-static {v0}, Laoo;->a(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    .line 472
    iget-object v1, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-static {v1}, Laoo;->a(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v4

    .line 474
    iget v1, p0, Laoa;->d:I

    const/16 v5, 0x50

    if-eq v1, v5, :cond_0

    iget v1, p0, Laoa;->d:I

    if-ne v1, v8, :cond_3

    .line 475
    :cond_0
    iget-object v1, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v7}, Laoo;->b(F)F

    move-result v5

    add-float/2addr v1, v5

    .line 476
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v7

    iget-object v6, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 477
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float v0, v6, v0

    sub-float v0, v5, v0

    .line 478
    cmpl-float v5, v0, v1

    if-lez v5, :cond_7

    .line 479
    iget-object v5, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    add-float/2addr v5, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 480
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v4, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    sub-float/2addr v0, v1

    .line 485
    :cond_1
    :goto_0
    iget-object v1, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v4, v1

    .line 486
    iget v1, p0, Laoa;->d:I

    if-ne v1, v8, :cond_2

    move v1, v2

    :goto_1
    int-to-float v1, v1

    add-float/2addr v1, v4

    move v9, v1

    move v1, v0

    move v0, v9

    .line 501
    :goto_2
    iget-object v2, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 502
    iget-object v1, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 503
    return-void

    :cond_2
    move v1, v3

    .line 486
    goto :goto_1

    .line 488
    :cond_3
    iget-object v1, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v7}, Laoo;->b(F)F

    move-result v5

    add-float/2addr v1, v5

    .line 489
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v7

    iget-object v6, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 490
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float v0, v6, v0

    sub-float v0, v5, v0

    .line 491
    cmpl-float v5, v0, v1

    if-lez v5, :cond_6

    .line 492
    iget-object v5, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    add-float/2addr v5, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 493
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v4, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    sub-float/2addr v0, v1

    .line 498
    :cond_4
    :goto_3
    iget-object v1, p0, Laoa;->m:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 499
    iget v4, p0, Laoa;->d:I

    const v5, 0x800003

    if-ne v4, v5, :cond_5

    :goto_4
    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method static synthetic g(Laoa;)Laok;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laoa;->h:Laok;

    return-object v0
.end method

.method static synthetic h(Laoa;)Laon;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laoa;->i:Laon;

    return-object v0
.end method

.method static synthetic i(Laoa;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Laoa;->b:Z

    return v0
.end method

.method static synthetic j(Laoa;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Laoa;->c:Z

    return v0
.end method

.method static synthetic k(Laoa;)Laol;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laoa;->k:Laol;

    return-object v0
.end method

.method static synthetic l(Laoa;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Laoa;->f()V

    return-void
.end method

.method static synthetic m(Laoa;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Laoa;->d()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Laoa;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Laoa;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Laok;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Laoa;->h:Laok;

    .line 347
    return-void
.end method

.method public a(Laol;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Laoa;->k:Laol;

    .line 374
    return-void
.end method

.method public a(Laom;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Laoa;->j:Laom;

    .line 365
    return-void
.end method

.method public a(Laon;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Laoa;->i:Laon;

    .line 356
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Laoa;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Laoa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Laoa;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Laoa;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 319
    iget-object v0, p0, Laoa;->f:Landroid/view/View;

    iget-object v1, p0, Laoa;->s:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 320
    iget-object v0, p0, Laoa;->f:Landroid/view/View;

    new-instance v1, Laoc;

    invoke-direct {v1, p0}, Laoc;-><init>(Laoa;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 327
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Laoa;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 338
    return-void
.end method
