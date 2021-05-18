.class public Llqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Llqp;->b:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    iput-object p2, p0, Llqp;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4

    .prologue
    const v3, 0x7f0e0001

    .line 239
    iget-object v0, p0, Llqp;->b:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 241
    iget-object v0, p0, Llqp;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llqp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 243
    iget-object v0, p0, Llqp;->b:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    iget-object v1, p0, Llqp;->b:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Llqp;->b:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/TabLayout;->setTabTextColors(II)V

    .line 246
    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method
