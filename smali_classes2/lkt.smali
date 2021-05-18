.class public Llkt;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llky;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llkx;",
            ">;"
        }
    .end annotation
.end field

.field private b:Llkz;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llkx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 56
    iput-object p1, p0, Llkt;->a:Ljava/util/List;

    .line 57
    return-void
.end method

.method static synthetic a(Llkt;)Llkz;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Llkt;->b:Llkz;

    return-object v0
.end method

.method private a(Llky;Llkx;)V
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p2}, Llkx;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkql;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p2}, Llkx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkql;

    .line 137
    invoke-static {p1}, Llky;->c(Llky;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Llkv;

    invoke-direct {v2, p0, v0, p2}, Llkv;-><init>(Llkt;Lkql;Llkx;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-static {p1}, Llky;->b(Llky;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    move-result-object v1

    invoke-virtual {v0}, Lkql;->a()Lkqk;

    move-result-object v0

    invoke-virtual {v0}, Lkqk;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    :goto_0
    invoke-static {p1}, Llky;->a(Llky;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    return-void

    .line 146
    :cond_1
    invoke-virtual {p2}, Llkx;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lksd;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p2}, Llkx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lksd;

    .line 148
    invoke-static {p1}, Llky;->c(Llky;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Llkw;

    invoke-direct {v2, p0, v0, p2}, Llkw;-><init>(Llkt;Lksd;Llkx;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-static {p1}, Llky;->b(Llky;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    move-result-object v1

    invoke-virtual {v0}, Lksd;->a()Lksc;

    move-result-object v0

    invoke-virtual {v0}, Lksc;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f04036b

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llky;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Llky;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0}, Llkt;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Llky;-><init>(Llkt;Landroid/view/View;)V

    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0}, Llkt;->getItemCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 31
    iget-object v0, p0, Llkt;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llkx;

    .line 32
    invoke-virtual {p0, v3}, Llkt;->notifyItemRemoved(I)V

    .line 33
    iget-object v1, p0, Llkt;->a:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    invoke-virtual {p0, v2}, Llkt;->notifyItemInserted(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llkt;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llkx;

    .line 40
    invoke-virtual {v0, p1}, Llkx;->a(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, p2}, Llkt;->notifyItemChanged(I)V

    .line 42
    return-void
.end method

.method public a(Llky;I)V
    .locals 5

    .prologue
    const v4, 0x7f090315

    const v3, 0x7f090058

    .line 105
    iget-object v0, p0, Llkt;->a:Ljava/util/List;

    invoke-virtual {p1}, Llky;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llkx;

    .line 106
    invoke-virtual {v0}, Llkx;->b()Llla;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Llkx;->b()Llla;

    move-result-object v1

    sget-object v2, Llla;->ACCOUNT:Llla;

    if-ne v1, v2, :cond_1

    .line 107
    invoke-static {p1}, Llky;->a(Llky;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p1, Llky;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    :goto_0
    invoke-virtual {v0}, Llkx;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 112
    invoke-direct {p0, p1, v0}, Llkt;->a(Llky;Llkx;)V

    .line 132
    :goto_1
    return-void

    .line 108
    :cond_1
    invoke-virtual {v0}, Llkx;->b()Llla;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Llkx;->b()Llla;

    move-result-object v1

    sget-object v2, Llla;->CREDITCARD:Llla;

    if-ne v1, v2, :cond_0

    .line 109
    invoke-static {p1}, Llky;->a(Llky;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p1, Llky;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {p1}, Llky;->a(Llky;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-virtual {v0}, Llkx;->b()Llla;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Llkx;->b()Llla;

    move-result-object v1

    sget-object v2, Llla;->ACCOUNT:Llla;

    if-ne v1, v2, :cond_4

    .line 116
    invoke-static {p1}, Llky;->b(Llky;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    move-result-object v1

    iget-object v2, p1, Llky;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_3
    :goto_2
    invoke-static {p1}, Llky;->c(Llky;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Llku;

    invoke-direct {v2, p0, v0}, Llku;-><init>(Llkt;Llkx;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {v0}, Llkx;->b()Llla;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Llkx;->b()Llla;

    move-result-object v1

    sget-object v2, Llla;->CREDITCARD:Llla;

    if-ne v1, v2, :cond_3

    .line 119
    invoke-static {p1}, Llky;->b(Llky;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    move-result-object v1

    iget-object v2, p1, Llky;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public a(Llkz;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Llkt;->b:Llkz;

    .line 92
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Llkt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Llky;

    invoke-virtual {p0, p1, p2}, Llkt;->a(Llky;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Llkt;->a(Landroid/view/ViewGroup;I)Llky;

    move-result-object v0

    return-object v0
.end method
