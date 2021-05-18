.class public Lcom/santander/app/ExitActivity;
.super Lcom/ca/android/app/CaMDOActivity;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ca/android/app/CaMDOActivity;-><init>()V

    .line 17
    const-string v0, "ExitActivity"

    iput-object v0, p0, Lcom/santander/app/ExitActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/ca/android/app/CaMDOActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/santander/app/ExitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showHome"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 30
    invoke-virtual {p0}, Lcom/santander/app/ExitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "errorMessage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmxn;->a(Landroid/app/Activity;ZLjava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/santander/app/MinhaConta;->g()V

    .line 33
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/ca/android/app/CaMDOActivity;->onPause()V

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->a(Z)V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/ca/android/app/CaMDOActivity;->onResume()V

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->a(Z)V

    .line 41
    invoke-static {}, Lcom/santander/app/MinhaConta;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/santander/app/MinhaConta;->g()V

    .line 44
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/ca/android/app/CaMDOActivity;->onStart()V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/ExitActivity;->setVisible(Z)V

    .line 57
    return-void
.end method
