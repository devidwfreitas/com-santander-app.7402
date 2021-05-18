.class public Lnex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/widget/Carrossel;


# direct methods
.method public constructor <init>(Lcom/santander/app/widget/Carrossel;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lnex;->a:Lcom/santander/app/widget/Carrossel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lnex;->a:Lcom/santander/app/widget/Carrossel;

    iget-object v0, v0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lnex;->a:Lcom/santander/app/widget/Carrossel;

    iget-object v0, v0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lnex;->a:Lcom/santander/app/widget/Carrossel;

    iget-object v1, v1, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 108
    :cond_0
    return-void
.end method
