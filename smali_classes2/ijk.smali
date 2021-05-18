.class Lijk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lijf;


# direct methods
.method constructor <init>(Lijf;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lijk;->a:Lijf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lijk;->a:Lijf;

    invoke-static {v0}, Lijf;->k(Lijf;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lijk;->a:Lijf;

    invoke-static {v1}, Lijf;->k(Lijf;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lijk;->a:Lijf;

    invoke-static {v0}, Lijf;->k(Lijf;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lijk;->a:Lijf;

    invoke-static {v1}, Lijf;->k(Lijf;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 311
    :cond_0
    return-void
.end method
