.class public Llka;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llkc;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Llkd;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqd;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqd;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lkqe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Llka;->c:Ljava/util/List;

    .line 36
    iput-object p2, p0, Llka;->d:Ljava/util/List;

    .line 37
    return-void
.end method

.method static synthetic a(Llka;)Llkd;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Llka;->b:Llkd;

    return-object v0
.end method

.method static synthetic b(Llka;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Llka;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llkc;
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04013c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llka;->a:Landroid/view/View;

    .line 42
    new-instance v0, Llkc;

    iget-object v1, p0, Llka;->a:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Llkc;-><init>(Llka;Landroid/view/View;)V

    return-object v0
.end method

.method public a(Llkc;I)V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Llka;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqd;

    .line 50
    iget-object v1, p0, Llka;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_0

    .line 51
    invoke-static {p1}, Llkc;->a(Llkc;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Llka;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 56
    invoke-virtual {v0}, Lkqd;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Llka;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkqe;

    invoke-virtual {v1}, Lkqe;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-static {p1}, Llkc;->b(Llkc;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v1, p0, Llka;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkqe;

    invoke-virtual {v1}, Lkqe;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {p1}, Llkc;->c(Llkc;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v3, Llkb;

    invoke-direct {v3, p0, v2}, Llkb;-><init>(Llka;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 70
    :cond_2
    return-void
.end method

.method public a(Llkd;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Llka;->b:Llkd;

    .line 105
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Llka;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Llkc;

    invoke-virtual {p0, p1, p2}, Llka;->a(Llkc;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Llka;->a(Landroid/view/ViewGroup;I)Llkc;

    move-result-object v0

    return-object v0
.end method
