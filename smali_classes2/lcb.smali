.class Llcb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# instance fields
.field final synthetic a:Llca;


# direct methods
.method constructor <init>(Llca;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Llcb;->a:Llca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4

    .prologue
    const v3, 0x7f0e0001

    .line 79
    iget-object v0, p0, Llcb;->a:Llca;

    invoke-static {v0}, Llca;->a(Llca;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 81
    iget-object v0, p0, Llcb;->a:Llca;

    invoke-static {v0}, Llca;->b(Llca;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llcb;->a:Llca;

    invoke-static {v0}, Llca;->b(Llca;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 82
    iget-object v0, p0, Llcb;->a:Llca;

    invoke-static {v0}, Llca;->c(Llca;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    iget-object v1, p0, Llcb;->a:Llca;

    invoke-virtual {v1}, Llca;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Llcb;->a:Llca;

    invoke-virtual {v2}, Llca;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/TabLayout;->setTabTextColors(II)V

    .line 84
    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
