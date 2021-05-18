.class public Lfgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lfgg;->d:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    iput-object p2, p0, Lfgg;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lfgg;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lfgg;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lfgh;

    invoke-direct {v0, p0}, Lfgh;-><init>(Lfgg;)V

    .line 100
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lfgg;->d:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    iget-object v2, v2, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->i:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    const-string v2, "Voc\u00ea realmente deseja alterar esse benefici\u00e1rio?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Confirmar"

    .line 102
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancelar"

    .line 103
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 105
    return-void
.end method
