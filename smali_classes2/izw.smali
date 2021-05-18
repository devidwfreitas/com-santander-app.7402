.class public Lizw;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lizw;->a:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    const-string v0, "y"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lizw;->a:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->a:Ljava/lang/Boolean;

    .line 55
    const-string v0, "y"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lizw;->a:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    invoke-static {v1}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 57
    iget-object v1, p0, Lizw;->a:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    invoke-static {v1}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lizw;->a:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->b(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lizw;->a:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->a:Ljava/lang/Boolean;

    goto :goto_0
.end method
