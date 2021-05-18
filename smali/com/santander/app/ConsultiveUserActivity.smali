.class public Lcom/santander/app/ConsultiveUserActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/santander/app/ConsultiveUserActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 25
    const-string v0, "ConsultiveUserActivity"

    iput-object v0, p0, Lcom/santander/app/ConsultiveUserActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public goBack(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/santander/app/ConsultiveUserActivity;->b:Lcom/santander/app/ConsultiveUserActivity;

    invoke-virtual {v0}, Lcom/santander/app/ConsultiveUserActivity;->finish()V

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f04012b

    invoke-virtual {p0, v0}, Lcom/santander/app/ConsultiveUserActivity;->setContentView(I)V

    .line 34
    iput-object p0, p0, Lcom/santander/app/ConsultiveUserActivity;->b:Lcom/santander/app/ConsultiveUserActivity;

    .line 36
    invoke-virtual {p0}, Lcom/santander/app/ConsultiveUserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 38
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 43
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/ConsultiveUserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    const v2, 0x7f04039b

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    const v2, 0x7f100071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0903b7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 47
    invoke-static {p0, v1, v3}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 49
    const v0, 0x7f100612

    invoke-virtual {p0, v0}, Lcom/santander/app/ConsultiveUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcom/santander/app/ConsultiveUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09073e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhau;->a(Landroid/app/Activity;)V

    .line 66
    invoke-super {p0}, Lgrs;->onPause()V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lgrs;->onResume()V

    .line 59
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhau;->a(Landroid/app/Activity;)V

    .line 60
    return-void
.end method
