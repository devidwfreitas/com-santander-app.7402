.class public Lmoq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lmoq;->a:Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmkq;

    .line 98
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 99
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lmoq;->a:Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->setResult(ILandroid/content/Intent;)V

    .line 101
    iget-object v0, p0, Lmoq;->a:Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;

    invoke-virtual {v0}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->finish()V

    .line 102
    return-void
.end method
