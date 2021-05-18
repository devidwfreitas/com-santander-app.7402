.class Lhku;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field protected a:Lhkt;

.field protected b:Lhxl;

.field protected c:Landroid/content/Context;

.field protected d:Lcom/santander/app/components/view/SantanderTextView;

.field protected e:Lcom/santander/app/components/view/SantanderTextView;

.field protected f:Lcom/santander/app/components/view/SantanderTextView;

.field protected g:Lcom/santander/app/components/view/SantanderTextView;

.field protected h:Lcom/santander/app/components/view/SantanderTextView;

.field protected i:Lcom/santander/app/components/view/SantanderTextView;

.field protected j:Lcom/santander/app/components/view/SantanderTextView;

.field protected k:Lcom/santander/app/components/view/SantanderTextView;

.field protected l:Landroid/widget/ImageView;

.field protected m:Landroid/view/View;

.field protected n:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lhkt;)V
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c2

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhku;->c:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lhku;->a:Lhkt;

    .line 45
    iget-object v0, p0, Lhku;->itemView:Landroid/view/View;

    const v1, 0x7f10046c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhku;->e:Lcom/santander/app/components/view/SantanderTextView;

    .line 46
    iget-object v0, p0, Lhku;->itemView:Landroid/view/View;

    const v1, 0x7f10046d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhku;->f:Lcom/santander/app/components/view/SantanderTextView;

    .line 47
    iget-object v0, p0, Lhku;->itemView:Landroid/view/View;

    const v1, 0x7f10046e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhku;->g:Lcom/santander/app/components/view/SantanderTextView;

    .line 48
    iget-object v0, p0, Lhku;->itemView:Landroid/view/View;

    const v1, 0x7f100470

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhku;->h:Lcom/santander/app/components/view/SantanderTextView;

    .line 49
    iget-object v0, p0, Lhku;->itemView:Landroid/view/View;

    const v1, 0x7f100471

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhku;->i:Lcom/santander/app/components/view/SantanderTextView;

    .line 50
    iget-object v0, p0, Lhku;->itemView:Landroid/view/View;

    const v1, 0x7f100472

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhku;->j:Lcom/santander/app/components/view/SantanderTextView;

    .line 51
    iget-object v0, p0, Lhku;->itemView:Landroid/view/View;

    const v1, 0x7f100473

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhku;->k:Lcom/santander/app/components/view/SantanderTextView;

    .line 52
    iget-object v0, p0, Lhku;->itemView:Landroid/view/View;

    const v1, 0x7f10046b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhku;->d:Lcom/santander/app/components/view/SantanderTextView;

    .line 53
    iget-object v0, p0, Lhku;->itemView:Landroid/view/View;

    const v1, 0x7f10046f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhku;->l:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lhku;->itemView:Landroid/view/View;

    const v1, 0x7f100475

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhku;->m:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lhku;->itemView:Landroid/view/View;

    const v1, 0x7f100474

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhku;->n:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lhku;->itemView:Landroid/view/View;

    new-instance v1, Lhkv;

    invoke-direct {v1, p0}, Lhkv;-><init>(Lhku;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lhku;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lhku;->n:Landroid/view/View;

    new-instance v1, Lhkw;

    invoke-direct {v1, p0}, Lhkw;-><init>(Lhku;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lhku;->c()V

    .line 96
    iget-object v0, p0, Lhku;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method a(Lhxl;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 78
    iput-object p1, p0, Lhku;->b:Lhxl;

    .line 79
    iget-object v0, p0, Lhku;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lhku;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lhku;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lhku;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lhku;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lhku;->j:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lhku;->k:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lhku;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-interface {p1}, Lhxl;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lhku;->b()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lhku;->c()V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lhku;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lhku;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lhku;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lhku;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_0
    return-void
.end method
