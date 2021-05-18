.class public Ljwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljwd;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljsr;

.field private c:Ljve;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljsr;Ljve;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Ljwe;->a:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Ljwe;->b:Ljsr;

    .line 37
    iput-object p3, p0, Ljwe;->c:Ljve;

    .line 38
    iput-object p2, p0, Ljwe;->b:Ljsr;

    .line 39
    invoke-virtual {p0, p1}, Ljwe;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private a(Lgku;Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 124
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 127
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 130
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 132
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {p1}, Lgku;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    const/4 v2, 0x1

    invoke-static {p2, v2}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    return-object v0
.end method

.method private a(Lgku;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 111
    invoke-virtual {p1}, Lgku;->c()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lgku;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lgku;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CNPJ/CPF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laes;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 116
    invoke-static {v0}, Laes;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 13

    .prologue
    .line 44
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Ljwe;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Ljwe;->b:Ljsr;

    invoke-virtual {v0}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 55
    const/4 v5, 0x0

    .line 56
    iget-object v0, p0, Ljwe;->b:Ljsr;

    invoke-virtual {v0}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 57
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v3, 0x0

    .line 60
    invoke-virtual {v0}, Lgku;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 61
    invoke-virtual {v0}, Lgku;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljsw;->valueOf(Ljava/lang/String;)Ljsw;

    move-result-object v3

    .line 63
    :cond_0
    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_3

    .line 64
    invoke-direct {p0, v0, p1}, Ljwe;->a(Lgku;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 65
    const/4 v4, 0x1

    move-object v12, v2

    move-object v2, v3

    move-object v3, v12

    .line 69
    :goto_1
    if-nez v4, :cond_1

    .line 70
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v8, -0x2

    invoke-direct {v4, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 72
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v5, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 76
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 79
    div-int/lit8 v8, v7, 0x64

    mul-int/lit8 v8, v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 80
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 85
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    const/4 v8, 0x0

    invoke-static {p1, v8}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 92
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-direct {p0, v0}, Ljwe;->a(Lgku;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 95
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    const/high16 v0, -0x1000000

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    :cond_1
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Ljwe;->c:Ljve;

    invoke-interface {v0, v6}, Ljve;->a(Landroid/widget/LinearLayout;)V

    .line 108
    return-void

    :cond_3
    move-object v3, v4

    move v4, v5

    goto/16 :goto_1
.end method
