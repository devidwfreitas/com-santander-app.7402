.class public Ljvy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljtg;
.implements Ljvx;


# instance fields
.field private a:Ljtf;

.field private b:Ljuk;

.field private c:Landroid/app/Activity;

.field private d:Ljsr;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljsr;Ljuk;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Ljvy;->b:Ljuk;

    .line 42
    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Ljvy;->c:Landroid/app/Activity;

    .line 43
    iput-object p1, p0, Ljvy;->d:Ljsr;

    .line 44
    new-instance v0, Ljth;

    iget-object v1, p0, Ljvy;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Ljth;-><init>(Landroid/app/Activity;Ljtg;)V

    iput-object v0, p0, Ljvy;->a:Ljtf;

    .line 45
    iget-object v0, p0, Ljvy;->c:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Ljvy;->a(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Ljvy;->c()V

    .line 47
    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v0, p0, Ljvy;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v1

    move-object v3, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 55
    invoke-virtual {v0}, Lgku;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljsw;->valueOf(Ljava/lang/String;)Ljsw;

    move-result-object v4

    .line 56
    if-ne v4, v3, :cond_0

    if-nez v3, :cond_2

    .line 58
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v2, v1}, Ljst;->a(Ljava/util/List;)V

    .line 61
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    new-instance v1, Ljst;

    invoke-direct {v1}, Ljst;-><init>()V

    .line 65
    invoke-virtual {v1, v4}, Ljst;->a(Ljsw;)V

    .line 66
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljst;->a(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    :goto_1
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 75
    goto :goto_0

    .line 71
    :cond_2
    if-eqz v1, :cond_3

    .line 72
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 77
    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 78
    if-eqz v2, :cond_5

    .line 79
    invoke-virtual {v2, v1}, Ljst;->a(Ljava/util/List;)V

    .line 80
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_5
    iget-object v0, p0, Ljvy;->b:Ljuk;

    invoke-interface {v0, v5}, Ljuk;->a(Ljava/util/List;)V

    .line 85
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Ljvy;->b:Ljuk;

    invoke-interface {v0}, Ljuk;->finish()V

    .line 165
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 13

    .prologue
    const/high16 v12, 0x41600000    # 14.0f

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v2, 0x0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljvy;->e:Ljava/util/ArrayList;

    .line 95
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Ljvy;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v1, v2

    .line 102
    :goto_0
    iget-object v0, p0, Ljvy;->d:Ljsr;

    invoke-virtual {v0}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 104
    iget-object v0, p0, Ljvy;->d:Ljsr;

    invoke-virtual {v0}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 105
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0}, Lgku;->a()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 108
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 109
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 111
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const/16 v6, 0xa

    invoke-virtual {v5, v2, v6, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 115
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 118
    div-int/lit8 v8, v4, 0x64

    mul-int/lit8 v8, v8, 0xa

    invoke-virtual {v6, v8, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 124
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 127
    invoke-static {p1, v2}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 131
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {v0}, Lgku;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 134
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    const/high16 v0, -0x1000000

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    invoke-static {p1, v2}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    :cond_0
    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 144
    :cond_1
    iget-object v6, p0, Ljvy;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    :cond_2
    iget-object v0, p0, Ljvy;->b:Ljuk;

    invoke-interface {v0, v3}, Ljuk;->a(Landroid/widget/LinearLayout;)V

    .line 150
    return-void
.end method

.method public a(Lgvb;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Ljvy;->b:Ljuk;

    invoke-interface {v0, p1}, Ljuk;->a(Lgvb;)V

    .line 155
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Ljvy;->a:Ljtf;

    iget-object v1, p0, Ljvy;->d:Ljsr;

    invoke-interface {v0, v1}, Ljtf;->a(Ljsr;)V

    .line 90
    return-void
.end method

.method public b(Lgvb;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Ljvy;->b:Ljuk;

    invoke-interface {v0, p1}, Ljuk;->a(Lgvb;)V

    .line 160
    return-void
.end method
