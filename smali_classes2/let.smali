.class public Llet;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lleu;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Llet;->a:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lleu;
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    new-instance v1, Lleu;

    invoke-direct {v1, p0, v0}, Lleu;-><init>(Llet;Landroid/view/View;)V

    return-object v1
.end method

.method public a()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Llet;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Llet;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 70
    iget-object v0, p0, Llet;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqf;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lkqf;->a(Z)V

    .line 71
    invoke-virtual {p0, v1}, Llet;->notifyItemChanged(I)V

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public a(Lleu;I)V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Llet;->a:Ljava/util/List;

    invoke-virtual {p1}, Lleu;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqf;

    .line 42
    invoke-static {p1}, Lleu;->a(Lleu;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkqf;->g()Lkod;

    move-result-object v2

    invoke-virtual {v2}, Lkod;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {v0}, Lkqf;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v2, "CONFORME LEGISLACAO VIGENTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CONFORME LEGISLA\u00c7\u00c3O VIGENTE"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    invoke-static {p1}, Lleu;->b(Lleu;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :goto_0
    invoke-static {p1}, Lleu;->d(Lleu;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lkqf;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v0}, Lkqf;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {p1}, Lleu;->e(Lleu;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020359

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    :goto_1
    invoke-virtual {p1}, Lleu;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Llet;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 60
    invoke-static {p1}, Lleu;->f(Lleu;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :goto_2
    return-void

    .line 49
    :cond_0
    invoke-static {p1}, Lleu;->c(Lleu;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {p1}, Lleu;->e(Lleu;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02046e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 62
    :cond_2
    invoke-static {p1}, Lleu;->f(Lleu;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Llet;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    .line 79
    :goto_0
    invoke-virtual {p0}, Llet;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 80
    iget-object v0, p0, Llet;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqf;

    invoke-virtual {v0, v2}, Lkqf;->a(Z)V

    .line 81
    invoke-virtual {p0, v1}, Llet;->notifyItemChanged(I)V

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Llet;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llet;->a:Ljava/util/List;

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
    check-cast p1, Lleu;

    invoke-virtual {p0, p1, p2}, Llet;->a(Lleu;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Llet;->a(Landroid/view/ViewGroup;I)Lleu;

    move-result-object v0

    return-object v0
.end method
