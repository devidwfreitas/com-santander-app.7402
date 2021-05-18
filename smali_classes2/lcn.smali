.class public Llcn;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "CERTIFICATE_ID_KEY"

.field private static final b:Ljava/lang/String; = "PRODUCT_CODE_KEY"


# instance fields
.field private c:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private d:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;

.field private k:Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;

.field private l:Landroid/widget/Button;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkps;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Lkxm;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Llcs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Llcn;->n:I

    return-void
.end method

.method static synthetic a(Llcn;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Llcn;->n:I

    return p1
.end method

.method static synthetic a(Llcn;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Llcn;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method static synthetic a(Llcn;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Llcn;->m:Ljava/util/List;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Llcn;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Llcn;

    invoke-direct {v0}, Llcn;-><init>()V

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v2, "CERTIFICATE_ID_KEY"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "PRODUCT_CODE_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v1}, Llcn;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 111
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->j()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Llcn;->e:Landroid/widget/TextView;

    const v2, 0x7f090521

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Llcn;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    iget-object v0, p0, Llcn;->m:Ljava/util/List;

    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0}, Llcn;->b()V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-direct {p0}, Llcn;->c()V

    goto :goto_0
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 186
    iget-object v0, p0, Llcn;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkps;

    .line 188
    iget-object v1, p0, Llcn;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkps;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, p0, Llcn;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkps;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v0}, Lkps;->f()Lkol;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v0}, Lkps;->f()Lkol;

    move-result-object v1

    invoke-virtual {v1}, Lkol;->a()I

    move-result v1

    .line 193
    if-nez v1, :cond_0

    .line 194
    iget-object v2, p0, Llcn;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    :cond_0
    iget-object v2, p0, Llcn;->j:Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;->a(II)V

    .line 197
    invoke-virtual {v0}, Lkps;->f()Lkol;

    move-result-object v0

    invoke-virtual {v0}, Lkol;->b()I

    move-result v0

    .line 198
    if-nez v0, :cond_1

    .line 199
    iget-object v1, p0, Llcn;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    :cond_1
    iget-object v1, p0, Llcn;->k:Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;->a(II)V

    .line 203
    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f10010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Llcn;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 99
    const v0, 0x7f1009e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    iput-object v0, p0, Llcn;->d:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    .line 100
    const v0, 0x7f10095d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llcn;->e:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f1009e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llcn;->f:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f1009e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llcn;->g:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f1009e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llcn;->h:Landroid/widget/LinearLayout;

    .line 104
    const v0, 0x7f1009ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llcn;->i:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f1009e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;

    iput-object v0, p0, Llcn;->j:Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;

    .line 106
    const v0, 0x7f1009ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;

    iput-object v0, p0, Llcn;->k:Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;

    .line 107
    const v0, 0x7f10079b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llcn;->l:Landroid/widget/Button;

    .line 108
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Llcn;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 125
    iget-object v0, p0, Llcn;->o:Lkxm;

    iget-object v1, p0, Llcn;->p:Ljava/lang/String;

    iget-object v2, p0, Llcn;->q:Ljava/lang/String;

    new-instance v3, Llco;

    invoke-direct {v3, p0}, Llco;-><init>(Llcn;)V

    new-instance v4, Llcp;

    invoke-direct {v4, p0}, Llcp;-><init>(Llcn;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lkxm;->a(Ljava/lang/String;Ljava/lang/String;Lkxl;Lkxl;)V

    .line 144
    return-void
.end method

.method static synthetic b(Llcn;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Llcn;->c()V

    return-void
.end method

.method static synthetic b(Llcn;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Llcn;->a(I)V

    return-void
.end method

.method static synthetic c(Llcn;)Llcs;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Llcn;->r:Llcs;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    new-instance v0, Llae;

    invoke-virtual {p0}, Llcn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Llcn;->m:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Llae;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 148
    iget-object v1, p0, Llcn;->d:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    invoke-virtual {v0, v1}, Llae;->a(Landroid/support/v4/view/ViewPager;)V

    .line 149
    iget-object v1, p0, Llcn;->d:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 151
    iget-object v0, p0, Llcn;->d:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    invoke-virtual {v0, v3}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setClipToPadding(Z)V

    .line 152
    iget-object v0, p0, Llcn;->d:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    new-instance v1, Lmhy;

    invoke-direct {v1}, Lmhy;-><init>()V

    invoke-virtual {v0, v3, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 153
    iget-object v0, p0, Llcn;->d:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {v0, v2, v3}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setScrollDurationFactor(D)V

    .line 155
    iget-object v0, p0, Llcn;->d:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    new-instance v1, Llcq;

    invoke-direct {v1, p0}, Llcq;-><init>(Llcn;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 173
    iget v0, p0, Llcn;->n:I

    invoke-direct {p0, v0}, Llcn;->a(I)V

    .line 175
    iget-object v0, p0, Llcn;->l:Landroid/widget/Button;

    new-instance v1, Llcr;

    invoke-direct {v1, p0}, Llcr;-><init>(Llcn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-void
.end method

.method static synthetic d(Llcn;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Llcn;->n:I

    return v0
.end method

.method static synthetic e(Llcn;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Llcn;->m:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Llcs;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Llcn;->r:Llcs;

    .line 207
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Lkxn;

    invoke-direct {v0}, Lkxn;-><init>()V

    iput-object v0, p0, Llcn;->o:Lkxm;

    .line 80
    invoke-virtual {p0}, Llcn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Llcn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CERTIFICATE_ID_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llcn;->p:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Llcn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PRODUCT_CODE_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llcn;->q:Ljava/lang/String;

    .line 84
    :cond_0
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
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    const v0, 0x7f0401fd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Llcn;->a(Landroid/view/View;)V

    .line 92
    invoke-direct {p0}, Llcn;->a()V

    .line 94
    return-object v0
.end method
