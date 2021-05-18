.class public Lgtz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lguf;

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Lgty;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Lgxa;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lguf;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgtz;->k:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgtz;->l:Z

    .line 58
    iput-object p1, p0, Lgtz;->a:Lguf;

    .line 59
    iput-object p2, p0, Lgtz;->b:Landroid/app/Activity;

    .line 60
    return-void
.end method

.method static synthetic a(Lgtz;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lgtz;->h:I

    return p1
.end method

.method static synthetic a(Lgtz;)Lguf;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgtz;->a:Lguf;

    return-object v0
.end method

.method private a()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const v6, 0x7f0204c1

    const v5, 0x7f020260

    const v4, 0x7f0e018e

    const v3, 0x7f090a12

    const v2, 0x7f0e018d

    .line 104
    iget-object v0, p0, Lgtz;->a:Lguf;

    invoke-interface {v0}, Lguf;->b()I

    move-result v0

    invoke-static {v0}, Lgty;->valueOf(I)Lgty;

    move-result-object v0

    iput-object v0, p0, Lgtz;->p:Lgty;

    .line 106
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lgty;->USER_SANTANDER:Lgty;

    iput-object v0, p0, Lgtz;->p:Lgty;

    .line 110
    :cond_0
    iget-object v0, p0, Lgtz;->p:Lgty;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lgtz;->p:Lgty;

    invoke-direct {p0, v0}, Lgtz;->a(Lgty;)V

    .line 113
    iget-object v0, p0, Lgtz;->p:Lgty;

    invoke-direct {p0, v0}, Lgtz;->b(Lgty;)V

    .line 115
    sget-object v0, Lgue;->a:[I

    iget-object v1, p0, Lgtz;->p:Lgty;

    invoke-virtual {v1}, Lgty;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lgtz;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lgtz;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020261

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v0, p0, Lgtz;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    iget-object v0, p0, Lgtz;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v0, p0, Lgtz;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020505

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    const v0, 0x7f090a11

    invoke-direct {p0, v0, v3}, Lgtz;->a(II)V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v0, p0, Lgtz;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 129
    iget-object v0, p0, Lgtz;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lgtz;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    iget-object v0, p0, Lgtz;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lgtz;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    const v0, 0x7f090a11

    invoke-direct {p0, v0, v3}, Lgtz;->a(II)V

    goto/16 :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lgtz;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 139
    iget-object v0, p0, Lgtz;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, p0, Lgtz;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 141
    iget-object v0, p0, Lgtz;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lgtz;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-direct {p0, v3, v3}, Lgtz;->a(II)V

    goto/16 :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lgtz;->q:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 149
    const-string v0, "PORQUINHO OCULTADO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segmento nao mapeado - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgtz;->a:Lguf;

    invoke-interface {v2}, Lguf;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lgtz;->r:Lgxa;

    invoke-virtual {v0}, Lgxa;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lgtz;->r:Lgxa;

    invoke-virtual {v0}, Lgxa;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgws;->valueOf(Ljava/lang/String;)Lgws;

    move-result-object v0

    .line 157
    sget-object v1, Lgue;->b:[I

    invoke-virtual {v0}, Lgws;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v0, p0, Lgtz;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lgtz;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lgty;)V
    .locals 3

    .prologue
    .line 302
    sget-object v0, Lgue;->a:[I

    invoke-virtual {p1}, Lgty;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 308
    :pswitch_0
    iget-object v0, p0, Lgtz;->d:Landroid/widget/Button;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v0, p0, Lgtz;->d:Landroid/widget/Button;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lgtz;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lgtz;->k:Z

    return p1
.end method

.method static synthetic b(Lgtz;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lgtz;->o:I

    return p1
.end method

.method private b()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lgub;

    invoke-direct {v0, p0}, Lgub;-><init>(Lgtz;)V

    return-object v0
.end method

.method static synthetic b(Lgtz;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgtz;->d:Landroid/widget/Button;

    return-object v0
.end method

.method private b(II)V
    .locals 4

    .prologue
    .line 261
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 262
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 263
    new-instance v1, Lguc;

    invoke-direct {v1, p0}, Lguc;-><init>(Lgtz;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 273
    new-instance v1, Lgud;

    invoke-direct {v1, p0}, Lgud;-><init>(Lgtz;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 297
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 298
    return-void
.end method

.method private b(Lgty;)V
    .locals 3

    .prologue
    .line 318
    sget-object v0, Lgue;->a:[I

    invoke-virtual {p1}, Lgty;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 324
    :pswitch_0
    iget-object v0, p0, Lgtz;->d:Landroid/widget/Button;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f020000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 328
    :pswitch_1
    iget-object v0, p0, Lgtz;->d:Landroid/widget/Button;

    iget-object v1, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lgtz;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lgtz;->m:I

    return p1
.end method

.method private c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 233
    iget v0, p0, Lgtz;->m:I

    iget v1, p0, Lgtz;->i:I

    invoke-direct {p0, v0, v1}, Lgtz;->b(II)V

    .line 234
    iget-object v0, p0, Lgtz;->p:Lgty;

    invoke-direct {p0, v0}, Lgtz;->a(Lgty;)V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgtz;->l:Z

    .line 236
    iget-object v0, p0, Lgtz;->a:Lguf;

    iget-object v1, p0, Lgtz;->r:Lgxa;

    invoke-interface {v0, v1}, Lguf;->b(Lgxa;)V

    .line 237
    return-void
.end method

.method static synthetic c(Lgtz;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lgtz;->k:Z

    return v0
.end method

.method static synthetic d(Lgtz;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lgtz;->n:I

    return p1
.end method

.method static synthetic d(Lgtz;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgtz;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 241
    iget v0, p0, Lgtz;->m:I

    iget v1, p0, Lgtz;->o:I

    invoke-direct {p0, v0, v1}, Lgtz;->b(II)V

    .line 242
    iget-object v0, p0, Lgtz;->p:Lgty;

    invoke-direct {p0, v0}, Lgtz;->b(Lgty;)V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgtz;->l:Z

    .line 244
    iget-object v0, p0, Lgtz;->a:Lguf;

    iget-object v1, p0, Lgtz;->r:Lgxa;

    invoke-interface {v0, v1}, Lguf;->c(Lgxa;)V

    .line 245
    return-void
.end method

.method static synthetic e(Lgtz;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lgtz;->h:I

    return v0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 248
    invoke-direct {p0}, Lgtz;->f()I

    move-result v0

    .line 250
    int-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lgtz;->i:I

    .line 252
    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lgtz;->j:I

    .line 253
    return-void
.end method

.method private f()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lgtz;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 257
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method static synthetic f(Lgtz;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgtz;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic g(Lgtz;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lgtz;->m:I

    return v0
.end method

.method static synthetic h(Lgtz;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lgtz;->i:I

    return v0
.end method

.method static synthetic i(Lgtz;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lgtz;->j:I

    return v0
.end method

.method static synthetic j(Lgtz;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lgtz;->n:I

    return v0
.end method

.method static synthetic k(Lgtz;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lgtz;->d()V

    return-void
.end method

.method static synthetic l(Lgtz;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lgtz;->c()V

    return-void
.end method

.method static synthetic m(Lgtz;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lgtz;->l:Z

    return v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    iget-object v0, p0, Lgtz;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgtz;->k:Z

    .line 97
    invoke-direct {p0}, Lgtz;->d()V

    .line 99
    :cond_0
    return-void
.end method

.method public a(ZLgxa;)V
    .locals 2

    .prologue
    .line 63
    iput-object p2, p0, Lgtz;->r:Lgxa;

    .line 64
    iget-object v0, p0, Lgtz;->b:Landroid/app/Activity;

    const v1, 0x7f100ac6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lgtz;->s:Landroid/widget/RelativeLayout;

    .line 65
    iget-object v0, p0, Lgtz;->s:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lgtz;->b:Landroid/app/Activity;

    const v1, 0x7f100a60

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lgtz;->q:Landroid/widget/RelativeLayout;

    .line 67
    iget-object v0, p0, Lgtz;->b:Landroid/app/Activity;

    const v1, 0x7f1000d9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lgtz;->c:Landroid/widget/RelativeLayout;

    .line 68
    iget-object v0, p0, Lgtz;->b:Landroid/app/Activity;

    const v1, 0x7f100b03

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgtz;->f:Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lgtz;->b:Landroid/app/Activity;

    const v1, 0x7f100b08

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgtz;->g:Landroid/widget/LinearLayout;

    .line 70
    iget-object v0, p0, Lgtz;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lgua;

    invoke-direct {v1, p0, p2}, Lgua;-><init>(Lgtz;Lgxa;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lgtz;->b:Landroid/app/Activity;

    const v1, 0x7f10006e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lgtz;->d:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lgtz;->d:Landroid/widget/Button;

    invoke-direct {p0}, Lgtz;->b()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    iget-object v0, p0, Lgtz;->b:Landroid/app/Activity;

    const v1, 0x7f100ac8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lgtz;->e:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lgtz;->b:Landroid/app/Activity;

    const v1, 0x7f100b07

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgtz;->u:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lgtz;->b:Landroid/app/Activity;

    const v1, 0x7f100b06

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgtz;->v:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lgtz;->b:Landroid/app/Activity;

    const v1, 0x7f100b05

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgtz;->t:Landroid/widget/ImageView;

    .line 84
    invoke-direct {p0}, Lgtz;->e()V

    .line 86
    invoke-direct {p0}, Lgtz;->a()V

    .line 88
    iget-object v0, p0, Lgtz;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p0, p1}, Lgtz;->a(Z)V

    .line 91
    return-void
.end method
