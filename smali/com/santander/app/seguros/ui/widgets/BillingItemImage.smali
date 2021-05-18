.class public Lcom/santander/app/seguros/ui/widgets/BillingItemImage;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p2}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->a(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400eb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->b()V

    .line 58
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->a()V

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lflv;->BillingItemImage:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->d:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    invoke-virtual {v2, v1}, Lcom/santander/app/seguros/ui/widgets/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f1004f3

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->a:Landroid/widget/LinearLayout;

    .line 82
    const v0, 0x7f1004f4

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->b:Landroid/view/View;

    .line 83
    const v0, 0x7f1004f6

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->c:Landroid/view/View;

    .line 84
    const v0, 0x7f1004f5

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->d:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    .line 85
    const v0, 0x7f10038a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->e:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f1004f8

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->f:Landroid/widget/ImageView;

    .line 87
    return-void
.end method


# virtual methods
.method public setDesc(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->d:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method public setImageItem(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method public setLineBilling1(I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    return-void
.end method

.method public setLineBilling2(I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    return-void
.end method
