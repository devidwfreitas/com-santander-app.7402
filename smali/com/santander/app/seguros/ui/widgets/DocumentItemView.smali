.class public Lcom/santander/app/seguros/ui/widgets/DocumentItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lkwk;

.field private b:Lmbn;

.field private c:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->a()V

    .line 45
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/DocumentItemView;)Lkwk;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->a:Lkwk;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402d0

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->b()V

    .line 50
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 53
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 54
    const v0, 0x7f100ef1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->d:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f100e39

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->e:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    .line 57
    const v0, 0x7f100348

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->g:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 123
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method


# virtual methods
.method public setDocument(Lkwk;)V
    .locals 6

    .prologue
    const v5, 0x7f02048b

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 84
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->a:Lkwk;

    .line 85
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->a:Lkwk;

    invoke-virtual {v3}, Lkwk;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p1}, Lkwk;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Lkwk;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->d:Landroid/widget/ImageView;

    const v1, 0x7f02046d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :goto_1
    return-void

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->d()V

    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090afb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p1}, Lkwk;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    invoke-virtual {p1}, Lkwk;->d()Lkuw;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "E"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lkuw;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->c()V

    .line 99
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 95
    goto :goto_2

    .line 101
    :cond_3
    invoke-virtual {p1}, Lkwk;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 104
    :cond_4
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->c()V

    .line 105
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public setListener(Lmbn;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->f:Landroid/widget/Button;

    new-instance v1, Lmbm;

    invoke-direct {v1, p0, p1}, Lmbm;-><init>(Lcom/santander/app/seguros/ui/widgets/DocumentItemView;Lmbn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_0
    return-void
.end method
