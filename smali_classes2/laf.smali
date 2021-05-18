.class Llaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;

.field final synthetic b:Llae;


# direct methods
.method constructor <init>(Llae;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Llaf;->b:Llae;

    iput-object p2, p0, Llaf;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    .line 183
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    iget-object v1, p0, Llaf;->b:Llae;

    invoke-static {v1}, Llae;->a(Llae;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .prologue
    .line 162
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llaf;->b:Llae;

    invoke-virtual {v1}, Llae;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 164
    if-ne v0, p1, :cond_0

    .line 165
    const v1, 0x7f0e006b

    .line 170
    :goto_1
    iget-object v2, p0, Llaf;->a:Landroid/support/v4/view/ViewPager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "view"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Llaf;->a(Landroid/view/View;I)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const v1, 0x7f0e0079

    goto :goto_1

    .line 172
    :cond_1
    return-void
.end method
