.class public Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lgsw;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lgsw;)V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .prologue
    .line 40
    iput-object p2, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->a:Lgsw;

    .line 41
    const v0, 0x7f040228

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const v0, 0x7f100a7a

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->b:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->b:Landroid/widget/Button;

    invoke-interface {p2}, Lgsw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->b:Landroid/widget/Button;

    new-instance v1, Lgsu;

    invoke-direct {v1, p0, p2}, Lgsu;-><init>(Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;Lgsw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f100a7b

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->c:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->c:Landroid/widget/Button;

    invoke-interface {p2}, Lgsw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->c:Landroid/widget/Button;

    new-instance v1, Lgsv;

    invoke-direct {v1, p0, p2}, Lgsv;-><init>(Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;Lgsw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->setSelectedButtonTab1()V

    .line 65
    return-void
.end method

.method public setSelectedButtonTab1()V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020280

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 73
    iget-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 74
    return-void
.end method

.method public setSelectedButtonTab2()V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020280

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 82
    iget-object v0, p0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 83
    return-void
.end method
