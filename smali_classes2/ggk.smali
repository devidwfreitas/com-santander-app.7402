.class public Lggk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lggj;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgfu;


# direct methods
.method public constructor <init>(Lgfu;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lggk;->b:Lgfu;

    .line 32
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lggk;->a:Landroid/app/Activity;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lggk;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 40
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgex;

    .line 44
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lggk;->a:Landroid/app/Activity;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 50
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lggk;->a:Landroid/app/Activity;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v0}, Lgex;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x96

    .line 52
    :goto_1
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const/16 v1, 0x10

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 55
    iget-object v1, p0, Lggk;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0e0108

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 57
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    invoke-virtual {v0}, Lgex;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgev;

    .line 61
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lggk;->a:Landroid/app/Activity;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 64
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const/16 v1, 0xf

    const/16 v8, 0x8

    const/16 v9, 0xf

    const/16 v10, 0x8

    invoke-virtual {v7, v1, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 68
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lggk;->a:Landroid/app/Activity;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 71
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    const/16 v1, 0xf

    const/16 v9, 0x8

    const/16 v10, 0xf

    const/16 v11, 0x8

    invoke-virtual {v8, v1, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 75
    new-instance v9, Landroid/widget/TextView;

    iget-object v1, p0, Lggk;->a:Landroid/app/Activity;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v1, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 77
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {v0}, Lgev;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    iget-object v1, p0, Lggk;->a:Landroid/app/Activity;

    const/4 v10, 0x0

    invoke-static {v1, v10}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    invoke-virtual {v0}, Lgev;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lggk;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v10, 0x7f0e0001

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_3
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    new-instance v1, Landroid/widget/TextView;

    iget-object v10, p0, Lggk;->a:Landroid/app/Activity;

    invoke-direct {v1, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 85
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {v0}, Lgev;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    iget-object v10, p0, Lggk;->a:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e00fc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v10, p0, Lggk;->a:Landroid/app/Activity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 92
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {v0}, Lgev;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 51
    :cond_0
    const/16 v1, 0x1e

    goto/16 :goto_1

    .line 81
    :cond_1
    iget-object v1, p0, Lggk;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v10, 0x7f0e00fc

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_3

    .line 99
    :cond_2
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 101
    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 103
    :cond_4
    iget-object v0, p0, Lggk;->b:Lgfu;

    invoke-interface {v0, v2}, Lgfu;->a(Landroid/widget/LinearLayout;)V

    .line 104
    return-void
.end method
