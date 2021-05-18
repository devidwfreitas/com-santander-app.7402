.class public Lcom/santander/app/components/view/DateCircleButton;
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
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f0400f2

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    const v0, 0x7f100499

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/DateCircleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->a:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f100528

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/DateCircleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->b:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f100529

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/DateCircleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->c:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f100527

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/DateCircleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->d:Landroid/widget/LinearLayout;

    .line 48
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0400f2

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    const v0, 0x7f100499

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/DateCircleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->a:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f100528

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/DateCircleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->b:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f100529

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/DateCircleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->c:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f100527

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/DateCircleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->d:Landroid/widget/LinearLayout;

    .line 57
    iget-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/DateCircleButton;->setVisibilityImageViewCheck(I)V

    .line 59
    return-void
.end method

.method public setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void
.end method

.method public setColorBlackTextViewDate()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/components/view/DateCircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    return-void
.end method

.method public setColorGrayTextViewDate()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/components/view/DateCircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    return-void
.end method

.method public setEnableDateCircleButton(Z)V
    .locals 1

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/DateCircleButton;->setVisibilityImageViewCheck(I)V

    .line 93
    invoke-virtual {p0}, Lcom/santander/app/components/view/DateCircleButton;->setColorBlackTextViewDate()V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/DateCircleButton;->setVisibilityImageViewCheck(I)V

    .line 97
    invoke-virtual {p0}, Lcom/santander/app/components/view/DateCircleButton;->setColorGrayTextViewDate()V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    return-void
.end method

.method public setTextViewDate(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTextViewInfo(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public setVisibilityImageViewCheck(I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/santander/app/components/view/DateCircleButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    return-void
.end method
