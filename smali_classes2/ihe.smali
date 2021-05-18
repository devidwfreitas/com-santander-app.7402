.class public Lihe;
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
    .line 93
    iput-object p1, p0, Lihe;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lihe;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-static {v0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->a(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    iget-object v1, p0, Lihe;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligj;

    invoke-static {v1, v0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->a(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;Ligj;)Ligj;

    .line 99
    const-string v0, "Outros_PropostasEmAberto_Cancelar_Motivo_Acao"

    iget-object v1, p0, Lihe;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-static {v1}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->d(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)Ligj;

    move-result-object v1

    invoke-virtual {v1}, Ligj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
