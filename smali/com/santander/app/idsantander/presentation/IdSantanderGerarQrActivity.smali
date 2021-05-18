.class public Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Liyx;


# instance fields
.field private a:Ljan;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;)Ljan;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->a:Ljan;

    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 115
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 117
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 119
    new-instance v2, Liyw;

    invoke-direct {v2, p0, v0, v1}, Liyw;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;Landroid/app/ActivityManager;Landroid/os/Handler;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->d:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 72
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->b:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->c:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090949

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->d(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string v1, "id"

    sget-object v2, Liut;->PROCESSO_INTERROMPIDO:Liut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 85
    const-string v1, "content"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->f:Landroid/widget/LinearLayout;

    .line 93
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 95
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 97
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 99
    const/16 v1, 0xc8

    .line 101
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, p0}, Lmxi;->a(ILandroid/content/Context;)I

    move-result v3

    .line 102
    invoke-static {v1, p0}, Lmxi;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const/16 v1, 0x14

    .line 107
    invoke-static {v1, p0}, Lmxi;->a(ILandroid/content/Context;)I

    move-result v2

    invoke-static {v1, p0}, Lmxi;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v4, v2, v4, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 108
    invoke-static {p1}, Lmym;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 48
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 50
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 51
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->setContentView(I)V

    .line 53
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->b:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->c:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f100c76

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->e:Landroid/widget/RelativeLayout;

    .line 57
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 59
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->d:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 61
    new-instance v0, Ljao;

    invoke-direct {v0, p0}, Ljao;-><init>(Liyx;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->a:Ljan;

    .line 62
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->a:Ljan;

    invoke-interface {v0}, Ljan;->a()V

    .line 64
    invoke-direct {p0, p0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->a(Landroid/app/Activity;)V

    .line 65
    return-void
.end method
