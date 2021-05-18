.class public Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lizo;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private g:Ljav;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 60
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f090ad2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09094d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v0, Ljaw;

    invoke-direct {v0, p0, p0}, Ljaw;-><init>(Lizo;Landroid/support/v7/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->g:Ljav;

    .line 69
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->g:Ljav;

    invoke-interface {v0}, Ljav;->a()V

    .line 70
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->g:Ljav;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "tipoConversao"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljav;->a(Ljava/lang/Object;)V

    .line 71
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 35
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 36
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->a:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->b:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->c:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->d:Landroid/widget/Button;

    .line 46
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->e:Landroid/widget/Button;

    .line 48
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 50
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;->c()V

    .line 51
    return-void
.end method
