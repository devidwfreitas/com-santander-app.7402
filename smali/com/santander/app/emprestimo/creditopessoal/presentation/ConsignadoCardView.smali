.class Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;
.super Lcom/santander/app/components/view/CheckCardView;
.source "SourceFile"


# instance fields
.field private b:Landroid/widget/FrameLayout;

.field private c:Lcom/santander/app/components/view/SantanderTextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/santander/app/components/view/SantanderTextView;

.field private f:Lcom/santander/app/components/view/SantanderTextView;

.field private g:Lcom/santander/app/components/view/SantanderTextView;

.field private h:Lcom/santander/app/components/view/SantanderTextView;

.field private i:Lcom/santander/app/components/view/SantanderTextView;

.field private j:Lcom/santander/app/components/view/SantanderTextView;

.field private k:Lcom/santander/app/components/view/SantanderTextView;

.field private l:Lcom/santander/app/components/view/SantanderTextView;

.field private m:Lhxq;

.field private n:Z

.field private o:Landroid/view/View$OnClickListener;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/CheckCardView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->i()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/santander/app/components/view/CheckCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->i()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/santander/app/components/view/CheckCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->i()V

    .line 55
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0400ff

    invoke-static {v0, v1, p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    const v0, 0x7f100564

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->b:Landroid/widget/FrameLayout;

    .line 60
    const v0, 0x7f100565

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->c:Lcom/santander/app/components/view/SantanderTextView;

    .line 62
    const v0, 0x7f100566

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->d:Landroid/widget/LinearLayout;

    .line 63
    const v0, 0x7f100256

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    .line 64
    const v0, 0x7f100255

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->f:Lcom/santander/app/components/view/SantanderTextView;

    .line 65
    const v0, 0x7f10056a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->g:Lcom/santander/app/components/view/SantanderTextView;

    .line 66
    const v0, 0x7f100569

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->h:Lcom/santander/app/components/view/SantanderTextView;

    .line 67
    const v0, 0x7f100568

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->i:Lcom/santander/app/components/view/SantanderTextView;

    .line 68
    const v0, 0x7f100567

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->j:Lcom/santander/app/components/view/SantanderTextView;

    .line 69
    const v0, 0x7f10056b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->k:Lcom/santander/app/components/view/SantanderTextView;

    .line 70
    const v0, 0x7f10056c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->l:Lcom/santander/app/components/view/SantanderTextView;

    .line 71
    return-void
.end method

.method private j()V
    .locals 8

    .prologue
    const/16 v5, 0x14

    const/4 v7, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    .line 136
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00fc

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 137
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0001

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->d:Landroid/widget/LinearLayout;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 140
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->d:Landroid/widget/LinearLayout;

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 141
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v7}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 142
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->h:Lcom/santander/app/components/view/SantanderTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 144
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->j:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v6}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 145
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->j:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v0}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 147
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v6}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 148
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 150
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->g:Lcom/santander/app/components/view/SantanderTextView;

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 151
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 153
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->f:Lcom/santander/app/components/view/SantanderTextView;

    const/high16 v3, 0x42080000    # 34.0f

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 154
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 156
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v6}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 157
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 158
    return-void
.end method

.method private k()V
    .locals 9

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0xa

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v7, 0x41400000    # 12.0f

    .line 161
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00fc

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 162
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0001

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 164
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->d:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 165
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v6}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v6}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 166
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->g:Lcom/santander/app/components/view/SantanderTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->h:Lcom/santander/app/components/view/SantanderTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->j:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v7}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 170
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->j:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 172
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v8}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 173
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 175
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v8}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 176
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v0}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 178
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->f:Lcom/santander/app/components/view/SantanderTextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 179
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v2, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 181
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v7}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 182
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 183
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->o:Landroid/view/View$OnClickListener;

    .line 92
    return-void
.end method

.method public a(Lhxq;Z)V
    .locals 1

    .prologue
    .line 74
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->m:Lhxq;

    .line 75
    iput-boolean p2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->n:Z

    .line 77
    if-eqz p2, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->j()V

    .line 83
    :goto_0
    invoke-interface {p1}, Lhxq;->isMorno()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->e()V

    .line 88
    :goto_1
    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->k()V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->f()V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->p:Z

    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->l:Lcom/santander/app/components/view/SantanderTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->l:Lcom/santander/app/components/view/SantanderTextView;

    iget-boolean v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->n:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public e()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->c:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->m:Lhxq;

    invoke-interface {v1}, Lhxq;->getNomeConvenio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->b:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public f()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 104
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->m:Lhxq;

    invoke-interface {v0}, Lhxq;->getParcelaFormatted()Ljava/lang/String;

    move-result-object v1

    .line 106
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->m:Lhxq;

    invoke-interface {v0}, Lhxq;->isRefinanciamento()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->m:Lhxq;

    .line 107
    invoke-interface {v0}, Lhxq;->getParcelamentoAdicionalFormatted()Ljava/lang/String;

    move-result-object v0

    const-string v2, "R$"

    const-string v3, ""

    .line 108
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    const-string v2, "Taxa %s a.m."

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->m:Lhxq;

    .line 114
    invoke-interface {v4}, Lhxq;->getTaxaJurosFormatted()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 113
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 116
    iget-object v3, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v3, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-boolean v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->n:Z

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_1
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->i:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->m:Lhxq;

    invoke-interface {v1}, Lhxq;->getDiasUteisFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->k:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Desconto em folha por %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->m:Lhxq;

    .line 126
    invoke-interface {v3}, Lhxq;->getNomeConvenio()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 125
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(Z)V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->m:Lhxq;

    .line 110
    invoke-interface {v0}, Lhxq;->getValorParcelaFormatted()Ljava/lang/String;

    move-result-object v0

    const-string v2, "R$"

    const-string v3, ""

    .line 111
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->e:Lcom/santander/app/components/view/SantanderTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->p:Z

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->setChecked(Z)V

    .line 201
    return-void
.end method
