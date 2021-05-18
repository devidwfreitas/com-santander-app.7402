.class public Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private g:Lllb;

.field private h:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->a(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->a()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->a(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->a()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->a(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->a()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->a(Landroid/content/Context;)V

    .line 67
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->a()V

    .line 68
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f100947

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->c:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f100948

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->d:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f101083

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->e:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f101085

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 77
    const v0, 0x7f101084

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->h:Landroid/support/v7/widget/RecyclerView;

    .line 79
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 98
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    const v1, 0x7f040345

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->a:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->addView(Landroid/view/View;)V

    .line 101
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->b:Landroid/content/Context;

    .line 102
    return-void
.end method


# virtual methods
.method public a(Lkrz;Landroid/content/Context;Lkqp;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p1}, Lkrz;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    move v1, v2

    .line 109
    :goto_0
    invoke-virtual {p3}, Lkqp;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    move v3, v2

    .line 110
    :goto_1
    invoke-virtual {p1}, Lkrz;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 111
    invoke-virtual {p3}, Lkqp;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrp;

    invoke-virtual {v0}, Lkrp;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lkrz;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqo;

    invoke-virtual {v0}, Lkqo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lkrz;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 109
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 132
    :goto_2
    sget-object v1, Lkqm;->INSTANCE:Lkqm;

    invoke-virtual {p1}, Lkrz;->g()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkqm;->setmCoverages(Ljava/util/List;)V

    .line 133
    sget-object v1, Lkqm;->INSTANCE:Lkqm;

    invoke-virtual {p1}, Lkrz;->f()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkqm;->setmAssistances(Ljava/util/List;)V

    .line 135
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->h:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v4, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 137
    new-instance v1, Lllb;

    invoke-virtual {p3}, Lkqp;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, p2, v2}, Lllb;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->g:Lllb;

    .line 139
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->g:Lllb;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 140
    return-void

    .line 118
    :cond_3
    invoke-virtual {p1}, Lkrz;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public setCardViewPlanOffer(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setPrizeValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    invoke-static {p1}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-static {v0}, Lmhj;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
