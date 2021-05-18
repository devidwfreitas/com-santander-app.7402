.class public Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lifh;


# static fields
.field public static final a:I = 0x463


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private w:Lifq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;)Lifq;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->w:Lifq;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->w:Lifq;

    invoke-interface {v0}, Lifq;->a()V

    .line 64
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020310

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 70
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->e:Landroid/widget/Button;

    new-instance v1, Liff;

    invoke-direct {v1, p0}, Liff;-><init>(Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->f:Landroid/widget/Button;

    new-instance v1, Lifg;

    invoke-direct {v1, p0}, Lifg;-><init>(Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public a(Liev;)V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 108
    const/16 v1, 0x463

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->setResult(ILandroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->finish()V

    .line 102
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 114
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    const/16 v0, 0x463

    if-ne p1, v0, :cond_0

    .line 117
    if-ne p2, v1, :cond_1

    .line 120
    invoke-static {}, Lgpu;->a()V

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    invoke-virtual {p0, v1, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->setResult(ILandroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->finish()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->setResult(ILandroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->b()V

    .line 95
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 45
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->b:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->c:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->d:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->e:Landroid/widget/Button;

    .line 52
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->f:Landroid/widget/Button;

    .line 54
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 56
    new-instance v0, Lifr;

    invoke-direct {v0, p0, p0}, Lifr;-><init>(Lifh;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->w:Lifq;

    .line 57
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->w:Lifq;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lifq;->a(Landroid/content/Intent;)V

    .line 58
    return-void
.end method
