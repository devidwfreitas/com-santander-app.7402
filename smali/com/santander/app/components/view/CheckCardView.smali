.class public Lcom/santander/app/components/view/CheckCardView;
.super Landroid/support/v7/widget/CardView;
.source "SourceFile"


# static fields
.field private static final b:Landroid/os/Handler;


# instance fields
.field public a:Z

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Z

.field private f:Lgoy;

.field private g:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private h:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/santander/app/components/view/CheckCardView;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->e:Z

    .line 38
    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->j:Z

    .line 44
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->e()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->e:Z

    .line 38
    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->j:Z

    .line 49
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->e()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->e:Z

    .line 38
    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->j:Z

    .line 54
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->e()V

    .line 55
    return-void
.end method

.method private a(Landroid/view/View;FF)V
    .locals 4

    .prologue
    .line 302
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 303
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 304
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 305
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 306
    return-void
.end method

.method private a(Landroid/view/View;FFLgox;)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 288
    if-eqz p1, :cond_0

    .line 289
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move v1, p2

    move v2, p3

    move v3, p2

    move v4, p3

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 294
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 295
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 296
    invoke-virtual {v0, p4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 297
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lgox;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lgox;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 279
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/components/view/CheckCardView;Landroid/view/View;Lgox;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/santander/app/components/view/CheckCardView;->b(Landroid/view/View;Lgox;)V

    return-void
.end method

.method private a(Lgox;)V
    .locals 4

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    if-eqz p1, :cond_0

    .line 239
    sget-object v0, Lcom/santander/app/components/view/CheckCardView;->b:Landroid/os/Handler;

    new-instance v1, Lgow;

    invoke-direct {v1, p0, p1}, Lgow;-><init>(Lcom/santander/app/components/view/CheckCardView;Lgox;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->i:Z

    .line 248
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->m()V

    .line 249
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/santander/app/components/view/CheckCardView;->a(Landroid/view/View;FF)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->bringChildToFront(Landroid/view/View;)V

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->k:Z

    .line 158
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->r()V

    .line 159
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->p()V

    .line 160
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->n()V

    .line 161
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->l()V

    .line 168
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->g()V

    .line 169
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->k:Z

    .line 164
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->s()V

    .line 165
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->q()V

    .line 166
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->m()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/components/view/CheckCardView;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->j:Z

    return v0
.end method

.method public static synthetic a(Lcom/santander/app/components/view/CheckCardView;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/santander/app/components/view/CheckCardView;->i:Z

    return p1
.end method

.method private b(Landroid/view/View;Lgox;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 283
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lgox;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 285
    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->i:Z

    .line 177
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->bringChildToFront(Landroid/view/View;)V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->r()V

    .line 180
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->j()V

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->s()V

    .line 183
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->k()V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/components/view/CheckCardView;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->i:Z

    return v0
.end method

.method public static synthetic c(Lcom/santander/app/components/view/CheckCardView;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->t()Z

    move-result v0

    return v0
.end method

.method public static synthetic d(Lcom/santander/app/components/view/CheckCardView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->i()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0403b2

    invoke-static {v0, v1, p0}, Lcom/santander/app/components/view/CheckCardView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->f()V

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->a(Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/components/view/CheckCardView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->h()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 66
    const v0, 0x7f1011f6

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->c:Landroid/view/View;

    .line 67
    const v0, 0x7f1011f7

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->d:Landroid/widget/ImageView;

    .line 69
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f02035c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->g:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 71
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f02035e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->h:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 74
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/components/view/CheckCardView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->n()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->f:Lgoy;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->f:Lgoy;

    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->c()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lgoy;->a(Lcom/santander/app/components/view/CheckCardView;Z)V

    .line 148
    :cond_0
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/components/view/CheckCardView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->l()V

    return-void
.end method

.method public static synthetic h(Lcom/santander/app/components/view/CheckCardView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->c:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->a(Z)V

    .line 152
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->b(Z)V

    .line 173
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic i(Lcom/santander/app/components/view/CheckCardView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->m()V

    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->k:Z

    .line 192
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->p()V

    .line 193
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->c:Landroid/view/View;

    new-instance v1, Lgot;

    invoke-direct {v1, p0}, Lgot;-><init>(Lcom/santander/app/components/view/CheckCardView;)V

    invoke-direct {p0, v0, v1}, Lcom/santander/app/components/view/CheckCardView;->a(Landroid/view/View;Lgox;)V

    .line 201
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->g()V

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->k:Z

    .line 206
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->q()V

    .line 207
    new-instance v0, Lgou;

    invoke-direct {v0, p0}, Lgou;-><init>(Lcom/santander/app/components/view/CheckCardView;)V

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->a(Lgox;)V

    .line 219
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardView;->g()V

    .line 220
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 228
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->a(Lgox;)V

    .line 234
    return-void
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->setCardElevation(F)V

    .line 259
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->setCardElevation(F)V

    .line 263
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0109

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->setBackgroundColor(I)V

    .line 267
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->a(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->setRadius(F)V

    .line 268
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0024

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->setBackgroundColor(I)V

    .line 272
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->a(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardView;->setRadius(F)V

    .line 273
    return-void
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)F
    .locals 3

    .prologue
    .line 313
    const/4 v0, 0x1

    int-to-float v1, p1

    .line 314
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 313
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->j:Z

    .line 111
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->j:Z

    .line 115
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->k:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/santander/app/components/view/CheckCardView;->e:Z

    return v0
.end method

.method public setAnimated(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/santander/app/components/view/CheckCardView;->e:Z

    .line 138
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->c()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/components/view/CheckCardView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/CheckCardView;->b(Z)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/CheckCardView;->a(Z)V

    goto :goto_0
.end method

.method public setOnCheckChangeListener(Lgoy;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/santander/app/components/view/CheckCardView;->f:Lgoy;

    .line 142
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    new-instance v0, Lgos;

    invoke-direct {v0, p0, p1}, Lgos;-><init>(Lcom/santander/app/components/view/CheckCardView;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
