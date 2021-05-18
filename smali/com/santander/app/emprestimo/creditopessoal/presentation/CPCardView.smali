.class Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;
.super Lcom/santander/app/components/view/CheckCardView;
.source "SourceFile"


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/santander/app/components/view/SantanderTextView;

.field private d:Lcom/santander/app/components/view/SantanderTextView;

.field private e:Lcom/santander/app/components/view/SantanderTextView;

.field private f:Lcom/santander/app/components/view/SantanderTextView;

.field private g:Lcom/santander/app/components/view/SantanderTextView;

.field private h:Lcom/santander/app/components/view/SantanderTextView;

.field private i:Lcom/santander/app/components/view/SantanderTextView;

.field private j:Lhxm;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/CheckCardView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->g()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/santander/app/components/view/CheckCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->g()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/santander/app/components/view/CheckCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->g()V

    .line 49
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040100

    invoke-static {v0, v1, p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->b:Landroid/widget/LinearLayout;

    .line 54
    const v0, 0x7f100256

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->c:Lcom/santander/app/components/view/SantanderTextView;

    .line 55
    const v0, 0x7f100255

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->d:Lcom/santander/app/components/view/SantanderTextView;

    .line 56
    const v0, 0x7f10056a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    .line 57
    const v0, 0x7f100569

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->f:Lcom/santander/app/components/view/SantanderTextView;

    .line 58
    const v0, 0x7f100568

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->g:Lcom/santander/app/components/view/SantanderTextView;

    .line 59
    const v0, 0x7f100567

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->h:Lcom/santander/app/components/view/SantanderTextView;

    .line 60
    const v0, 0x7f10056c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->i:Lcom/santander/app/components/view/SantanderTextView;

    .line 61
    return-void
.end method

.method private h()V
    .locals 8

    .prologue
    const/16 v5, 0x14

    const/4 v7, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    .line 89
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00fc

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 90
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0001

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 92
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->b:Landroid/widget/LinearLayout;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 93
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->b:Landroid/widget/LinearLayout;

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v7}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 95
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->f:Lcom/santander/app/components/view/SantanderTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v6}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 98
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v0}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 100
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v6}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 101
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 103
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 104
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 106
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->d:Lcom/santander/app/components/view/SantanderTextView;

    const/high16 v3, 0x42080000    # 34.0f

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 107
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 109
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->c:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v6}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 110
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->c:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 111
    return-void
.end method

.method private i()V
    .locals 9

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0xa

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v7, 0x41400000    # 12.0f

    .line 114
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00fc

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0001

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 117
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->b:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 118
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v6}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v6}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->f:Lcom/santander/app/components/view/SantanderTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v7}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 123
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 125
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v8}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 126
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 128
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v8}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 129
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v0}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 131
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->d:Lcom/santander/app/components/view/SantanderTextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 132
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 134
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->c:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v7}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 135
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->c:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 136
    return-void
.end method


# virtual methods
.method public a(Lhxm;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 64
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->j:Lhxm;

    .line 65
    iput-boolean p2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->k:Z

    .line 67
    invoke-interface {p1}, Lhxm;->getParcelaFormatted()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-interface {p1}, Lhxm;->getValorParcelaFormatted()Ljava/lang/String;

    move-result-object v1

    const-string v2, "R$"

    const-string v3, ""

    .line 69
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v2, "Taxa %s a.m."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    invoke-interface {p1}, Lhxm;->getTaxaJurosMes()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 71
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v3, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->c:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v2}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(Z)V

    .line 79
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    if-eqz p2, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->h()V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->i()V

    .line 84
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->c:Lcom/santander/app/components/view/SantanderTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->l:Z

    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->i:Lcom/santander/app/components/view/SantanderTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->i:Lcom/santander/app/components/view/SantanderTextView;

    iget-boolean v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->k:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->l:Z

    return v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->setChecked(Z)V

    .line 154
    return-void
.end method
