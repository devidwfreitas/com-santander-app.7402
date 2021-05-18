.class public Lakb;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/app/Activity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lakb;->e:Ljava/util/List;

    iput-object p1, p0, Lakb;->d:Landroid/app/Activity;

    invoke-direct {p0}, Lakb;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lakb;->e:Ljava/util/List;

    iput-object p1, p0, Lakb;->d:Landroid/app/Activity;

    iput-object p2, p0, Lakb;->a:Landroid/view/View;

    invoke-direct {p0}, Lakb;->a()V

    return-void
.end method

.method static synthetic a(Lakb;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lakb;->d:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 0

    invoke-direct {p0}, Lakb;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lakb;->d:Landroid/app/Activity;

    sget v1, Lagg;->header_main:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lakb;->a:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lakb;->a:Landroid/view/View;

    sget v1, Lagg;->header_main:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lakb;->d:Landroid/app/Activity;

    sget v2, Lagf;->abc_ic_ab_back_material:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v0, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lakb;->d:Landroid/app/Activity;

    sget v3, Lagg;->back_button:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lakc;

    invoke-direct {v2, p0}, Lakc;-><init>(Lakb;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object v0, Lakd;->a:[I

    invoke-static {}, Lajd;->a()Lajd;

    move-result-object v2

    invoke-virtual {v2}, Lajd;->b()Laju;

    move-result-object v2

    invoke-virtual {v2}, Laju;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lakb;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lagd;->cred_header_defaut:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lakb;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lagd;->cred_header_private:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lakb;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lagd;->cred_header_select:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lakb;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lagd;->cred_header_van_gogh:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    move-object v1, v0

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


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lakb;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lakb;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lakb;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lakb;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakb;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lakb;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    invoke-virtual {v0, p1}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    invoke-virtual {v0, p1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
