.class public Lcom/santander/app/components/view/dropuplist/ListDropUp;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lgtp;


# instance fields
.field private a:F

.field private b:Z

.field private c:Z

.field private d:Landroid/util/DisplayMetrics;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Landroid/support/v7/widget/LinearLayoutManager;

.field private i:Landroid/app/Activity;

.field private j:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private k:I

.field private l:Lgtt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->c:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->c:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->c:Z

    .line 52
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/components/view/dropuplist/ListDropUp;F)F
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->a:F

    return p1
.end method

.method private a(I)I
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 166
    int-to-float v1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 167
    return v0
.end method

.method private a(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 149
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    new-instance v1, Lgts;

    invoke-direct {v1, p0, p1}, Lgts;-><init>(Lcom/santander/app/components/view/dropuplist/ListDropUp;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 162
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->c:Z

    return v0
.end method

.method public static synthetic a(Lcom/santander/app/components/view/dropuplist/ListDropUp;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->c:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->b:Z

    return v0
.end method

.method public static synthetic d(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->h:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->b:Z

    .line 178
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v0, v1, v2}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->a(Landroid/view/View;II)V

    .line 180
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v0, v1, v2}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->a(Landroid/view/View;II)V

    .line 181
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 182
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->l:Lgtt;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->l:Lgtt;

    invoke-interface {v0}, Lgtt;->a()V

    .line 186
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    iput-boolean v3, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->b:Z

    .line 191
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0xd

    invoke-direct {p0, v0, v1, v2}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->a(Landroid/view/View;II)V

    .line 192
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0xd

    invoke-direct {p0, v0, v1, v2}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->a(Landroid/view/View;II)V

    .line 193
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->f:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->a:F

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 194
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 195
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->l:Lgtt;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->l:Lgtt;

    invoke-interface {v0}, Lgtt;->b()V

    .line 198
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->b:Z

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->i:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401b3

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    const v0, 0x7f100856

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->f:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f100855

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->e:Landroid/widget/LinearLayout;

    .line 77
    invoke-virtual {p0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d:Landroid/util/DisplayMetrics;

    .line 78
    const v0, 0x7f100205

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g:Landroid/support/v7/widget/RecyclerView;

    .line 79
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 80
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->i:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->h:Landroid/support/v7/widget/LinearLayoutManager;

    .line 81
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->h:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->j:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 85
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->f:Landroid/widget/LinearLayout;

    new-instance v1, Lgtq;

    invoke-direct {v1, p0}, Lgtq;-><init>(Lcom/santander/app/components/view/dropuplist/ListDropUp;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    iget-object v0, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lgtr;

    invoke-direct {v1, p0}, Lgtr;-><init>(Lcom/santander/app/components/view/dropuplist/ListDropUp;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 145
    return-void
.end method

.method public setOnListDownUpListener(Lgtt;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->l:Lgtt;

    .line 202
    return-void
.end method

.method public setPropriets(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .prologue
    .line 63
    iput-object p2, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->j:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 64
    iput-object p1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->i:Landroid/app/Activity;

    .line 66
    invoke-virtual {p0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d()V

    .line 67
    return-void
.end method

.method public setPropriets(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$Adapter;I)V
    .locals 0

    .prologue
    .line 55
    iput-object p2, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->j:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 56
    iput-object p1, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->i:Landroid/app/Activity;

    .line 57
    iput p3, p0, Lcom/santander/app/components/view/dropuplist/ListDropUp;->k:I

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d()V

    .line 60
    return-void
.end method
