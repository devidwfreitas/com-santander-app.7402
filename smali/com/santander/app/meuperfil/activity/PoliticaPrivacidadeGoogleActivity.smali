.class public Lcom/santander/app/meuperfil/activity/PoliticaPrivacidadeGoogleActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PoliticaPrivacidadeGoogleActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PoliticaPrivacidadeGoogleActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PoliticaPrivacidadeGoogleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ab4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 35
    const v0, 0x7f040099

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/PoliticaPrivacidadeGoogleActivity;->setContentView(I)V

    .line 36
    return-void
.end method
