.class public Lack;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private a:Lacf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lacf;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lack;->a:Lacf;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lack;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 32
    invoke-virtual {p0}, Lack;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lack;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lacj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Leju;

    invoke-direct {v1}, Leju;-><init>()V

    invoke-virtual {v1}, Leju;->j()Lejm;

    move-result-object v1

    const-class v2, Lacg;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacf;

    iput-object v0, p0, Lack;->a:Lacf;

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Lacg;

    invoke-direct {v0}, Lacg;-><init>()V

    iput-object v0, p0, Lack;->a:Lacf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v0, Lacg;

    invoke-direct {v0}, Lacg;-><init>()V

    iput-object v0, p0, Lack;->a:Lacf;

    goto :goto_0
.end method
