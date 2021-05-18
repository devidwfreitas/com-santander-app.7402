.class public Lgee;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lgee;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lgee;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 27
    const v1, 0x7f0907f9

    invoke-virtual {p0, v1}, Lgee;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lgej;

    invoke-direct {v0, p0}, Lgej;-><init>(Landroid/app/Activity;)V

    .line 29
    return-void
.end method
