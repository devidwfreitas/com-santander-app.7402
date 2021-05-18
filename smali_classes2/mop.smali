.class public Lmop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lmop;->a:Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lmop;->a:Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->a(Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lmop;->a:Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;

    invoke-static {v1, v0}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->a(Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;Ljava/lang/String;)V

    .line 77
    return-void
.end method
