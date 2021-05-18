.class public Lmnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lmnp;->a:Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    const-string v0, "Transferencia_Acao"

    const-string v1, "BotaoConfirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lmnp;->a:Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->a(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmnp;->a:Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->a(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lmnp;->a:Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->b(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;)Lmlo;

    move-result-object v0

    iget-object v1, p0, Lmnp;->a:Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;

    invoke-static {v1}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->a(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlo;->j(Ljava/lang/String;)V

    .line 121
    :cond_1
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000122"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 122
    :cond_2
    iget-object v0, p0, Lmnp;->a:Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->c(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_3
    iget-object v0, p0, Lmnp;->a:Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;

    invoke-virtual {v0, v2, v2}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->a(IZ)V

    goto :goto_0
.end method
