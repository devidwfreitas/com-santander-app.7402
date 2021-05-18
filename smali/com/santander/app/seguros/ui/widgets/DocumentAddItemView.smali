.class public Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->a()V

    .line 42
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402d0

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->c()V

    .line 47
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->b:Landroid/widget/ImageView;

    const v1, 0x7f020372

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->b()V

    .line 50
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->d:Landroid/widget/Button;

    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 52
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 57
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->a:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 62
    const v0, 0x7f100ef1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->b:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f100e39

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->c:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->d:Landroid/widget/Button;

    .line 65
    const v0, 0x7f100348

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->e:Landroid/view/View;

    .line 66
    return-void
.end method


# virtual methods
.method public setAddOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method
