.class public Ljpm;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljqj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-direct {p0}, Lgne;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljpm;->a([Ljava/lang/Void;)Ljqj;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljqj;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Ljpm;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    :goto_0
    return-object v0

    .line 175
    :cond_0
    new-instance v1, Ljqi;

    invoke-direct {v1}, Ljqi;-><init>()V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    .line 177
    invoke-static {v3}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v3}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->b(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v3}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->f(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Ljqi;->j(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lhat;->a()Ljrk;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljrk;->a(Ljqi;)Ljqj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    iget-object v1, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    iget-object v1, v1, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Ljqj;

    invoke-virtual {p0, p1}, Ljpm;->a(Ljqj;)V

    return-void
.end method

.method protected a(Ljqj;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    :try_start_0
    iget-object v0, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->g(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->g(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->g(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 193
    iget-object v0, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 199
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    iget-object v1, v1, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 206
    :goto_1
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;Ljqj;)V

    .line 204
    iget-object v0, p0, Ljpm;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->b(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;Ljqj;)V

    goto :goto_1
.end method
