.class Lkbk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/SeekBar;

.field final synthetic b:I

.field final synthetic c:Landroid/app/Dialog;

.field final synthetic d:Lkbq;

.field final synthetic e:I

.field final synthetic f:Lkbi;


# direct methods
.method constructor <init>(Lkbi;Landroid/widget/SeekBar;ILandroid/app/Dialog;Lkbq;I)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lkbk;->f:Lkbi;

    iput-object p2, p0, Lkbk;->a:Landroid/widget/SeekBar;

    iput p3, p0, Lkbk;->b:I

    iput-object p4, p0, Lkbk;->c:Landroid/app/Dialog;

    iput-object p5, p0, Lkbk;->d:Lkbq;

    iput p6, p0, Lkbk;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lkbk;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lkbk;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 258
    iget-object v0, p0, Lkbk;->f:Lkbi;

    iget v1, p0, Lkbk;->b:I

    invoke-virtual {v0, v1}, Lkbi;->b(I)V

    .line 259
    iget-object v0, p0, Lkbk;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 261
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lkbk;->f:Lkbi;

    invoke-static {v1}, Lkbi;->b(Lkbi;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    const-string v1, "gerenciar_dispositivos"

    iget-object v2, p0, Lkbk;->d:Lkbq;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 263
    const-string v1, "inf_method"

    iget-object v2, p0, Lkbk;->f:Lkbi;

    invoke-static {v2}, Lkbi;->c(Lkbi;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string v1, "posicao_slider"

    iget v2, p0, Lkbk;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lkbk;->f:Lkbi;

    invoke-static {v1}, Lkbi;->b(Lkbi;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 266
    return-void
.end method
