.class public Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lguh;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/Adapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget-object v0, Lflv;->ScrollColumnLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->a:I

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    invoke-direct {p0}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->a()V

    .line 41
    return-void
.end method

.method private a(I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lgug;

    invoke-direct {v0, p0, p1}, Lgug;-><init>(Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;I)V

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;)Lguh;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->b:Lguh;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0402f3

    invoke-static {v0, v1, p0}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    const v0, 0x7f100f8e

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->c:Landroid/widget/LinearLayout;

    .line 60
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;)Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->d:Landroid/widget/Adapter;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 10

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 66
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->a:I

    div-int/2addr v2, v3

    .line 70
    int-to-double v4, v2

    int-to-double v2, v2

    iget v6, p0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->a:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 73
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 74
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 3

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    iput-object p1, p0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->d:Landroid/widget/Adapter;

    .line 47
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->c:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0, v1, v2}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 50
    invoke-direct {p0, v0}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->a(I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v2, p0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lguh;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->b:Lguh;

    .line 81
    return-void
.end method
