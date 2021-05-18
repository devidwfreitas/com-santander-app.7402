.class public Lcom/santander/app/components/view/ValorResgateButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0400f3

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    const v0, 0x7f10052b

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ValorResgateButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->a:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f10052c

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ValorResgateButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->b:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f10052d

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ValorResgateButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->c:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f10052a

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ValorResgateButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->d:Landroid/widget/LinearLayout;

    .line 46
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0400f3

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    const v0, 0x7f10052b

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ValorResgateButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->a:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f10052c

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ValorResgateButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->b:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f10052d

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ValorResgateButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->c:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f10052a

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ValorResgateButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->d:Landroid/widget/LinearLayout;

    .line 55
    iget-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ValorResgateButton;->setVisibilityImageViewCheck(I)V

    .line 57
    return-void
.end method

.method public setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method

.method public setColorBlackTextViewValorTotal()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/components/view/ValorResgateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    return-void
.end method

.method public setColorGrayTextViewValorTotal()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/components/view/ValorResgateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    return-void
.end method

.method public setEnableValorTotalButton(Z)V
    .locals 1

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ValorResgateButton;->setVisibilityImageViewCheck(I)V

    .line 91
    invoke-virtual {p0}, Lcom/santander/app/components/view/ValorResgateButton;->setColorBlackTextViewValorTotal()V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ValorResgateButton;->setVisibilityImageViewCheck(I)V

    .line 95
    invoke-virtual {p0}, Lcom/santander/app/components/view/ValorResgateButton;->setColorGrayTextViewValorTotal()V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    return-void
.end method

.method public setTextViewInfo(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setTextViewValor(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibilityImageViewCheck(I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/santander/app/components/view/ValorResgateButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    return-void
.end method
