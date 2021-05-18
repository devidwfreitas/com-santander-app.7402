.class public Lguw;
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
    .line 276
    iput-object p1, p0, Lguw;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lguw;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    iget-object v0, v0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cadastro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    const-string v0, "Pagamentos_Pagamento_Comprovante_Acao"

    const-string v1, "CadastroEmDebitoAutomatico"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lguw;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    iget-object v2, p0, Lguw;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    iget-object v2, v2, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v2}, Lgvb;->t()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lguw;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    iget-object v1, v1, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v1}, Lgvb;->w()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lguw;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    iget-object v1, v1, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v1}, Lgvb;->w()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    const-string v1, "dadosOferta"

    iget-object v2, p0, Lguw;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    iget-object v2, v2, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v2}, Lgvb;->w()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 291
    :cond_1
    iget-object v1, p0, Lguw;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void

    .line 282
    :cond_2
    iget-object v0, p0, Lguw;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    iget-object v0, v0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "Outros_RecargaDeTelefone_Comprovante_Acao"

    const-string v1, "ProgramarRecarga"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
