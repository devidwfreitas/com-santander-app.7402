.class public Liau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liat;


# instance fields
.field private a:Lhyz;

.field private b:Liak;


# direct methods
.method public constructor <init>(Lhyz;Liak;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Liau;->a:Lhyz;

    .line 30
    iput-object p2, p0, Liau;->b:Liak;

    .line 31
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lgky;)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/16 v4, 0xf

    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 47
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 50
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p2}, Lgky;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 54
    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 61
    :goto_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 62
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-static {p1, v5}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    invoke-virtual {p2}, Lgky;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 68
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 69
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-static {p1, v5}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    invoke-virtual {p2}, Lgky;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    return-object v0

    .line 57
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 58
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Liau;->b:Liak;

    invoke-interface {v0}, Liak;->e()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, ""

    .line 83
    iget-object v2, p0, Liau;->b:Liak;

    invoke-interface {v2}, Liak;->c()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Liau;->a:Lhyz;

    invoke-virtual {v3}, Lhyz;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public a(Lhyz;)V
    .locals 4

    .prologue
    .line 35
    invoke-virtual {p1}, Lhyz;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Liau;->b:Liak;

    invoke-interface {v0}, Liak;->b()V

    .line 42
    :cond_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p1}, Lhyz;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    .line 39
    iget-object v2, p0, Liau;->b:Liak;

    iget-object v3, p0, Liau;->b:Liak;

    invoke-interface {v3}, Liak;->c()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Liau;->a(Landroid/content/Context;Lgky;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-interface {v2, v0}, Liak;->a(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method
