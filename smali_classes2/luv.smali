.class public Lluv;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static i:I

.field private static j:I


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvy;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Z

.field private h:Llve;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput v0, Lluv;->i:I

    .line 48
    const/4 v0, 0x1

    sput v0, Lluv;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/List",
            "<",
            "Lkvy;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    const/16 v0, 0xc8

    iput v0, p0, Lluv;->a:I

    .line 37
    const/16 v0, 0x190

    iput v0, p0, Lluv;->b:I

    .line 41
    iput v1, p0, Lluv;->e:I

    .line 42
    iput v1, p0, Lluv;->f:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lluv;->g:Z

    .line 61
    iput-object p1, p0, Lluv;->c:Landroid/support/v7/widget/RecyclerView;

    .line 62
    iput-object p2, p0, Lluv;->d:Ljava/util/List;

    .line 63
    return-void
.end method

.method static synthetic a(Lluv;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lluv;->b:I

    return v0
.end method

.method static synthetic a(Lluv;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lluv;->e:I

    return p1
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 237
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 238
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkux;

    .line 239
    invoke-virtual {v0}, Lkux;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 240
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ge v1, v0, :cond_0

    .line 241
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 237
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 240
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 244
    :cond_2
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lluv;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lluv;->f:I

    return p1
.end method

.method static synthetic b(Lluv;)Llve;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lluv;->h:Llve;

    return-object v0
.end method

.method static synthetic c(Lluv;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lluv;->e:I

    return v0
.end method

.method static synthetic d(Lluv;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lluv;->f:I

    return v0
.end method

.method static synthetic e(Lluv;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lluv;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic f(Lluv;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lluv;->a:I

    return v0
.end method


# virtual methods
.method public a(Llve;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lluv;->h:Llve;

    .line 67
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 250
    iget-boolean v1, p0, Lluv;->g:Z

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lluv;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lluv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 254
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lluv;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lluv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lluv;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lluv;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lluv;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ne p1, v0, :cond_1

    .line 54
    sget v0, Lluv;->i:I

    .line 57
    :goto_1
    return v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lluv;->getItemCount()I

    move-result v0

    goto :goto_0

    .line 57
    :cond_1
    sget v0, Lluv;->j:I

    goto :goto_1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .prologue
    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 82
    instance-of v0, p1, Llvd;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lluv;->getItemViewType(I)I

    move-result v0

    sget v1, Lluv;->j:I

    if-ne v0, v1, :cond_5

    move-object v0, p1

    .line 83
    check-cast v0, Llvd;

    .line 84
    iget-object v1, p0, Lluv;->d:Ljava/util/List;

    invoke-virtual {v0}, Llvd;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkvy;

    .line 85
    invoke-static {v0}, Llvd;->a(Llvd;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-static {v0}, Llvd;->b(Llvd;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setOnExpansionUpdateListener(Lmbu;)V

    .line 101
    invoke-static {v0}, Llvd;->c(Llvd;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lkvy;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {v0}, Llvd;->d(Llvd;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lkvy;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {v0}, Llvd;->e(Llvd;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1}, Lkvy;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget v2, p0, Lluv;->f:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 106
    invoke-static {v0}, Llvd;->b(Llvd;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v2

    iget v3, p0, Lluv;->a:I

    invoke-virtual {v2, v3}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setDuration(I)V

    .line 107
    invoke-static {v0}, Llvd;->b(Llvd;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 108
    invoke-static {v0}, Llvd;->f(Llvd;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setRotationX(F)V

    .line 119
    :goto_0
    invoke-virtual {v1}, Lkvy;->f()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lkvy;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 120
    invoke-virtual {v1}, Lkvy;->f()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lluv;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0}, Llvd;->g(Llvd;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {v0}, Llvd;->f(Llvd;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lluv;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 123
    invoke-static {v0}, Llvd;->f(Llvd;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 124
    new-instance v2, Lluw;

    invoke-direct {v2, p0, v0, p1}, Lluw;-><init>(Lluv;Llvd;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 204
    invoke-static {v0}, Llvd;->f(Llvd;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-static {v0}, Llvd;->h(Llvd;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :goto_1
    invoke-static {v0}, Llvd;->a(Llvd;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v2, Llva;

    invoke-direct {v2, p0, v1}, Llva;-><init>(Lluv;Lkvy;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_0
    :goto_2
    return-void

    .line 109
    :cond_1
    iget v2, p0, Lluv;->e:I

    invoke-virtual {v0}, Llvd;->getAdapterPosition()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 110
    invoke-static {v0}, Llvd;->b(Llvd;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->b(Z)V

    .line 111
    invoke-static {v0}, Llvd;->f(Llvd;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setRotationX(F)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {v0}, Llvd;->b(Llvd;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    invoke-static {v0}, Llvd;->b(Llvd;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 116
    :cond_3
    invoke-static {v0}, Llvd;->f(Llvd;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setRotationX(F)V

    goto/16 :goto_0

    .line 207
    :cond_4
    invoke-static {v0}, Llvd;->f(Llvd;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 208
    invoke-static {v0}, Llvd;->f(Llvd;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-static {v0}, Llvd;->h(Llvd;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-static {v0}, Llvd;->g(Llvd;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 221
    :cond_5
    instance-of v0, p1, Llvc;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lluv;->getItemViewType(I)I

    move-result v0

    sget v1, Lluv;->i:I

    if-ne v0, v1, :cond_0

    .line 222
    check-cast p1, Llvc;

    .line 223
    invoke-static {p1}, Llvc;->a(Llvc;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Llvb;

    invoke-direct {v1, p0}, Llvb;-><init>(Lluv;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    sget v0, Lluv;->i:I

    if-ne p2, v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402d6

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 73
    new-instance v0, Llvc;

    invoke-direct {v0, p0, v1}, Llvc;-><init>(Lluv;Landroid/view/View;)V

    .line 76
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040369

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    new-instance v0, Llvd;

    invoke-direct {v0, p0, v1}, Llvd;-><init>(Lluv;Landroid/view/View;)V

    goto :goto_0
.end method
