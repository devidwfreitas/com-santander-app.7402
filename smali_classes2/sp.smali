.class public Lsp;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lsr;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lace;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p2, p0, Lsp;->a:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lsp;->b:Landroid/app/Activity;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lsr;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lsr;

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->layout_efetivacao_item:I

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsr;-><init>(Lsp;Landroid/view/View;)V

    .line 35
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lsp;->a:Ljava/util/List;

    .line 41
    invoke-virtual {p0}, Lsp;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public a(Lsr;I)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 47
    iget-object v0, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    iput-object v0, p1, Lsr;->a:Lace;

    .line 49
    iget-object v0, p1, Lsr;->c:Landroid/view/View;

    iget-object v1, p1, Lsr;->a:Lace;

    invoke-virtual {v1}, Lace;->g()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    iget-object v0, p1, Lsr;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lsr;->a:Lace;

    invoke-virtual {v1}, Lace;->f()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p1, Lsr;->a:Lace;

    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lsr;->a:Lace;

    .line 52
    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :cond_0
    iget-object v0, p1, Lsr;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lsp;->b:Landroid/app/Activity;

    sget v2, Llg;->cart_novo_contrato:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_0
    iget-object v0, p1, Lsr;->a:Lace;

    invoke-virtual {v0}, Lace;->p()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p1, Lsr;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v0, p1, Lsr;->f:Landroid/widget/ProgressBar;

    invoke-static {v0, v4}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 64
    iget-object v0, p1, Lsr;->a:Lace;

    invoke-virtual {v0}, Lace;->p()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    iget-object v0, p1, Lsr;->g:Landroid/widget/ImageView;

    sget v1, Lkz;->ic_error_grey:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v0, p1, Lsr;->a:Lace;

    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->i()Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    .line 69
    invoke-virtual {v0}, Lacb;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p1, Lsr;->g:Landroid/widget/ImageView;

    new-instance v3, Lsq;

    invoke-direct {v3, p0, v0, p1}, Lsq;-><init>(Lsp;Lacb;Lsr;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p1, Lsr;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lsr;->a:Lace;

    invoke-virtual {v2}, Lace;->f()Lto;

    move-result-object v2

    invoke-virtual {v2}, Lto;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lsr;->a:Lace;

    .line 57
    invoke-virtual {v2}, Lace;->r()Llm;

    move-result-object v2

    invoke-virtual {v2}, Llm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 81
    :cond_3
    iget-object v0, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_4

    .line 82
    iget-object v0, p1, Lsr;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_4
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lsr;

    invoke-virtual {p0, p1, p2}, Lsp;->a(Lsr;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lsp;->a(Landroid/view/ViewGroup;I)Lsr;

    move-result-object v0

    return-object v0
.end method
