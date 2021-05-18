.class public Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lizr;


# instance fields
.field private a:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljba;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;)Ljba;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->d:Ljba;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 34
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->a:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 37
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->b:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->c:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->a:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 41
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090956

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    new-instance v0, Ljbb;

    invoke-direct {v0, p0, p0}, Ljbb;-><init>(Lizr;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->d:Ljba;

    .line 45
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->d:Ljba;

    new-instance v1, Lizq;

    invoke-direct {v1, p0}, Lizq;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;)V

    invoke-interface {v0, v1}, Ljba;->a(Lgyx;)V

    .line 51
    return-void
.end method
