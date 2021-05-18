.class public Llsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Llsc;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iput-object p2, p0, Llsc;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 612
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 589
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Llsc;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 594
    iget-object v0, p0, Llsc;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)Z

    .line 599
    :goto_0
    iget-object v0, p0, Llsc;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)I

    .line 600
    iget-object v1, p0, Llsc;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v0, p0, Llsc;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)I

    move-result v2

    iget-object v0, p0, Llsc;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvu;

    invoke-virtual {v0}, Lkvu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v2, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;IILjava/lang/String;)V

    .line 601
    iget-object v0, p0, Llsc;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)V

    .line 603
    iget-object v0, p0, Llsc;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)V

    .line 606
    iget-object v0, p0, Llsc;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v1, p0, Llsc;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)Lkvx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Lkvx;)V

    .line 607
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Llsc;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)Z

    goto :goto_0
.end method
