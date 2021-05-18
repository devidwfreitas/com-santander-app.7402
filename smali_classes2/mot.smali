.class public Lmot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;I)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lmot;->b:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    iput p2, p0, Lmot;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 427
    const-string v0, "Transferencia_Acao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adicionar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmot;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lmot;->b:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->d(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmot;->b:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->d(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    :cond_0
    iget-object v0, p0, Lmot;->b:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->d(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "0,00"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_1
    iget-object v0, p0, Lmot;->b:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lmld;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmot;->b:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->b(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lmkw;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 437
    :cond_2
    iget-object v0, p0, Lmot;->b:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->c(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 440
    :cond_3
    iget-object v0, p0, Lmot;->b:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->d(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget v2, p0, Lmot;->a:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lmot;->b:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->d(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lnaj;->a(D)Ljava/lang/String;

    move-result-object v0

    const-string v2, "R$"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method
