.class Lhfe;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Lcom/santander/app/components/view/SantanderTextView;

.field private b:Lcom/santander/app/components/view/SantanderTextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 68
    const v0, 0x7f100460

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhfe;->a:Lcom/santander/app/components/view/SantanderTextView;

    .line 69
    const v0, 0x7f100461

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhfe;->b:Lcom/santander/app/components/view/SantanderTextView;

    .line 70
    return-void
.end method


# virtual methods
.method a(Lhga;)V
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lhfe;->a:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhga;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 76
    const-string v1, "R$ "

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Lbfj;

    .line 78
    invoke-interface {p1}, Lhga;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 79
    iget-object v1, p0, Lhfe;->b:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lhfe;->a:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v1, p0, Lhfe;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0001

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 82
    iget-object v0, p0, Lhfe;->a:Lcom/santander/app/components/view/SantanderTextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 83
    iget-object v0, p0, Lhfe;->b:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v1, p0, Lhfe;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00fc

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Lhfe;->b:Lcom/santander/app/components/view/SantanderTextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 85
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const v3, 0x7f0e0001

    const/high16 v2, 0x41600000    # 14.0f

    .line 88
    iget-object v0, p0, Lhfe;->a:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lhfe;->b:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p2}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lhfe;->a:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v1, p0, Lhfe;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 92
    iget-object v0, p0, Lhfe;->a:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 93
    iget-object v0, p0, Lhfe;->b:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v1, p0, Lhfe;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 94
    iget-object v0, p0, Lhfe;->b:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 95
    return-void
.end method
