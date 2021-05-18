.class public Lihj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lihj;->b:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    iput-object p2, p0, Lihj;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lihj;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 268
    const-string v0, "Outros_PropostasEmAberto_Desistir_PopUp_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lihj;->b:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    const-class v2, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    const-string v1, "proposalId"

    iget-object v2, p0, Lihj;->b:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v2}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->g(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Ligl;

    move-result-object v2

    invoke-virtual {v2}, Ligl;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    const-string v1, "proposalTitle"

    iget-object v2, p0, Lihj;->b:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v2}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->g(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Ligl;

    move-result-object v2

    invoke-virtual {v2}, Ligl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object v1, p0, Lihj;->b:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->startActivity(Landroid/content/Intent;)V

    .line 274
    return-void
.end method
