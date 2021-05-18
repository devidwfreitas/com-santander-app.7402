.class public Lcom/santander/app/seguros/ui/widgets/BillingItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->a(Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ea

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->b()V

    .line 55
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->a()V

    .line 44
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lflv;->BillingItem:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->f:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->d:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    invoke-virtual {v2, v1}, Lcom/santander/app/seguros/ui/widgets/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f1004f3

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->a:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f1004f4

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->b:Landroid/view/View;

    .line 80
    const v0, 0x7f1004f6

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->c:Landroid/view/View;

    .line 81
    const v0, 0x7f1004f5

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->d:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    .line 82
    const v0, 0x7f10038a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->e:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f1004f7

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->f:Landroid/widget/TextView;

    .line 84
    return-void
.end method


# virtual methods
.method public setDesc(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->d:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method

.method public setLineBilling1(I)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public setLineBilling2(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItem;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
