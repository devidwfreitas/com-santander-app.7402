.class public Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Liyf;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private e:Ljah;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;)Ljah;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->e:Ljah;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->d:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 66
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090941

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->c:Landroid/widget/Button;

    new-instance v1, Liye;

    invoke-direct {v1, p0}, Liye;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 38
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 42
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 43
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 45
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->d:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 47
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->a:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->b:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->c:Landroid/widget/Button;

    .line 52
    new-instance v0, Ljai;

    invoke-direct {v0, p0, p0}, Ljai;-><init>(Liyf;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->e:Ljah;

    .line 53
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;->e:Ljah;

    invoke-interface {v0}, Ljah;->a()V

    .line 54
    return-void
.end method
