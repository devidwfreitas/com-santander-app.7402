.class public Lcom/santander/app/seguros/ui/widgets/BankItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Lbr/com/zup/multistatelayout/MultiStateLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->a()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->a()V

    .line 41
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402b8

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->b()V

    .line 46
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f100e38

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->a:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f10030d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->b:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f10038a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->c:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->d:Landroid/widget/Button;

    .line 53
    const v0, 0x7f100348

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->e:Landroid/view/View;

    .line 54
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->f:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 55
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->d:Landroid/widget/Button;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 89
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 93
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->d:Landroid/widget/Button;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 94
    return-void
.end method


# virtual methods
.method public setButtonOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public setDesc(Lkwh;)V
    .locals 5

    .prologue
    const v4, 0x7f090831

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 59
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->d:Landroid/widget/Button;

    invoke-virtual {p1}, Lkwh;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->d:Landroid/widget/Button;

    invoke-virtual {p1}, Lkwh;->i()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    invoke-virtual {p1}, Lkwh;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_1
    invoke-virtual {p1}, Lkwh;->b()Lkwi;

    move-result-object v0

    sget-object v1, Lkwi;->SEND:Lkwi;

    if-ne v0, v1, :cond_2

    .line 71
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->c()V

    .line 72
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_2
    invoke-virtual {p1}, Lkwh;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->a:Landroid/widget/ImageView;

    const v1, 0x7f02046d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 59
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0904dd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lkwh;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lkwh;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lkwh;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 74
    :cond_2
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->d()V

    .line 75
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BankItemView;->a:Landroid/widget/ImageView;

    const v1, 0x7f02048b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method
