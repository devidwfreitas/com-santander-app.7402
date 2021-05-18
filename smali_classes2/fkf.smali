.class public Lfkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/santander/app/PoupancaAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/PoupancaAplicacaoActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lfkf;->b:Lcom/santander/app/PoupancaAplicacaoActivity;

    iput-object p2, p0, Lfkf;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 144
    const-string v0, "Investimentos_Poupanca_Aplicar_Valor_Acao"

    iget-object v1, p0, Lfkf;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method
