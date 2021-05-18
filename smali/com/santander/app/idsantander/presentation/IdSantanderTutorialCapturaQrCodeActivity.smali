.class public Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lizv;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/santander/app/widget/Indicator;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/widget/Button;

.field private e:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7f02066f

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f020670

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f020671

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f020672

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->e:[Ljava/lang/Integer;

    .line 30
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->setResult(I)V

    .line 88
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->finish()V

    .line 89
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->b:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 83
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->e:[Ljava/lang/Integer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    return-void

    .line 83
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->close()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->a(I)V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->a()V

    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->finish()V

    .line 94
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f040076

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f10032b

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->a:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->a:Landroid/widget/TextView;

    new-instance v1, Lizs;

    invoke-direct {v1, p0}, Lizs;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f100355

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->b:Lcom/santander/app/widget/Indicator;

    .line 50
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->b:Lcom/santander/app/widget/Indicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 52
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->d:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09019a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->d:Landroid/widget/Button;

    new-instance v1, Lizt;

    invoke-direct {v1, p0}, Lizt;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f100354

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->c:Landroid/support/v4/view/ViewPager;

    .line 62
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->c:Landroid/support/v4/view/ViewPager;

    new-instance v1, Ljab;

    iget-object v2, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->e:[Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljab;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 63
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;->c:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lizu;

    invoke-direct {v1, p0}, Lizu;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 79
    return-void
.end method
