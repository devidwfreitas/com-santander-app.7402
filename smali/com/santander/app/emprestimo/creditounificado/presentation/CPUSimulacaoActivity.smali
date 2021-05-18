.class public Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lhwa;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/ImageView;

.field private C:Lcom/santander/app/components/view/SantanderButtonView;

.field private D:Landroid/widget/LinearLayout;

.field private E:Lhwm;

.field private F:Landroid/app/Dialog;

.field private G:Landroid/widget/TextView;

.field private a:Landroid/support/v4/widget/NestedScrollView;

.field private b:Lcom/santander/app/components/view/SantanderTextView;

.field private c:Lcom/santander/app/components/view/SantanderTextView;

.field private d:Lcom/santander/app/components/view/SantanderTextView;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Landroid/widget/FrameLayout;

.field private w:Landroid/widget/Spinner;

.field private x:Lcom/santander/app/components/view/SantanderTextView;

.field private y:Lcom/santander/app/components/view/SantanderTextView;

.field private z:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;)Lhwm;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->E:Lhwm;

    return-object v0
.end method

.method private b(Lhxn;)V
    .locals 4

    .prologue
    .line 160
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 161
    const-string v1, "Sua d\u00edvida total em "

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 162
    invoke-interface {p1}, Lhxn;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Lbfj;

    .line 163
    const-string v1, " \u00e9:"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 164
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 165
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 167
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->c:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method private c(Lhxn;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 171
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 172
    invoke-interface {p1}, Lhxn;->z()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f0e010f

    .line 173
    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    aput-object v3, v2, v5

    .line 172
    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 175
    const-string v1, " a.m."

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f0e0001

    .line 176
    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x12

    invoke-direct {v3, v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    aput-object v3, v2, v5

    .line 175
    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 178
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->y:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const v5, 0x7f020383

    const/16 v4, 0x13

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 94
    const v0, 0x7f100232

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->a:Landroid/support/v4/widget/NestedScrollView;

    .line 95
    const v0, 0x7f10024d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->b:Lcom/santander/app/components/view/SantanderTextView;

    .line 96
    const v0, 0x7f10024a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->c:Lcom/santander/app/components/view/SantanderTextView;

    .line 97
    const v0, 0x7f10024b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->d:Lcom/santander/app/components/view/SantanderTextView;

    .line 98
    const v0, 0x7f10024e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->e:Landroid/widget/FrameLayout;

    .line 99
    const v0, 0x7f10024c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->f:Landroid/support/v7/widget/RecyclerView;

    .line 100
    const v0, 0x7f100251

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->g:Landroid/widget/FrameLayout;

    .line 101
    const v0, 0x7f100254

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->w:Landroid/widget/Spinner;

    .line 102
    const v0, 0x7f100255

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->x:Lcom/santander/app/components/view/SantanderTextView;

    .line 103
    const v0, 0x7f100256

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->y:Lcom/santander/app/components/view/SantanderTextView;

    .line 104
    const v0, 0x7f100257

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->G:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f100253

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->z:Landroid/widget/Spinner;

    .line 106
    const v0, 0x7f100250

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->A:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f10024f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->B:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f1000d8

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->C:Lcom/santander/app/components/view/SantanderButtonView;

    .line 109
    const v0, 0x7f100b0a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->D:Landroid/widget/LinearLayout;

    .line 110
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->D:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_0

    .line 114
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 115
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 119
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_1

    .line 120
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 121
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 124
    :cond_1
    const v0, 0x7f100252

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 126
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->a()V

    .line 128
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->e:Landroid/widget/FrameLayout;

    new-instance v1, Lhvx;

    invoke-direct {v1, p0}, Lhvx;-><init>(Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->g:Landroid/widget/FrameLayout;

    new-instance v1, Lhvy;

    invoke-direct {v1, p0}, Lhvy;-><init>(Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->C:Lcom/santander/app/components/view/SantanderButtonView;

    new-instance v1, Lhvz;

    invoke-direct {v1, p0}, Lhvz;-><init>(Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->a:Landroid/support/v4/widget/NestedScrollView;

    invoke-static {v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 219
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 220
    :goto_0
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 221
    if-eqz v0, :cond_1

    .line 222
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 223
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->A:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    :goto_1
    const-wide/16 v0, 0x64

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 230
    return-void

    :cond_0
    move v0, v1

    .line 219
    goto :goto_0

    .line 225
    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 226
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->w:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 209
    return-void
.end method

.method public a(Lhxn;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->a:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 153
    invoke-direct {p0, p1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->b(Lhxn;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->c(Lhxn;)V

    .line 155
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhxn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->x:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhxn;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 273
    invoke-static {p0, p1, p2}, Lhys;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 274
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhuk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 184
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 185
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 186
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lhue;

    invoke-direct {v1, p1}, Lhue;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lhuf;

    invoke-direct {v1}, Lhuf;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 188
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->z:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 214
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04037e

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 193
    const v1, 0x7f04037d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 194
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->w:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 195
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->w:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 196
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 255
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->F:Landroid/app/Dialog;

    .line 256
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04037e

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 201
    const v1, 0x7f04037d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 202
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->z:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 203
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->z:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 204
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->F:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->F:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 263
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->D:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->a:Landroid/support/v4/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 269
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f04004f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->setContentView(I)V

    .line 78
    new-instance v0, Lhwn;

    invoke-direct {v0, p0}, Lhwn;-><init>(Lhwa;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->E:Lhwm;

    .line 80
    const v0, 0x7f090311

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->c(I)V

    .line 81
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->g()V

    .line 83
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->a:Landroid/support/v4/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->E:Lhwm;

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lhwm;->a(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->E:Lhwm;

    invoke-interface {v0}, Lhwm;->d()V

    .line 91
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->w:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->E:Lhwm;

    invoke-interface {v1, v0}, Lhwm;->a(Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->z:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;->E:Lhwm;

    invoke-interface {v1, v0}, Lhwm;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 250
    return-void
.end method
