.class public Llik;
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
.field public static final a:I = 0x1

.field public static final b:I = 0x2


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lktq;",
            ">;"
        }
    .end annotation
.end field

.field private d:Llir;

.field private e:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lktq;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 57
    iput-object p1, p0, Llik;->c:Ljava/util/List;

    .line 58
    iput-object p2, p0, Llik;->e:Landroid/support/v7/widget/RecyclerView;

    .line 59
    return-void
.end method

.method static synthetic a(Llik;)Llir;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Llik;->d:Llir;

    return-object v0
.end method

.method static synthetic b(Llik;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Llik;->e:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method public a(Llir;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Llik;->d:Llir;

    .line 54
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Llik;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llik;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 76
    instance-of v0, p1, Lliq;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 77
    check-cast v0, Lliq;

    .line 78
    iget-object v1, p0, Llik;->c:Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lktq;

    .line 79
    invoke-static {v0}, Lliq;->a(Lliq;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-static {v0}, Lliq;->b(Lliq;)Landroid/support/v7/widget/CardView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-static {v0}, Lliq;->b(Lliq;)Landroid/support/v7/widget/CardView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/CardView;->setClickable(Z)V

    .line 82
    invoke-static {v0}, Lliq;->c(Lliq;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1}, Lktq;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    invoke-static {v0}, Lliq;->d(Lliq;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    move-result-object v2

    invoke-virtual {v1}, Lktq;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {v0}, Lliq;->e(Lliq;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    move-result-object v2

    invoke-virtual {v1}, Lktq;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Llil;

    invoke-direct {v3, p0, v0, v1}, Llil;-><init>(Llik;Lliq;Lktq;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    invoke-virtual {v1}, Lktq;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-static {v0}, Lliq;->a(Lliq;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Llim;

    invoke-direct {v3, p0, v1}, Llim;-><init>(Llik;Lktq;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {v0}, Lliq;->a(Lliq;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    :goto_0
    invoke-static {v0}, Lliq;->g(Lliq;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setOnExpansionUpdateListener(Lmbu;)V

    .line 124
    invoke-virtual {v1}, Lktq;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-static {v0}, Lliq;->g(Lliq;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->b(Z)V

    .line 126
    invoke-static {v0}, Lliq;->h(Lliq;)Landroid/widget/ImageView;

    move-result-object v2

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 132
    :goto_1
    invoke-static {v0}, Lliq;->b(Lliq;)Landroid/support/v7/widget/CardView;

    move-result-object v2

    new-instance v3, Llin;

    invoke-direct {v3, p0, v0, v1}, Llin;-><init>(Llik;Lliq;Lktq;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-static {v0}, Lliq;->g(Lliq;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v1

    new-instance v2, Llio;

    invoke-direct {v2, p0, v0, p1}, Llio;-><init>(Llik;Lliq;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setOnExpansionUpdateListener(Lmbu;)V

    .line 170
    :cond_0
    return-void

    .line 119
    :cond_1
    invoke-static {v0}, Lliq;->a(Lliq;)Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {v0}, Lliq;->g(Lliq;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 129
    invoke-static {v0}, Lliq;->h(Lliq;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotationX(F)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040366

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    new-instance v0, Lliq;

    invoke-direct {v0, p0, v1}, Lliq;-><init>(Llik;Landroid/view/View;)V

    .line 71
    :goto_0
    return-object v0

    .line 66
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040365

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    new-instance v0, Llip;

    invoke-direct {v0, p0, v1}, Llip;-><init>(Llik;Landroid/view/View;)V

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
