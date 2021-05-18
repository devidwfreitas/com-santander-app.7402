.class public Lahg;
.super Ljava/lang/Object;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private a:Landroid/view/View;

.field private b:Landroid/app/Activity;

.field private c:Lajg;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/github/mikephil/charting/charts/PieChart;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;Lajg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lahg;->a:Landroid/view/View;

    iput-object p2, p0, Lahg;->b:Landroid/app/Activity;

    iput-object p3, p0, Lahg;->c:Lajg;

    invoke-virtual {p0, p1}, Lahg;->b(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lahg;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lahg;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lahg;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->au()Lcfl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcfl;->g(Z)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setTouchEnabled(Z)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleColor(I)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleColor(I)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleAlpha(I)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleRadius(F)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->av()Lcfn;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcfn;->g(Z)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationAngle(F)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v1, 0x578

    sget-object v2, Lcew;->EaseInOutQuad:Lcew;

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->b(ILcew;)V

    invoke-direct {p0}, Lahg;->b()V

    return-void
.end method

.method static synthetic b(Lahg;)Lajg;
    .locals 1

    iget-object v0, p0, Lahg;->c:Lajg;

    return-object v0
.end method

.method private b()V
    .locals 8

    const/high16 v7, 0x40a00000    # 5.0f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/Locale;

    const-string v3, "en"

    const-string v4, "US"

    invoke-direct {v0, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->f()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->o()Ljava/lang/String;

    move-result-object v0

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    const-string v5, "."

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v4, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v5, "0"

    invoke-direct {v4, v0, v5}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lahg;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lagd;->emprestimos_chart:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->e()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->m()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-instance v5, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lahg;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lagd;->cheque_chart:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->d()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->n()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-instance v5, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lahg;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lagd;->cartoes_chart:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->g()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->p()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-instance v5, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lahg;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lagd;->financiamentos_chart:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->c()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->q()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lahg;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lagd;->renegociacoes_chart:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    new-instance v0, Lcgz;

    const-string v3, ""

    invoke-direct {v0, v1, v3}, Lcgz;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcgz;->f(F)V

    invoke-virtual {v0, v7}, Lcgz;->a(F)V

    invoke-virtual {v0, v2}, Lcgz;->a(Ljava/util/List;)V

    new-instance v1, Lcgy;

    invoke-direct {v1, v0}, Lcgy;-><init>(Lcis;)V

    new-instance v0, Lchq;

    invoke-direct {v0}, Lchq;-><init>()V

    invoke-virtual {v1, v0}, Lcgy;->a(Lchn;)V

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {v1, v0}, Lcgy;->b(F)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcgy;->c(I)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcgo;)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->b([Lchv;)V

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "TotalViewFragViewModel:"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget v0, Lagg;->duvidas_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lahg;->d:Landroid/widget/ImageView;

    sget v0, Lagg;->debt_cheque_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->u:Landroid/widget/TextView;

    sget v0, Lagg;->debt_cartoes_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->v:Landroid/widget/TextView;

    sget v0, Lagg;->debt_emprestimo_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->w:Landroid/widget/TextView;

    sget v0, Lagg;->debt_financiamentos_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->x:Landroid/widget/TextView;

    sget v0, Lagg;->debt_renegociacao_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->y:Landroid/widget/TextView;

    sget v0, Lagg;->total_debt_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->e:Landroid/widget/TextView;

    sget v0, Lagg;->field_debt_cheque:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahg;->g:Landroid/widget/RelativeLayout;

    sget v0, Lagg;->field_debt_cartoes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahg;->h:Landroid/widget/RelativeLayout;

    sget v0, Lagg;->field_debt_emprestimo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahg;->i:Landroid/widget/RelativeLayout;

    sget v0, Lagg;->field_debt_financiamentos:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahg;->j:Landroid/widget/RelativeLayout;

    sget v0, Lagg;->field_debt_renegociacao:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahg;->k:Landroid/widget/RelativeLayout;

    sget v0, Lagg;->debt_cheque_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->p:Landroid/widget/TextView;

    sget v0, Lagg;->debt_cartoes_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->q:Landroid/widget/TextView;

    sget v0, Lagg;->debt_emprestimo_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->r:Landroid/widget/TextView;

    sget v0, Lagg;->debt_financiamentos_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->s:Landroid/widget/TextView;

    sget v0, Lagg;->debt_renegociacao_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->t:Landroid/widget/TextView;

    sget v0, Lagg;->total_emprestimo_atraso_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->z:Landroid/widget/TextView;

    sget v0, Lagg;->total_financ_atraso_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->A:Landroid/widget/TextView;

    sget v0, Lagg;->total_reneg_atraso_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahg;->B:Landroid/widget/TextView;

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->f()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahg;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->g()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lahg;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->c()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lahg;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    sget v0, Lagg;->oportunidades_field:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lahg;->l:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lahg;->l:Landroid/widget/FrameLayout;

    sget v1, Lagg;->field_oportunidade_cartoes:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahg;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lahg;->l:Landroid/widget/FrameLayout;

    sget v1, Lagg;->field_oportunidade_emprestimo:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahg;->n:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lahg;->l:Landroid/widget/FrameLayout;

    sget v1, Lagg;->field_oportunidade_financiamentos:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahg;->o:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lahg;->d:Landroid/widget/ImageView;

    new-instance v1, Lahv;

    invoke-direct {v1, p0}, Lahv;-><init>(Lahg;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahg;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lahg;->c:Lajg;

    invoke-virtual {v1}, Lajg;->a()Laji;

    move-result-object v1

    invoke-virtual {v1}, Laji;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->e()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lahg;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lahg;->c:Lajg;

    invoke-virtual {v1}, Lajg;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->e()I

    move-result v0

    if-le v0, v6, :cond_3

    iget-object v0, p0, Lahg;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lahg;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagl;->number_of_items:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->d()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lahg;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lahg;->c:Lajg;

    invoke-virtual {v1}, Lajg;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->d()I

    move-result v0

    if-le v0, v6, :cond_4

    iget-object v0, p0, Lahg;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lahg;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagl;->number_of_items:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->f()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lahg;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lahg;->c:Lajg;

    invoke-virtual {v1}, Lajg;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->f()I

    move-result v0

    if-le v0, v6, :cond_5

    iget-object v0, p0, Lahg;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lahg;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagl;->number_of_items:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->g()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lahg;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lahg;->c:Lajg;

    invoke-virtual {v1}, Lajg;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->g()I

    move-result v0

    if-le v0, v6, :cond_6

    iget-object v0, p0, Lahg;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lahg;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagl;->number_of_items:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->g()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->c()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lahg;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lahg;->c:Lajg;

    invoke-virtual {v1}, Lajg;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->c()I

    move-result v0

    if-le v0, v6, :cond_7

    iget-object v0, p0, Lahg;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lahg;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagl;->number_of_items:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lahg;->c:Lajg;

    invoke-virtual {v4}, Lajg;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lahg;->i:Landroid/widget/RelativeLayout;

    new-instance v1, Lahw;

    invoke-direct {v1, p0}, Lahw;-><init>(Lahg;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahg;->j:Landroid/widget/RelativeLayout;

    new-instance v1, Lahy;

    invoke-direct {v1, p0}, Lahy;-><init>(Lahg;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahg;->k:Landroid/widget/RelativeLayout;

    new-instance v1, Laia;

    invoke-direct {v1, p0}, Laia;-><init>(Lahg;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahg;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Laic;

    invoke-direct {v1, p0}, Laic;-><init>(Lahg;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahg;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Laid;

    invoke-direct {v1, p0}, Laid;-><init>(Lahg;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahg;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lahg;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lahg;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lahg;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lahg;->n:Landroid/widget/RelativeLayout;

    new-instance v1, Laie;

    invoke-direct {v1, p0}, Laie;-><init>(Lahg;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->g()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lahg;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lahg;->o:Landroid/widget/RelativeLayout;

    new-instance v1, Laif;

    invoke-direct {v1, p0}, Laif;-><init>(Lahg;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    invoke-static {}, Lajd;->a()Lajd;

    move-result-object v0

    invoke-virtual {v0}, Lajd;->b()Laju;

    move-result-object v0

    sget-object v1, Laju;->USER_PRIVATE:Laju;

    invoke-virtual {v0, v1}, Laju;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lahg;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_9
    sget v0, Lagg;->chart:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v0, p0, Lahg;->c:Lajg;

    invoke-virtual {v0}, Lajg;->a()Laji;

    move-result-object v0

    invoke-virtual {v0}, Laji;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0,00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lahg;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    :goto_5
    return-void

    :cond_a
    iget-object v0, p0, Lahg;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lahg;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lahg;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lahg;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lahg;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_f
    invoke-direct {p0}, Lahg;->a()V

    goto :goto_5
.end method
