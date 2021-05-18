.class public Llhw;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llhx;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lknx;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lknx;",
            ">;",
            "Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Llhw;->a:Ljava/util/List;

    .line 31
    iput-object p2, p0, Llhw;->b:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llhx;
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040354

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    new-instance v1, Llhx;

    invoke-direct {v1, p0, v0}, Llhx;-><init>(Llhw;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Llhx;I)V
    .locals 6

    .prologue
    const v5, 0x7f0e00b1

    const v4, 0x7f0e009b

    const v3, 0x7f0e0078

    .line 43
    iget-object v0, p0, Llhw;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lknx;

    .line 44
    invoke-virtual {v0}, Lknx;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PAGA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p1}, Llhx;->a(Llhx;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lknx;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-static {p1}, Llhx;->b(Llhx;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lknx;->a()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {p1}, Llhx;->c(Llhx;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Llhw;->b:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    invoke-static {p1}, Llhx;->a(Llhx;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llhw;->b:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {v0}, Lknx;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "a vencer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-static {p1}, Llhx;->a(Llhx;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lknx;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {p1}, Llhx;->b(Llhx;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lknx;->b()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {p1}, Llhx;->c(Llhx;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Llhw;->b:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    invoke-static {p1}, Llhx;->a(Llhx;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llhw;->b:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p1}, Llhx;->a(Llhx;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lknx;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {p1}, Llhx;->b(Llhx;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lknx;->b()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {p1}, Llhx;->c(Llhx;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Llhw;->b:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    invoke-static {p1}, Llhx;->a(Llhx;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llhw;->b:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Llhw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Llhx;

    invoke-virtual {p0, p1, p2}, Llhw;->a(Llhx;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Llhw;->a(Landroid/view/ViewGroup;I)Llhx;

    move-result-object v0

    return-object v0
.end method
