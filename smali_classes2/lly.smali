.class public Llly;
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


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lktn;",
            ">;"
        }
    .end annotation
.end field

.field private f:Llmd;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lktn;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-boolean v0, p0, Llly;->a:Z

    .line 34
    iput v0, p0, Llly;->b:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Llly;->c:I

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Llly;->d:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llly;->e:Ljava/util/List;

    .line 42
    iget-object v0, p0, Llly;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    return-void
.end method

.method static synthetic a(Llly;)Llmd;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Llly;->f:Llmd;

    return-object v0
.end method


# virtual methods
.method public a(Llmd;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Llly;->f:Llmd;

    .line 47
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Llly;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Llly;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llly;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 53
    if-lez p1, :cond_0

    invoke-virtual {p0}, Llly;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 54
    const/4 v0, 0x3

    .line 59
    :goto_0
    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Llly;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lktn;

    .line 59
    invoke-virtual {v0}, Lktn;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    .line 83
    instance-of v0, p1, Llma;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Llly;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 84
    check-cast p1, Llma;

    .line 85
    invoke-static {p1}, Llma;->a(Llma;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-static {p1}, Llma;->a(Llma;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lllz;

    invoke-direct {v1, p0}, Lllz;-><init>(Llly;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    instance-of v0, p1, Llmc;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Llly;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 95
    iget-object v0, p0, Llly;->e:Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lktn;

    .line 96
    check-cast p1, Llmc;

    .line 97
    invoke-static {p1}, Llmc;->a(Llmc;)Lcom/santander/app/seguros/ui/widgets/JustifyTextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {p1}, Llmc;->a(Llmc;)Lcom/santander/app/seguros/ui/widgets/JustifyTextView;

    move-result-object v1

    invoke-virtual {v0}, Lktn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :cond_2
    instance-of v0, p1, Llmb;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Llly;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Llly;->e:Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lktn;

    .line 101
    check-cast p1, Llmb;

    .line 102
    invoke-static {p1}, Llmb;->a(Llmb;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lktn;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    const v1, 0x7f040372

    const/4 v2, 0x0

    .line 64
    packed-switch p2, :pswitch_data_0

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    new-instance v0, Llmc;

    invoke-direct {v0, p0, v1}, Llmc;-><init>(Llly;Landroid/view/View;)V

    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 67
    new-instance v0, Llmc;

    invoke-direct {v0, p0, v1}, Llmc;-><init>(Llly;Landroid/view/View;)V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040371

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 70
    new-instance v0, Llmb;

    invoke-direct {v0, p0, v1}, Llmb;-><init>(Llly;Landroid/view/View;)V

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040370

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 73
    new-instance v0, Llma;

    invoke-direct {v0, p0, v1}, Llma;-><init>(Llly;Landroid/view/View;)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
