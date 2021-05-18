.class public Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljkg;


# instance fields
.field private A:Landroid/app/Dialog;

.field private a:Lcom/github/mikephil/charting/charts/PieChart;

.field private b:Landroid/graphics/Typeface;

.field private c:Landroid/graphics/Typeface;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/widget/TextView;

.field private f:Ljks;

.field private g:Landroid/app/Dialog;

.field private w:Landroid/app/Dialog;

.field private x:Landroid/app/Dialog;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)Ljks;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->f:Ljks;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->g:Landroid/app/Dialog;

    return-object v0
.end method

.method private b(Lcgz;)V
    .locals 5

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 172
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 173
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 175
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 176
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 178
    new-instance v1, Lcgy;

    invoke-direct {v1, p1}, Lcgy;-><init>(Lcis;)V

    .line 179
    new-instance v2, Lchq;

    invoke-direct {v2}, Lchq;-><init>()V

    invoke-virtual {v1, v2}, Lcgy;->a(Lchn;)V

    .line 180
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Lcgy;->b(F)V

    .line 181
    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p1, v2}, Lcgz;->a(F)V

    .line 182
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcgz;->f(F)V

    .line 183
    const/high16 v2, 0x42a00000    # 80.0f

    invoke-virtual {p1, v2}, Lcgz;->i(F)V

    .line 184
    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v2}, Lcgz;->j(F)V

    .line 185
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v2}, Lcgz;->k(F)V

    .line 186
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcgy;->c(I)V

    .line 187
    sget-object v2, Lcha;->OUTSIDE_SLICE:Lcha;

    invoke-virtual {p1, v2}, Lcgz;->b(Lcha;)V

    .line 188
    iget-object v2, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->b:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcgy;->a(Landroid/graphics/Typeface;)V

    .line 189
    iget-object v2, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 190
    iget-object v2, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->av()Lcfn;

    move-result-object v2

    .line 191
    sget-object v3, Lcfr;->RIGHT:Lcfr;

    invoke-virtual {v2, v3}, Lcfn;->a(Lcfr;)V

    .line 192
    sget-object v3, Lcfu;->CENTER:Lcfu;

    invoke-virtual {v2, v3}, Lcfn;->a(Lcfu;)V

    .line 193
    sget-object v3, Lcfs;->VERTICAL:Lcfs;

    invoke-virtual {v2, v3}, Lcfn;->a(Lcfs;)V

    .line 194
    invoke-virtual {v2, v4}, Lcfn;->a(F)V

    .line 195
    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v2, v3}, Lcfn;->c(F)V

    .line 196
    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    invoke-static {v0}, Lclg;->b(F)F

    move-result v0

    invoke-virtual {v2, v0}, Lcfn;->j(F)V

    .line 197
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v2, v0}, Lcfn;->d(F)V

    .line 198
    invoke-virtual {v2, v4}, Lcfn;->a(F)V

    .line 199
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcgo;)V

    .line 200
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->w:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->x:Landroid/app/Dialog;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 96
    const v0, 0x7f100ca4

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->d:Landroid/support/v7/widget/RecyclerView;

    .line 97
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 99
    iget-object v1, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    const v0, 0x7f100c8e

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->e:Landroid/widget/TextView;

    .line 102
    return-void
.end method

.method private h()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Ljka;

    invoke-direct {v0, p0}, Ljka;-><init>(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)V

    return-object v0
.end method

.method private i()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 214
    new-instance v0, Ljkb;

    invoke-direct {v0, p0}, Ljkb;-><init>(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)V

    return-object v0
.end method

.method private j()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 235
    new-instance v0, Ljkc;

    invoke-direct {v0, p0}, Ljkc;-><init>(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 204
    .line 206
    invoke-direct {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->i()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09018e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {p0, v0, v1, v2, v3}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->g:Landroid/app/Dialog;

    .line 211
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->startActivity(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public a(Lcgz;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/high16 v1, 0x40a00000    # 5.0f

    const/4 v3, 0x1

    .line 130
    const v0, 0x7f100ca3

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    .line 131
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    .line 133
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->au()Lcfl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcfl;->g(Z)V

    .line 134
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setExtraOffsets(FFFF)V

    .line 136
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setDragDecelerationFrictionCoef(F)V

    .line 138
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v1, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterTextTypeface(Landroid/graphics/Typeface;)V

    .line 140
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleColor(I)V

    .line 143
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleColor(I)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleAlpha(I)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    .line 148
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawCenterText(Z)V

    .line 150
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationAngle(F)V

    .line 152
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setHighlightPerTapEnabled(Z)V

    .line 156
    invoke-direct {p0, p1}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->b(Lcgz;)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v1, 0x3e8

    sget-object v2, Lcew;->Linear:Lcew;

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->b(ILcew;)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelColor(I)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v1, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelTypeface(Landroid/graphics/Typeface;)V

    .line 162
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->av()Lcfn;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcfn;->g(Z)V

    .line 163
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 299
    const-string v0, "Alerta"

    const/4 v1, 0x1

    const-string v2, "OK"

    invoke-static {p0, v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 300
    return-void
.end method

.method public a(Ljdf;)V
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p1}, Ljdf;->d()Ljava/util/List;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdf;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Ljkp;

    invoke-direct {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->h()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljkp;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object v1, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->f:Ljks;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljks;->a(Landroid/content/Intent;Ljava/util/List;)V

    .line 114
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 225
    .line 227
    invoke-direct {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->j()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09018e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-static {p0, v0, v1, v2, v3}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->w:Landroid/app/Dialog;

    .line 232
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0b0224

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->x:Landroid/app/Dialog;

    .line 248
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->x:Landroid/app/Dialog;

    const v1, 0x7f040182

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 249
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->x:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 250
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->x:Landroid/app/Dialog;

    const v1, 0x7f100770

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->y:Landroid/widget/TextView;

    .line 251
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->x:Landroid/app/Dialog;

    const v1, 0x7f100771

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->z:Landroid/widget/Button;

    .line 252
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->z:Landroid/widget/Button;

    const v1, 0x7f090199

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->y:Landroid/widget/TextView;

    const-string v1, "Para novas contrata\u00e7\u00f5es fale agora com nossa assessoria especializada. <br/>Escolha sua op\u00e7\u00e3o:"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->x:Landroid/app/Dialog;

    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljkd;

    invoke-direct {v1, p0}, Ljkd;-><init>(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->x:Landroid/app/Dialog;

    const v1, 0x7f100402

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljke;

    invoke-direct {v1, p0}, Ljke;-><init>(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->z:Landroid/widget/Button;

    new-instance v1, Ljkf;

    invoke-direct {v1, p0}, Ljkf;-><init>(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->x:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 280
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->A:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 285
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->A:Landroid/app/Dialog;

    .line 287
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->A:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->A:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->A:Landroid/app/Dialog;

    .line 295
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 304
    const v0, 0x7f09043f

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f040088

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->g()V

    .line 83
    new-instance v0, Ljkt;

    invoke-direct {v0, p0}, Ljkt;-><init>(Ljkg;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->f:Ljks;

    .line 90
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->f:Ljks;

    invoke-interface {v0}, Ljks;->a()V

    .line 92
    return-void
.end method
