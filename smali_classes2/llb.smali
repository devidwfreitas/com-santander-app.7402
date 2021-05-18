.class public Lllb;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lllc;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lkqq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lllb;->a:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lllb;->c:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lllb;->d:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lllc;
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040347

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lllb;->b:Landroid/view/View;

    .line 41
    new-instance v0, Lllc;

    iget-object v1, p0, Lllb;->b:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lllc;-><init>(Lllb;Landroid/view/View;)V

    return-object v0
.end method

.method public a(Lllc;I)V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lllb;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqo;

    .line 50
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lllb;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 51
    invoke-virtual {v0}, Lkqo;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lllb;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkqq;

    invoke-virtual {v1}, Lkqq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v3, p1, Lllc;->a:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iget-object v1, p0, Lllb;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkqq;

    invoke-virtual {v1}, Lkqq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 57
    :cond_1
    iget-object v1, p1, Lllc;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkqo;->l()Lkrk;

    move-result-object v0

    invoke-virtual {v0}, Lkrk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lllb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lllc;

    invoke-virtual {p0, p1, p2}, Lllb;->a(Lllc;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lllb;->a(Landroid/view/ViewGroup;I)Lllc;

    move-result-object v0

    return-object v0
.end method
