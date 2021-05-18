.class public Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/LinearLayout;

.field private d:I

.field private e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lmfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    .line 67
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->e:Ljava/util/Stack;

    .line 71
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    .line 67
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->e:Ljava/util/Stack;

    .line 76
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d()V

    .line 77
    return-void
.end method

.method private a(Lmfn;)Z
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lmfn;->WAVE_GREEN_ONE:Lmfn;

    if-eq p1, v0, :cond_0

    sget-object v0, Lmfn;->WAVE_GREEN_TWO:Lmfn;

    if-eq p1, v0, :cond_0

    sget-object v0, Lmfn;->WAVE_GREEN_THREE:Lmfn;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402e3

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->e()V

    .line 82
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f100f46

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->a:Landroid/widget/RelativeLayout;

    .line 87
    const v0, 0x7f100f47

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c:Landroid/widget/LinearLayout;

    .line 88
    return-void
.end method


# virtual methods
.method public a(Lmfn;Z)V
    .locals 2

    .prologue
    .line 118
    if-eqz p1, :cond_1

    .line 119
    :try_start_0
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .line 120
    if-eqz p2, :cond_0

    .line 121
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    .line 123
    :cond_0
    new-instance v0, Lmfo;

    invoke-direct {v0, p0}, Lmfo;-><init>(Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;)V

    .line 124
    invoke-virtual {v0, p1}, Lmfo;->a(Lmfn;)V

    .line 125
    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    invoke-virtual {v0, v1}, Lmfo;->a(I)V

    .line 126
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->e:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;

    .line 128
    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->a(Lmfn;)V

    .line 129
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    if-lez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;

    .line 131
    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->a()V

    .line 138
    :cond_1
    :goto_1
    return-void

    .line 127
    :cond_2
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 92
    if-eqz p1, :cond_2

    .line 93
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    .line 94
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 95
    aget-object v1, p1, v0

    .line 96
    new-instance v2, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v2, v1}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->setText(Ljava/lang/String;)V

    .line 98
    if-nez v0, :cond_1

    .line 99
    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->b()V

    .line 107
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    if-lez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0065

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 102
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->setPadding(IIII)V

    .line 103
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :cond_2
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 31
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 35
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 37
    instance-of v3, v0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;

    if-eqz v3, :cond_0

    .line 38
    check-cast v0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;

    .line 39
    sget-object v3, Lmfn;->DEFAULT_GRAY:Lmfn;

    invoke-virtual {v0, v3}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->b(Lmfn;)V

    .line 35
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 43
    iput v2, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    .line 44
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->e:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmfo;

    .line 151
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->e:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lmfo;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;

    .line 153
    sget-object v1, Lmfn;->DEFAULT_GRAY:Lmfn;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->b(Lmfn;)V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->e:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmfo;

    .line 157
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lmfo;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;

    .line 158
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lmfo;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;

    .line 159
    invoke-virtual {v0}, Lmfo;->a()I

    move-result v0

    invoke-virtual {v1}, Lmfo;->a()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 160
    invoke-virtual {v1}, Lmfo;->b()Lmfn;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->b(Lmfn;)V

    .line 165
    :goto_1
    invoke-virtual {v1}, Lmfo;->a()I

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 162
    :cond_2
    :try_start_1
    sget-object v0, Lmfn;->DEFAULT_GRAY:Lmfn;

    invoke-virtual {v3, v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->b(Lmfn;)V

    .line 163
    invoke-virtual {v1}, Lmfo;->b()Lmfn;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorItem;->b(Lmfn;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
