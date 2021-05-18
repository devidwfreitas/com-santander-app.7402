.class public Lmjt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;


# direct methods
.method public constructor <init>(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lmjt;->a:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 129
    const-string v0, "Investimentos_RendaFixa_Aplicar_Sugestao_Valor"

    iget-object v1, p0, Lmjt;->a:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    invoke-static {v1}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->a(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "Investimentos_RendaFixa_Aplicar_Sugestao_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lmjt;->a:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    invoke-static {v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->b(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)Lmka;

    move-result-object v0

    iget-object v1, p0, Lmjt;->a:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    invoke-static {v1}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->a(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmka;->c(Ljava/lang/String;)V

    .line 132
    return-void
.end method
