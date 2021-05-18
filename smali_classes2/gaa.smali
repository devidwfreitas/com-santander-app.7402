.class public Lgaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lgaa;->b:Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    iput-object p2, p0, Lgaa;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 181
    const-string v0, "Pagamentos_Pagamento_CadastroEmDebitoAutomatico_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lgaa;->b:Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;)Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v1, ""

    .line 185
    iget-object v2, p0, Lgaa;->b:Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    invoke-static {v2}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;)Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cad. d\u00e9bito autom\u00e1tico  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgaa;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method
