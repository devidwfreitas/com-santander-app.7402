.class public Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lifo;


# instance fields
.field private a:Lift;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->setResult(ILandroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->finish()V

    .line 188
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;Liev;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->a(Liev;)V

    return-void
.end method

.method private a(Liev;)V
    .locals 2

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/fingerprint/presentation/FingerprintUpdateStatusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->finish()V

    .line 182
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 61
    const-string v0, "Biometria_Habilitar"

    invoke-static {v0}, Lfrq;->a(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02030e

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 69
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    new-instance v1, Lifi;

    invoke-direct {v1, p0}, Lifi;-><init>(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public a(Ljava/lang/String;Liev;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 107
    const-string v1, "Biometria_Habilitar"

    const-string v2, "Processo interrompido"

    invoke-static {v1, v2}, Lfrq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v2, 0x7f02030d

    invoke-virtual {v1, v2}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 115
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    new-instance v2, Lifk;

    invoke-direct {v2, p0, p2}, Lifk;-><init>(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;Liev;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->f:Landroid/widget/Button;

    new-instance v2, Lifl;

    invoke-direct {v2, p0}, Lifl;-><init>(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->d:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 84
    const-string v0, "Biometria_Desabilitar"

    invoke-static {v0}, Lfrq;->a(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02030e

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 92
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    new-instance v1, Lifj;

    invoke-direct {v1, p0}, Lifj;-><init>(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method public b(Ljava/lang/String;Liev;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 141
    const-string v1, "Biometria_Desabilitar"

    const-string v2, "Processo interrompido"

    invoke-static {v1, v2}, Lfrq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v2, 0x7f02030d

    invoke-virtual {v1, v2}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 149
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    new-instance v2, Lifm;

    invoke-direct {v2, p0, p2}, Lifm;-><init>(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;Liev;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->f:Landroid/widget/Button;

    new-instance v2, Lifn;

    invoke-direct {v2, p0}, Lifn;-><init>(Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->d:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->a(I)V

    .line 175
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 43
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->setContentView(I)V

    .line 45
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->b:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->c:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->d:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->e:Landroid/widget/Button;

    .line 50
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->f:Landroid/widget/Button;

    .line 52
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 54
    new-instance v0, Lifu;

    invoke-direct {v0, p0, p0}, Lifu;-><init>(Lifo;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->a:Lift;

    .line 55
    iget-object v0, p0, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->a:Lift;

    invoke-virtual {p0}, Lcom/santander/app/fingerprint/presentation/FingerprintReceiptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lift;->a(Landroid/content/Intent;)V

    .line 56
    return-void
.end method
