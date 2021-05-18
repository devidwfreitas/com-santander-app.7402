.class public Lcom/santander/app/widget/BottomExapandableView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

.field private g:Landroid/view/View;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/santander/app/widget/BottomExapandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/santander/app/widget/BottomExapandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/widget/BottomExapandableView;->h:Z

    .line 56
    invoke-direct {p0, p2}, Lcom/santander/app/widget/BottomExapandableView;->a(Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/santander/app/widget/BottomExapandableView;->b()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/santander/app/widget/BottomExapandableView;->b()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->g:Landroid/view/View;

    invoke-direct {p0}, Lcom/santander/app/widget/BottomExapandableView;->b()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/santander/app/widget/BottomExapandableView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0402b9

    invoke-static {v0, v1, p0}, Lcom/santander/app/widget/BottomExapandableView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-direct {p0, v0}, Lcom/santander/app/widget/BottomExapandableView;->a(Landroid/view/View;)V

    .line 63
    invoke-direct {p0}, Lcom/santander/app/widget/BottomExapandableView;->a()V

    .line 64
    invoke-direct {p0, p1}, Lcom/santander/app/widget/BottomExapandableView;->b(Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f100e3a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->g:Landroid/view/View;

    .line 69
    const v0, 0x7f100e3b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->a:Landroid/widget/FrameLayout;

    .line 70
    const v0, 0x7f100e3c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->b:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f100e3d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->c:Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f100796

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->d:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->e:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f100595

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    iput-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->f:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    .line 75
    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 141
    if-eqz p1, :cond_0

    .line 142
    aput v1, v0, v3

    .line 143
    aput v2, v0, v4

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/santander/app/widget/BottomExapandableView;->g:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 150
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 151
    new-instance v1, Lnev;

    invoke-direct {v1, p0, p1}, Lnev;-><init>(Lcom/santander/app/widget/BottomExapandableView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 176
    return-void

    .line 145
    :cond_0
    aput v2, v0, v3

    .line 146
    aput v1, v0, v4

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/widget/BottomExapandableView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/santander/app/widget/BottomExapandableView;->h:Z

    return v0
.end method

.method public static synthetic a(Lcom/santander/app/widget/BottomExapandableView;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/santander/app/widget/BottomExapandableView;->h:Z

    return p1
.end method

.method private b()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lneu;

    invoke-direct {v0, p0}, Lneu;-><init>(Lcom/santander/app/widget/BottomExapandableView;)V

    return-object v0
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/santander/app/widget/BottomExapandableView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lflv;->BottomExapandableView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 80
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    iget-object v2, p0, Lcom/santander/app/widget/BottomExapandableView;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/santander/app/widget/BottomExapandableView;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void

    .line 84
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->d:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static synthetic b(Lcom/santander/app/widget/BottomExapandableView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/santander/app/widget/BottomExapandableView;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/widget/BottomExapandableView;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/santander/app/widget/BottomExapandableView;->a(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/widget/BottomExapandableView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->g:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 127
    iget-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 128
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 129
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 130
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/widget/BottomExapandableView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 134
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 135
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 136
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/widget/BottomExapandableView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/widget/BottomExapandableView;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->f:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/widget/BottomExapandableView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/santander/app/widget/BottomExapandableView;->d()V

    return-void
.end method


# virtual methods
.method public setContentFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/santander/app/widget/BottomExapandableView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100065

    .line 184
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 186
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/santander/app/widget/BottomExapandableView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method
