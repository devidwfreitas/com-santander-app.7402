.class Lijj;
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
    .line 293
    iput-object p1, p0, Lijj;->a:Lijf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lijj;->a:Lijf;

    invoke-static {v0}, Lijf;->k(Lijf;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    iget-object v0, p0, Lijj;->a:Lijf;

    invoke-static {v0}, Lijf;->k(Lijf;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lijj;->a:Lijf;

    invoke-static {v1}, Lijf;->k(Lijf;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 301
    :cond_0
    return-void
.end method
