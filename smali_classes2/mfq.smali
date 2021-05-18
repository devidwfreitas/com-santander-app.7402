.class public abstract Lmfq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final g:I = 0x1

.field public static final h:I

.field public static final i:Lmfy;


# instance fields
.field protected a:Landroid/widget/SeekBar;

.field protected b:Landroid/widget/PopupWindow;

.field protected c:Landroid/view/View;

.field protected d:Landroid/widget/TextView;

.field protected e:I

.field protected f:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Lmfy;

.field private o:Lmfz;

.field private p:Lmfx;

.field private q:Landroid/os/Handler;

.field private r:Z

.field private s:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lmfv;

    invoke-direct {v0}, Lmfv;-><init>()V

    sput-object v0, Lmfq;->i:Lmfy;

    return-void
.end method

.method public constructor <init>(Landroid/widget/SeekBar;IIZZII)V
    .locals 9

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lmfx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmfx;-><init>(Lmfr;)V

    iput-object v0, p0, Lmfq;->p:Lmfx;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmfq;->q:Landroid/os/Handler;

    .line 160
    new-instance v0, Lmft;

    invoke-direct {v0, p0}, Lmft;-><init>(Lmfq;)V

    iput-object v0, p0, Lmfq;->s:Landroid/view/View$OnTouchListener;

    .line 71
    sget-object v8, Lmfq;->i:Lmfy;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lmfq;->a(Landroid/widget/SeekBar;IIZZIILmfy;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/widget/SeekBar;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lmfx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmfx;-><init>(Lmfr;)V

    iput-object v0, p0, Lmfq;->p:Lmfx;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmfq;->q:Landroid/os/Handler;

    .line 160
    new-instance v0, Lmft;

    invoke-direct {v0, p0}, Lmft;-><init>(Lmfq;)V

    iput-object v0, p0, Lmfq;->s:Landroid/view/View$OnTouchListener;

    .line 76
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lflv;->ProgressHint:[I

    const v2, 0x7f0b0211

    .line 77
    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    const v1, 0x7f04034e

    .line 81
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 82
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v3, v1

    .line 83
    const/4 v1, 0x2

    .line 84
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 85
    const/4 v1, 0x3

    const v4, 0x7f0b0149

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 87
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 88
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    sget-object v8, Lmfq;->i:Lmfy;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lmfq;->a(Landroid/widget/SeekBar;IIZZIILmfy;)V

    .line 93
    return-void
.end method

.method private a(Landroid/widget/SeekBar;IIZZIILmfy;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lmfq;->a:Landroid/widget/SeekBar;

    .line 99
    iput p2, p0, Lmfq;->j:I

    .line 100
    iput p3, p0, Lmfq;->e:I

    .line 101
    iput-boolean p4, p0, Lmfq;->k:Z

    .line 102
    iput-boolean p5, p0, Lmfq;->l:Z

    .line 103
    iput p6, p0, Lmfq;->f:I

    .line 104
    iput p7, p0, Lmfq;->m:I

    .line 105
    iput-object p8, p0, Lmfq;->n:Lmfy;

    .line 107
    invoke-direct {p0}, Lmfq;->j()V

    .line 108
    invoke-direct {p0}, Lmfq;->k()V

    .line 109
    return-void
.end method

.method static synthetic a(Lmfq;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lmfq;->l()V

    return-void
.end method

.method static synthetic b(Lmfq;)Lmfx;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmfq;->p:Lmfx;

    return-object v0
.end method

.method static synthetic c(Lmfq;)Lmfz;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmfq;->o:Lmfz;

    return-object v0
.end method

.method static synthetic d(Lmfq;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lmfq;->m()V

    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 112
    .line 113
    iget-object v0, p0, Lmfq;->n:Lmfy;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lmfq;->n:Lmfy;

    iget-object v1, p0, Lmfq;->a:Landroid/widget/SeekBar;

    iget-object v3, p0, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, v1, v3}, Lmfy;->a(Landroid/widget/SeekBar;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 118
    :goto_0
    iget-object v0, p0, Lmfq;->a:Landroid/widget/SeekBar;

    .line 119
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 120
    iget v3, p0, Lmfq;->j:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmfq;->c:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lmfq;->c:Landroid/view/View;

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 122
    iget-object v0, p0, Lmfq;->c:Landroid/view/View;

    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmfq;->d:Landroid/widget/TextView;

    .line 123
    iget-object v2, p0, Lmfq;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lmfq;->c:Landroid/view/View;

    invoke-direct {v0, v1, v5, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lmfq;->b:Landroid/widget/PopupWindow;

    .line 126
    iget-object v0, p0, Lmfq;->b:Landroid/widget/PopupWindow;

    iget v1, p0, Lmfq;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 127
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lmfr;

    invoke-direct {v0, p0}, Lmfr;-><init>(Lmfq;)V

    .line 136
    iget-object v1, p0, Lmfq;->a:Landroid/widget/SeekBar;

    new-instance v2, Lmfs;

    invoke-direct {v2, p0, v0}, Lmfs;-><init>(Lmfq;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 152
    iget-object v0, p0, Lmfq;->p:Lmfx;

    invoke-virtual {v0, p0}, Lmfx;->a(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 153
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lmfq;->k:Z

    invoke-virtual {p0, v0}, Lmfq;->a(Z)V

    .line 157
    iget-boolean v0, p0, Lmfq;->l:Z

    invoke-virtual {p0, v0}, Lmfq;->b(Z)V

    .line 158
    return-void
.end method

.method private m()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 180
    const/4 v0, 0x0

    .line 181
    iget v1, p0, Lmfq;->f:I

    packed-switch v1, :pswitch_data_0

    move-object v3, v0

    .line 189
    :goto_0
    iget-object v0, p0, Lmfq;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 190
    iget-object v0, p0, Lmfq;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lmfq;->a:Landroid/widget/SeekBar;

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 191
    return-void

    .line 183
    :pswitch_0
    invoke-virtual {p0}, Lmfq;->b()Landroid/graphics/Point;

    move-result-object v0

    move-object v3, v0

    .line 184
    goto :goto_0

    .line 186
    :pswitch_1
    invoke-virtual {p0}, Lmfq;->a()Landroid/graphics/Point;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected abstract a()Landroid/graphics/Point;
.end method

.method protected abstract a(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
.end method

.method public a(Landroid/widget/SeekBar$OnSeekBarChangeListener;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .prologue
    .line 292
    instance-of v0, p1, Lmfx;

    if-eqz v0, :cond_0

    .line 293
    check-cast p1, Lmfx;

    iput-object p1, p0, Lmfq;->p:Lmfx;

    .line 297
    :goto_0
    iget-object v0, p0, Lmfq;->p:Lmfx;

    return-object v0

    .line 295
    :cond_0
    iget-object v0, p0, Lmfq;->p:Lmfx;

    invoke-virtual {v0, p1}, Lmfx;->b(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 208
    iput p1, p0, Lmfq;->j:I

    .line 209
    iget-object v0, p0, Lmfq;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmfq;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 210
    :cond_0
    invoke-direct {p0}, Lmfq;->j()V

    .line 211
    invoke-direct {p0}, Lmfq;->l()V

    .line 212
    return-void
.end method

.method public a(Lmfy;)V
    .locals 5

    .prologue
    .line 244
    iput-object p1, p0, Lmfq;->n:Lmfy;

    .line 245
    iget-object v0, p0, Lmfq;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lmfq;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmfq;->n:Lmfy;

    iget-object v3, p0, Lmfq;->a:Landroid/widget/SeekBar;

    iget-object v4, p0, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lmfy;->a(Landroid/widget/SeekBar;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_0
    return-void
.end method

.method public a(Lmfz;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lmfq;->o:Lmfz;

    .line 252
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 228
    iput-boolean p1, p0, Lmfq;->k:Z

    .line 229
    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {p0}, Lmfq;->c()V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-boolean v0, p0, Lmfq;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmfq;->d()V

    goto :goto_0
.end method

.method protected abstract b()Landroid/graphics/Point;
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 219
    iput p1, p0, Lmfq;->f:I

    .line 220
    iget-boolean v0, p0, Lmfq;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmfq;->c()V

    .line 221
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 239
    iput-boolean p1, p0, Lmfq;->l:Z

    .line 240
    iget-object v0, p0, Lmfq;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmfq;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmfq;->s:Landroid/view/View$OnTouchListener;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    :cond_0
    return-void

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(I)I
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Lmfq;->a:Landroid/widget/SeekBar;

    .line 333
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmfq;->a:Landroid/widget/SeekBar;

    .line 334
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/2addr v0, p1

    int-to-float v0, v0

    iget-object v1, p0, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 332
    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lmfq;->q:Landroid/os/Handler;

    new-instance v1, Lmfu;

    invoke-direct {v1, p0}, Lmfu;-><init>(Lmfq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lmfq;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lmfq;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmfq;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 196
    :cond_0
    return-void
.end method

.method public e()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 204
    iget v0, p0, Lmfq;->j:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lmfq;->f:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lmfq;->k:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lmfq;->l:Z

    return v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lmfq;->c(I)I

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 311
    const/4 v0, 0x0

    .line 312
    iget-object v1, p0, Lmfq;->n:Lmfy;

    if-eqz v1, :cond_0

    .line 313
    iget-object v0, p0, Lmfq;->n:Lmfy;

    iget-object v1, p0, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-interface {v0, v1, p2}, Lmfy;->a(Landroid/widget/SeekBar;I)Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_0
    iget-object v1, p0, Lmfq;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget v0, p0, Lmfq;->f:I

    if-nez v0, :cond_1

    .line 318
    invoke-virtual {p0}, Lmfq;->b()Landroid/graphics/Point;

    move-result-object v3

    .line 319
    iget-object v0, p0, Lmfq;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lmfq;->a:Landroid/widget/SeekBar;

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 321
    :cond_1
    return-void

    .line 315
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmfq;->r:Z

    .line 302
    invoke-direct {p0}, Lmfq;->m()V

    .line 303
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmfq;->r:Z

    .line 307
    iget-boolean v0, p0, Lmfq;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmfq;->d()V

    .line 308
    :cond_0
    return-void
.end method
