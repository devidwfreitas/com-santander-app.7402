.class public Ljpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Ljpi;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 130
    iget-object v0, p0, Ljpi;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->b(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Ljpi;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Ljpi;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->c(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Ljpi;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->e(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)V

    goto :goto_0
.end method
