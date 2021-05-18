.class public Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lizp;


# static fields
.field public static final a:I = 0x4cf


# instance fields
.field private b:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Ljay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string v1, "id"

    sget-object v2, Liut;->OTIMIZACAO:Liut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    const-string v1, "content"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/16 v1, 0x4cf

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 60
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 64
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    const/16 v0, 0x4cf

    if-ne p1, v0, :cond_0

    .line 66
    if-ne p2, v1, :cond_1

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->setResult(ILandroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->finish()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->setResult(ILandroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 37
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->b:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 40
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->b:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 42
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->c:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f090ad3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->d:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090950

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v0, Ljaz;

    invoke-direct {v0, p0, p0}, Ljaz;-><init>(Lizp;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->e:Ljay;

    .line 51
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;->e:Ljay;

    invoke-interface {v0}, Ljay;->a()V

    .line 52
    return-void
.end method
