.class public Lnnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lme/relex/circleindicator/CircleIndicator;


# direct methods
.method public constructor <init>(Lme/relex/circleindicator/CircleIndicator;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->a(Lme/relex/circleindicator/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->a(Lme/relex/circleindicator/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->b(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->b(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 187
    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->b(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 190
    :cond_2
    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->c(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->c(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 192
    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->c(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 196
    :cond_3
    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->d(Lme/relex/circleindicator/CircleIndicator;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    iget-object v1, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v1}, Lme/relex/circleindicator/CircleIndicator;->d(Lme/relex/circleindicator/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 197
    iget-object v1, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v1}, Lme/relex/circleindicator/CircleIndicator;->e(Lme/relex/circleindicator/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 198
    iget-object v1, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v1}, Lme/relex/circleindicator/CircleIndicator;->b(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->b(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 202
    :cond_4
    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {v0, p1}, Lme/relex/circleindicator/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_5

    .line 204
    iget-object v1, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v1}, Lme/relex/circleindicator/CircleIndicator;->f(Lme/relex/circleindicator/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    iget-object v1, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v1}, Lme/relex/circleindicator/CircleIndicator;->c(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->c(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 208
    :cond_5
    iget-object v0, p0, Lnnj;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0, p1}, Lme/relex/circleindicator/CircleIndicator;->a(Lme/relex/circleindicator/CircleIndicator;I)I

    goto/16 :goto_0
.end method
