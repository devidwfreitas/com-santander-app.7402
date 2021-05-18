.class public Lfzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lfzz;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 169
    const-string v0, "Pagamentos_Pagamento_CadastroEmDebitoAutomatico_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfzz;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    iget-object v1, p0, Lfzz;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    return-void
.end method
