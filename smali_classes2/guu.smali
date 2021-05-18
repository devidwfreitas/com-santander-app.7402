.class public Lguu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lguu;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 189
    const-string v0, "Pagamentos_Pagamento_Comprovante_Acao"

    const-string v1, "PagarOutraConta"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    sput-boolean v0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->b:Z

    .line 192
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lguu;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    const-class v2, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lguu;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    return-void
.end method
