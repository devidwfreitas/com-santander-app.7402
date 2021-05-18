.class public Ljph;
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
    .line 92
    iput-object p1, p0, Ljph;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 106
    iget-object v0, p0, Ljph;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Ljph;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->b(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Ljph;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->c(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Ljph;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->d(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)V

    goto :goto_0
.end method
