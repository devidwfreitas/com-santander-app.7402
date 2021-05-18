.class public Lltd;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lltg;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvi;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lltf;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvi;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lltd;->d:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lltd;->b:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lltd;->a:Landroid/support/v7/widget/RecyclerView;

    .line 35
    return-void
.end method

.method static synthetic a(Lltd;)Lltf;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lltd;->c:Lltf;

    return-object v0
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 107
    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 109
    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 116
    :cond_0
    :goto_1
    return-void

    .line 106
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Lltd;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lltd;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method private a(I)Z
    .locals 2

    .prologue
    .line 93
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    if-ne v0, p1, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lltd;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkvi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p0}, Lltd;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 153
    iget-object v3, p0, Lltd;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 160
    :cond_0
    return-object v2
.end method

.method public a(Landroid/view/ViewGroup;I)Lltg;
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    new-instance v1, Lltg;

    invoke-direct {v1, p0, v0}, Lltg;-><init>(Lltd;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lltd;->b:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lltd;->d:Ljava/util/List;

    .line 43
    :goto_0
    invoke-virtual {p0}, Lltd;->notifyDataSetChanged()V

    .line 44
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public a(Lltf;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lltd;->c:Lltf;

    .line 48
    return-void
.end method

.method public a(Lltg;I)V
    .locals 3

    .prologue
    const v2, 0x7f0e00b9

    .line 58
    invoke-static {p1}, Lltg;->a(Lltg;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lltd;->b:Ljava/util/List;

    invoke-virtual {p1}, Lltg;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvi;

    .line 61
    invoke-virtual {v0}, Lkvi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Lltg;->a(Lltg;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 63
    invoke-static {p1}, Lltg;->a(Lltg;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 64
    invoke-static {p1}, Lltg;->b(Lltg;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {p1}, Lltg;->a(Lltg;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 67
    iget-object v0, p0, Lltd;->b:Ljava/util/List;

    invoke-virtual {p1}, Lltg;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvi;

    .line 68
    invoke-static {p1}, Lltg;->b(Lltg;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvi;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p1}, Lltg;->getAdapterPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lltd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p1}, Lltg;->a(Lltg;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 72
    invoke-static {p1}, Lltg;->b(Lltg;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lltd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    :goto_1
    invoke-static {p1}, Lltg;->a(Lltg;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Llte;

    invoke-direct {v1, p0, p1}, Llte;-><init>(Lltd;Lltg;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {p1}, Lltg;->a(Lltg;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 75
    invoke-static {p1}, Lltg;->b(Lltg;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lltd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-virtual {p0}, Lltd;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 168
    :try_start_0
    iget-object v0, p0, Lltd;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 169
    iget-object v3, p0, Lltd;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvi;

    invoke-virtual {v0}, Lkvi;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 176
    :cond_0
    return-object v2
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lltd;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lltg;

    invoke-virtual {p0, p1, p2}, Lltd;->a(Lltg;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lltd;->a(Landroid/view/ViewGroup;I)Lltg;

    move-result-object v0

    return-object v0
.end method
