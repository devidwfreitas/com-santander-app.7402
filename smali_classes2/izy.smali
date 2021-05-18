.class public Lizy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lizy;->b:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    iput-object p2, p0, Lizy;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lizy;->b:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    iget-object v1, p0, Lizy;->b:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    invoke-static {v1}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->d(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "S"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lizy;->b:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->e(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)Ljbc;

    move-result-object v0

    invoke-interface {v0}, Ljbc;->b()V

    .line 166
    iget-object v0, p0, Lizy;->b:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->e(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)Ljbc;

    move-result-object v0

    invoke-interface {v0}, Ljbc;->a()V

    .line 167
    iget-object v0, p0, Lizy;->a:Landroid/widget/Button;

    iget-object v1, p0, Lizy;->b:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    invoke-virtual {v1}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09019b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lizy;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    return-void
.end method
