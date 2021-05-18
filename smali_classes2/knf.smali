.class public Lknf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkne;


# instance fields
.field private a:Lkkx;

.field private b:Lkmr;


# direct methods
.method public constructor <init>(Lkkx;Lkmr;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lknf;->a:Lkkx;

    .line 32
    iput-object p2, p0, Lknf;->b:Lkmr;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lgky;)Landroid/widget/LinearLayout;
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 57
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {p2}, Lgky;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    invoke-virtual {v0, v5, v6, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 68
    :goto_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 69
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-static {p1, v4}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    invoke-virtual {p2}, Lgky;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-static {p1, v5}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    invoke-virtual {p2}, Lgky;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    return-object v0

    .line 64
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 65
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lklr;)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 88
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    const/16 v0, 0xf

    .line 92
    invoke-virtual {p2}, Lklr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 93
    invoke-virtual {p2}, Lklr;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x19

    .line 95
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 96
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 99
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/4 v3, 0x1

    invoke-static {p1, v3}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    invoke-virtual {p2}, Lklr;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 106
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-static {p1, v5}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    invoke-virtual {p2}, Lklr;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    return-object v1
.end method

.method public a()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lknf;->b:Lkmr;

    invoke-interface {v1}, Lkmr;->i()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    iget-object v1, p0, Lknf;->b:Lkmr;

    invoke-interface {v1}, Lkmr;->i()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public a(Lkkx;)V
    .locals 5

    .prologue
    .line 37
    invoke-virtual {p1}, Lkkx;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lknf;->b:Lkmr;

    invoke-interface {v0}, Lkmr;->d()V

    .line 54
    :cond_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Lkkx;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1}, Lkkx;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklr;

    .line 43
    if-lez v1, :cond_2

    invoke-virtual {v0}, Lklr;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "I"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lkkx;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_2

    .line 44
    iget-object v3, p0, Lknf;->b:Lkmr;

    iget-object v4, p0, Lknf;->b:Lkmr;

    invoke-interface {v4}, Lkmr;->i()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lknf;->a(Landroid/content/Context;Lklr;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-interface {v3, v0}, Lkmr;->a(Landroid/widget/LinearLayout;)V

    .line 46
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 47
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p1}, Lkkx;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    .line 50
    iget-object v2, p0, Lknf;->b:Lkmr;

    iget-object v3, p0, Lknf;->b:Lkmr;

    invoke-interface {v3}, Lkmr;->i()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lknf;->a(Landroid/content/Context;Lgky;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-interface {v2, v0}, Lkmr;->a(Landroid/widget/LinearLayout;)V

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lknf;->b:Lkmr;

    invoke-interface {v0}, Lkmr;->g()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, ""

    .line 128
    iget-object v2, p0, Lknf;->b:Lkmr;

    invoke-interface {v2}, Lkmr;->i()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lknf;->a:Lkkx;

    invoke-virtual {v3}, Lkkx;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method
