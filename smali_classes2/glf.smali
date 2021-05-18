.class Lglf;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lgld;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lgld;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lglf;->c:Lgld;

    iput-object p2, p0, Lglf;->a:Landroid/content/Context;

    iput-object p3, p0, Lglf;->b:Ljava/util/List;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lglf;->d:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lglf;->e:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lglf;->f:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lglf;->g:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 483
    iget-object v0, p0, Lglf;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 484
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->c(Lgld;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Lglf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 492
    iget-object v1, p0, Lglf;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 493
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 494
    iget-object v1, p0, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->c(Lgld;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 497
    :cond_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 500
    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 505
    :cond_5
    iget-object v0, p0, Lglf;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 506
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->c(Lgld;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 507
    const v2, 0x7f0204d3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 509
    :cond_6
    const v2, 0x7f0204f7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 512
    :cond_7
    return-void
.end method

.method static synthetic a(Lglf;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lglf;->a()V

    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 515
    iget-object v0, p0, Lglf;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 516
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->c(Lgld;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Lglf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 524
    iget-object v1, p0, Lglf;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 525
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 526
    iget-object v1, p0, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->c(Lgld;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 527
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 529
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 532
    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 537
    :cond_5
    iget-object v0, p0, Lglf;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 538
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->c(Lgld;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 539
    const v2, 0x7f0204d3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 541
    :cond_6
    const v2, 0x7f0204f7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 544
    :cond_7
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 559
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lglf;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lglf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    .prologue
    const v9, 0x7f10059d

    const v8, 0x7f090675

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 132
    if-nez v1, :cond_2

    .line 133
    iget-object v0, p0, Lglf;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 134
    const v1, 0x7f040106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 136
    iget-object v0, p0, Lglf;->c:Lgld;

    new-instance v2, Lglm;

    iget-object v3, p0, Lglf;->c:Lgld;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lglm;-><init>(Lgld;Lgle;)V

    invoke-static {v0, v2}, Lgld;->a(Lgld;Lglm;)Lglm;

    .line 138
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lglm;->a(Lglm;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 139
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lglm;->b(Lglm;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 140
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    const v0, 0x7f100599

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lglm;->a(Lglm;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    const v0, 0x7f10059b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lglm;->b(Lglm;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    const v0, 0x7f10059a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lglm;->a(Lglm;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 143
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    const v0, 0x7f10059c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v2, v0}, Lglm;->a(Lglm;Landroid/widget/Button;)Landroid/widget/Button;

    .line 144
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    const v0, 0x7f100598

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v2, v0}, Lglm;->a(Lglm;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 145
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    const v0, 0x7f1005a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lglm;->c(Lglm;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    const v0, 0x7f1005a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lglm;->d(Lglm;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    const v0, 0x7f1005a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lglm;->e(Lglm;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    const v0, 0x7f1005a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lglm;->f(Lglm;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 156
    :goto_0
    iget-object v0, p0, Lglf;->e:Ljava/util/List;

    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lglf;->f:Ljava/util/List;

    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->b(Lglm;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->c(Lglm;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v2, Lglg;

    invoke-direct {v2, p0}, Lglg;-><init>(Lglf;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lglf;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 187
    iget-object v0, p0, Lglf;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 189
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-virtual {v2, v0}, Lgld;->a(Ljava/lang/Object;)V

    .line 190
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->f(Lgld;)Lghu;

    move-result-object v2

    if-nez v2, :cond_0

    .line 191
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-virtual {v2, v0}, Lgld;->a(Ljava/lang/Object;)V

    .line 195
    :cond_0
    invoke-virtual {v0}, Lghu;->u()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 197
    iget-object v2, p0, Lglf;->g:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v0}, Lghu;->z()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->d(Lglm;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lglf;->c:Lgld;

    invoke-static {v3}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v2, p0, Lglf;->g:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lglh;

    invoke-direct {v3, p0, p2}, Lglh;-><init>(Lglf;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    :cond_1
    :goto_1
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->g(Lglm;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lghu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->h(Lglm;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Final "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lghu;->I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :goto_2
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->c(Lgld;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 466
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0, v5}, Lgld;->a(Lgld;Z)Z

    .line 471
    :goto_3
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->g(Lglm;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 472
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->g(Lglm;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v5, v5, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 473
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->i(Lglm;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->j(Lglm;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 478
    return-object v1

    .line 153
    :cond_2
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lglm;

    invoke-static {v2, v0}, Lgld;->a(Lgld;Lglm;)Lglm;

    goto/16 :goto_0

    .line 253
    :cond_3
    invoke-virtual {v0}, Lghu;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UNLIMITED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 254
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lglf;->c:Lgld;

    invoke-static {v3}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0906fd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->d(Lglm;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    :goto_4
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->e(Lglm;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lglf;->a:Landroid/content/Context;

    const v4, 0x7f0906a1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->f(Lglm;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lghu;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    new-instance v2, Lgli;

    invoke-direct {v2, p0, p2}, Lgli;-><init>(Lglf;I)V

    .line 318
    iget-object v3, p0, Lglf;->c:Lgld;

    invoke-static {v3}, Lgld;->b(Lgld;)Lglm;

    move-result-object v3

    invoke-static {v3}, Lglm;->d(Lglm;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v3, p0, Lglf;->c:Lgld;

    invoke-static {v3}, Lgld;->b(Lgld;)Lglm;

    move-result-object v3

    invoke-static {v3}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 258
    :cond_4
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lglf;->c:Lgld;

    invoke-static {v3}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0906a2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->d(Lglm;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v2, p0, Lglf;->d:Ljava/util/List;

    iget-object v3, p0, Lglf;->c:Lgld;

    invoke-static {v3}, Lgld;->b(Lgld;)Lglm;

    move-result-object v3

    invoke-static {v3}, Lglm;->d(Lglm;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 322
    :cond_5
    invoke-virtual {v0}, Lghu;->u()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lglf;->g:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v0}, Lghu;->z()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 328
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 329
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->d(Lglm;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lglf;->c:Lgld;

    invoke-static {v3}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lglj;

    invoke-direct {v3, p0, p2}, Lglj;-><init>(Lglf;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 382
    :cond_6
    iget-object v2, p0, Lglf;->g:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 384
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->d(Lglm;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lglf;->c:Lgld;

    invoke-static {v3}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090647

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v2, p0, Lglf;->c:Lgld;

    invoke-static {v2}, Lgld;->b(Lgld;)Lglm;

    move-result-object v2

    invoke-static {v2}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lglk;

    invoke-direct {v3, p0, p2}, Lglk;-><init>(Lglf;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 446
    :cond_7
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->d(Lglm;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v0

    const-string v2, "Ver fatura"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->g(Lglm;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "Cart\u00e3o Santander"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->h(Lglm;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->e(Lglm;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->f(Lglm;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->b(Lglm;)Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f0204d3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 455
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->b(Lgld;)Lglm;

    move-result-object v0

    invoke-static {v0}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lgll;

    invoke-direct {v2, p0}, Lgll;-><init>(Lglf;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 468
    :cond_8
    iget-object v0, p0, Lglf;->c:Lgld;

    invoke-static {v0, v7}, Lgld;->a(Lgld;Z)Z

    goto/16 :goto_3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 553
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
