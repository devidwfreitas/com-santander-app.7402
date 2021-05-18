.class public Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lifp;


# static fields
.field public static a:I


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private w:Lifw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x463

    sput v0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->finish()V

    .line 69
    return-void
.end method

.method public a(Liev;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 103
    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "kind"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    sget v1, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 73
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02030f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 79
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->w:Lifw;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lifw;->a(Z)V

    .line 83
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 87
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02030f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 93
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->w:Lifw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lifw;->a(Z)V

    .line 97
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 111
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    sget v0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->a:I

    if-ne p1, v0, :cond_0

    .line 114
    if-ne p2, v1, :cond_1

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    invoke-virtual {p0, v1, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->setResult(ILandroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->finish()V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->setResult(ILandroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 44
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->b:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->c:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->d:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->e:Landroid/widget/Button;

    .line 51
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->f:Landroid/widget/Button;

    .line 53
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 55
    new-instance v0, Lifx;

    invoke-direct {v0, p0, p0}, Lifx;-><init>(Lifp;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->w:Lifw;

    .line 56
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->w:Lifw;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lifw;->a(Landroid/content/Intent;)V

    .line 57
    return-void
.end method
