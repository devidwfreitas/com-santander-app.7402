.class public Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lhgu;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/santander/app/components/view/SantanderTextView;

.field private c:Lcom/santander/app/components/view/SantanderTextView;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/santander/app/components/view/SantanderTextView;

.field private g:Lcom/santander/app/components/view/SantanderTextView;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Lhfz;

.field private k:Lhfd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 84
    const v0, 0x7f10090f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->a:Landroid/widget/LinearLayout;

    .line 85
    const v0, 0x7f100910

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->b:Lcom/santander/app/components/view/SantanderTextView;

    .line 86
    const v0, 0x7f100255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->c:Lcom/santander/app/components/view/SantanderTextView;

    .line 87
    const v0, 0x7f100913

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->d:Landroid/support/v7/widget/RecyclerView;

    .line 88
    const v0, 0x7f10090c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->e:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f10090d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->f:Lcom/santander/app/components/view/SantanderTextView;

    .line 90
    const v0, 0x7f10090e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->g:Lcom/santander/app/components/view/SantanderTextView;

    .line 91
    const v0, 0x7f100911

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->h:Landroid/widget/FrameLayout;

    .line 92
    const v0, 0x7f100912

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->i:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 95
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lhfd;

    invoke-direct {v1}, Lhfd;-><init>()V

    iput-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->k:Lhfd;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 98
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->d()V

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->e()V

    .line 103
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 107
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->d:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 111
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lhgt;

    invoke-direct {v0, p0}, Lhgt;-><init>(Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->a(Lhfz;)V

    .line 131
    return-void
.end method

.method private f()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->g()V

    .line 135
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->h()V

    .line 136
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->j()V

    .line 137
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 140
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 141
    const-string v1, "Sua d\u00edvida total em "

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 142
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->j:Lhfz;

    invoke-interface {v1}, Lhfz;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Lbfj;

    .line 143
    const-string v1, " \u00e9:"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 144
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->b:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 149
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 150
    const-string v1, "R$ "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v4}, Landroid/text/style/SuperscriptSpan;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 153
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->j:Lhfz;

    invoke-interface {v1}, Lhfz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 154
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->c:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->i()V

    .line 157
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    .line 160
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 161
    const-string v1, "R$ "

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Lbfj;

    .line 163
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->j:Lhfz;

    invoke-interface {v1}, Lhfz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 164
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->k:Lhfd;

    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->j:Lhfz;

    invoke-interface {v1}, Lhfz;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhfd;->a(Ljava/util/List;)V

    .line 169
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 197
    if-eqz v0, :cond_0

    .line 199
    invoke-static {v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->k()V

    .line 182
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    return-void
.end method

.method public a(Lhfz;)V
    .locals 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->j:Lhfz;

    .line 174
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->f()V

    .line 175
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->k()V

    .line 189
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->h:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_0

    .line 69
    invoke-static {}, Lhhr;->a()V

    .line 70
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->i:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v0, :cond_2

    const/high16 v1, 0x43b40000    # 360.0f

    .line 72
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 75
    if-eqz v0, :cond_3

    .line 76
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->d()V

    .line 81
    :cond_0
    :goto_2
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_2
    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_1

    .line 78
    :cond_3
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->c()V

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    const v0, 0x7f0401da

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;->a(Landroid/view/View;)V

    .line 64
    return-void
.end method
