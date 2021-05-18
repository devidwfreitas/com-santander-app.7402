.class final Lahh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# instance fields
.field private synthetic a:Lahe;


# direct methods
.method constructor <init>(Lahe;)V
    .locals 0

    iput-object p1, p0, Lahh;->a:Lahe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public final onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3

    iget-object v0, p0, Lahh;->a:Lahe;

    invoke-static {v0}, Lahe;->a(Lahe;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lahh;->a:Lahe;

    invoke-static {v0}, Lahe;->b(Lahe;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lagl;->tag_acao:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lahh;->a:Lahe;

    invoke-static {v1}, Lahe;->b(Lahe;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lagl;->tag_valor_total:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laiy;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lahh;->a:Lahe;

    invoke-static {v0}, Lahe;->b(Lahe;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lagl;->tag_acao:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lahh;->a:Lahe;

    invoke-static {v1}, Lahe;->b(Lahe;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lagl;->tag_valor_mes:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laiy;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
