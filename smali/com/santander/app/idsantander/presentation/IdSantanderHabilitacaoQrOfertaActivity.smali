.class public Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lizo;


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private w:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private x:Ljav;

.field private final y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 47
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->y:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    const-string v1, "qr"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->f()V

    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->e:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->w:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 82
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f090ad2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09094e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09019a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0, p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->a(Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->g:Landroid/widget/Button;

    .line 90
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->g:Landroid/widget/Button;

    new-instance v1, Lizd;

    invoke-direct {v1, p0}, Lizd;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040257

    const/4 v3, 0x0

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f100c6e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f100c6c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v0, Ljar;

    invoke-direct {v0, p0, p0}, Ljar;-><init>(Lizo;Landroid/support/v7/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->x:Ljav;

    .line 107
    sget-boolean v0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->a:Z

    if-eqz v0, :cond_0

    .line 108
    sput-boolean v4, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->a:Z

    .line 109
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->f()V

    .line 111
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderTutorialCapturaQrCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e7

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Levq;

    invoke-direct {v0, p0}, Levq;-><init>(Landroid/app/Activity;)V

    .line 173
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Levq;->b(Z)Levq;

    .line 174
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Levq;->a(Z)Levq;

    .line 175
    const-class v1, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;

    invoke-virtual {v0, v1}, Levq;->a(Ljava/lang/Class;)Levq;

    .line 176
    sget-object v1, Levq;->d:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Levq;->b(Ljava/util/Collection;)V

    .line 177
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lize;

    invoke-direct {v0, p0, p1}, Lize;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;Landroid/app/Activity;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 119
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 121
    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_1

    .line 122
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->callOnClick()Z

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {p1, p2, p3}, Levq;->a(IILandroid/content/Intent;)Levr;

    move-result-object v0

    .line 128
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 130
    if-eqz p2, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->e()V

    goto :goto_0

    .line 133
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Levr;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Levr;->a()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_1
    invoke-direct {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_4
    const-string v0, ""

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 53
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 54
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->setContentView(I)V

    .line 56
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->c:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->d:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->e:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->f:Landroid/widget/Button;

    .line 64
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->g:Landroid/widget/Button;

    .line 66
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->w:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 68
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->b:Landroid/widget/LinearLayout;

    .line 70
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->c()V

    .line 71
    return-void
.end method
