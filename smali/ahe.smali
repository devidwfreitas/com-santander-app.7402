.class public Lahe;
.super Lakb;


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/support/design/widget/TabLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Lajg;

.field private g:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    invoke-direct {p0, p1}, Lakb;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lahe;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Lahe;->d()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagg;->viewpager:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lahe;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lahe;->d()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagg;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lagl;->meus_compromissos:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lahe;->d()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagg;->main_content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lahe;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lahe;->d()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagg;->no_debts_main:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lahe;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lahe;->d()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagg;->main_content_tab:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lahe;->b:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Lahe;->a()V

    iget-object v0, p0, Lahe;->b:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lahe;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lahe;->b:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lahh;

    invoke-direct {v1, p0}, Lahh;-><init>(Lahe;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    new-instance v0, Lagz;

    invoke-virtual {p0}, Lahe;->d()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lahi;

    invoke-direct {v2, p0}, Lahi;-><init>(Lahe;)V

    invoke-direct {v0, v1, v2}, Lagz;-><init>(Landroid/content/Context;Laha;)V

    invoke-virtual {v0}, Lagz;->a()V

    iget-object v0, p0, Lahe;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lano;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lahe;->a:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lahe;Lajg;)Lajg;
    .locals 0

    iput-object p1, p0, Lahe;->f:Lajg;

    return-object p1
.end method

.method static synthetic a(Lahe;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lahe;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a()V
    .locals 3

    sget-object v0, Lahj;->a:[I

    invoke-static {}, Lajd;->a()Lajd;

    move-result-object v1

    invoke-virtual {v1}, Lajd;->b()Laju;

    move-result-object v1

    invoke-virtual {v1}, Laju;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lahe;->b:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lahe;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagd;->cred_header_defaut:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setBackgroundColor(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lahe;->b:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lahe;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagd;->cred_header_private:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lahe;->b:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lahe;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagd;->cred_header_select:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lahe;->b:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lahe;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagd;->cred_header_van_gogh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setBackgroundColor(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lahe;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    invoke-direct {p0, p1}, Lahe;->a(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method private a(Landroid/support/v4/view/ViewPager;)V
    .locals 4

    const/16 v1, 0x8

    iget-object v0, p0, Lahe;->f:Lajg;

    invoke-virtual {v0}, Lajg;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lahe;->f:Lajg;

    invoke-virtual {v0}, Lajg;->d()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lahe;->f:Lajg;

    invoke-virtual {v0}, Lajg;->e()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lahe;->f:Lajg;

    invoke-virtual {v0}, Lajg;->f()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lahe;->f:Lajg;

    invoke-virtual {v0}, Lajg;->g()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lahe;->b:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    iget-object v0, p0, Lahe;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lahe;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lahk;

    iget-object v1, p0, Lahe;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lahk;-><init>(Landroid/support/v4/app/FragmentManager;)V

    new-instance v1, Lahd;

    iget-object v2, p0, Lahe;->f:Lajg;

    invoke-direct {v1, v2}, Lahd;-><init>(Lajg;)V

    iget-object v2, p0, Lahe;->g:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lagl;->total:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lahk;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    new-instance v1, Lahc;

    iget-object v2, p0, Lahe;->f:Lajg;

    invoke-direct {v1, v2}, Lahc;-><init>(Lajg;)V

    iget-object v2, p0, Lahe;->g:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lagl;->mes:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lahk;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0
.end method

.method static synthetic b(Lahe;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lahe;->g:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic c(Lahe;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lahe;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic d(Lahe;)Landroid/support/design/widget/TabLayout;
    .locals 1

    iget-object v0, p0, Lahe;->b:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method static synthetic e(Lahe;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lahe;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method
