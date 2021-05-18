.class public Llca;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private b:Landroid/support/design/widget/TabLayout;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Lkxm;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkph;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llca;->e:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llca;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Llca;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Llca;->c:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static a()Llca;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Llca;

    invoke-direct {v0}, Llca;-><init>()V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f10010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Llca;->a:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 68
    const v0, 0x7f1003a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Llca;->b:Landroid/support/design/widget/TabLayout;

    .line 69
    const v0, 0x7f1003a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Llca;->c:Landroid/support/v4/view/ViewPager;

    .line 70
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkph;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Llca;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "jsons/assistance/subserviceMapping.json"

    invoke-static {v0, v1}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0, p1}, Lkph;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkph;

    .line 137
    invoke-virtual {v0}, Lkph;->h()Lkpl;

    move-result-object v2

    invoke-virtual {v2}, Lkpl;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p0, Llca;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v0}, Lkph;->h()Lkpl;

    move-result-object v2

    invoke-virtual {v2}, Lkpl;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Llca;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_2
    return-void
.end method

.method static synthetic a(Llca;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Llca;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Llca;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Llca;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Llca;)Landroid/support/design/widget/TabLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Llca;->b:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Llca;->b:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Llca;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 74
    iget-object v0, p0, Llca;->c:Landroid/support/v4/view/ViewPager;

    new-instance v1, Llce;

    invoke-virtual {p0}, Llca;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Llce;-><init>(Llca;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    iget-object v0, p0, Llca;->b:Landroid/support/design/widget/TabLayout;

    new-instance v1, Llcb;

    invoke-direct {v1, p0}, Llcb;-><init>(Llca;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 97
    invoke-direct {p0}, Llca;->d()V

    .line 98
    return-void
.end method

.method static synthetic d(Llca;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Llca;->a:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Llca;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Llca;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Llca;->a:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 111
    iget-object v0, p0, Llca;->d:Lkxm;

    new-instance v1, Llcc;

    invoke-direct {v1, p0}, Llcc;-><init>(Llca;)V

    new-instance v2, Llcd;

    invoke-direct {v2, p0}, Llcd;-><init>(Llca;)V

    invoke-interface {v0, v1, v2}, Lkxm;->a(Lkxl;Lkxl;)V

    goto :goto_0
.end method

.method static synthetic e(Llca;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Llca;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llca;->f:Ljava/util/List;

    iput-object v0, p0, Llca;->e:Ljava/util/List;

    .line 102
    invoke-direct {p0}, Llca;->d()V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lkxn;

    invoke-direct {v0}, Lkxn;-><init>()V

    iput-object v0, p0, Llca;->d:Lkxm;

    .line 54
    return-void
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

    .prologue
    .line 58
    const v0, 0x7f0401f8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    invoke-direct {p0, v0}, Llca;->a(Landroid/view/View;)V

    .line 61
    invoke-direct {p0}, Llca;->c()V

    .line 63
    return-object v0
.end method
