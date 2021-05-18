.class public Lfgy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/CadastramentoTransOkActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/CadastramentoTransOkActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lfgy;->a:Lcom/santander/app/CadastramentoTransOkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 79
    const-string v0, "Cartoes_CadastrarFaturaPorEmail_Comprovante_Acaos"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lfgy;->a:Lcom/santander/app/CadastramentoTransOkActivity;

    invoke-static {v0}, Lcom/santander/app/CadastramentoTransOkActivity;->a(Lcom/santander/app/CadastramentoTransOkActivity;)Lcom/santander/app/CadastramentoTransOkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/CadastramentoTransOkActivity;->a()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, ""

    .line 83
    const-string v2, "Cadastro de fatura por e-mail"

    .line 84
    iget-object v3, p0, Lfgy;->a:Lcom/santander/app/CadastramentoTransOkActivity;

    invoke-static {v3}, Lcom/santander/app/CadastramentoTransOkActivity;->a(Lcom/santander/app/CadastramentoTransOkActivity;)Lcom/santander/app/CadastramentoTransOkActivity;

    move-result-object v3

    invoke-static {v3, v2, v1, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
