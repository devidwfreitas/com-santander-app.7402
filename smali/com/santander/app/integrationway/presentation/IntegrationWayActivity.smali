.class public Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljco;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljcp;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    const/16 v0, 0x1002

    .line 84
    invoke-virtual {p0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->a(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 95
    invoke-static {p0}, Lgpu;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    const-string v1, "isway"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const-string v1, "way_action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const-string v1, "NUMEROCARTAO"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    :cond_0
    invoke-virtual {p0, v0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    const-string v1, "dlb-ticket"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->b:Ljcp;

    invoke-interface {v1, v0}, Ljcp;->a(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->b:Ljcp;

    invoke-interface {v0}, Ljcp;->b()V

    .line 62
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    const-string v0, "Alerta"

    const/4 v1, 0x1

    const-string v2, "OK"

    invoke-static {p0, v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 112
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 107
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->c:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 117
    iget-object v0, p0, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 122
    iget-object v0, p0, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->c:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 123
    iget-object v0, p0, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->onBackPressed()V

    .line 128
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 67
    if-nez p2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->finish()V

    .line 70
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 75
    invoke-virtual {p0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->finish()V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f04027c

    invoke-virtual {p0, v0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->setContentView(I)V

    .line 38
    iput-object p0, p0, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->a:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->a()V

    .line 42
    const v0, 0x7f100d6c

    invoke-virtual {p0, v0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->c:Landroid/widget/ProgressBar;

    .line 43
    const v0, 0x7f100d6d

    invoke-virtual {p0, v0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->d:Landroid/widget/TextView;

    .line 45
    new-instance v0, Ljcq;

    invoke-direct {v0, p0}, Ljcq;-><init>(Ljco;)V

    iput-object v0, p0, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->b:Ljcp;

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->b()V

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lgrs;->onPause()V

    .line 133
    invoke-virtual {p0}, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;->finish()V

    .line 134
    return-void
.end method
