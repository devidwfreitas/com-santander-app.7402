.class public Lihc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lihc;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lihc;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-static {v0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->a(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "Outros_PropostasEmAberto_Cancelar_Enviar_Acao"

    iget-object v1, p0, Lihc;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-static {v1}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->b(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ligk;

    iget-object v1, p0, Lihc;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-static {v1}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->c(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)I

    move-result v1

    iget-object v2, p0, Lihc;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-static {v2}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->d(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)Ligj;

    move-result-object v2

    invoke-virtual {v2}, Ligj;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ligk;-><init>(II)V

    .line 78
    iget-object v1, p0, Lihc;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-static {v1}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->e(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)Lihu;

    move-result-object v1

    invoke-interface {v1, v0}, Lihu;->a(Ligk;)V

    .line 80
    :cond_0
    return-void
.end method
