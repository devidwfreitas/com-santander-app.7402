.class Llfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llfj;


# direct methods
.method constructor <init>(Llfj;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Llfl;->a:Llfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Llfl;->a:Llfj;

    invoke-static {v0}, Llfj;->a(Llfj;)Llfs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Llfl;->a:Llfj;

    invoke-static {v0}, Llfj;->b(Llfj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Llfl;->a:Llfj;

    invoke-virtual {v0}, Llfj;->dismiss()V

    .line 112
    iget-object v0, p0, Llfl;->a:Llfj;

    invoke-static {v0}, Llfj;->a(Llfj;)Llfs;

    move-result-object v0

    iget-object v1, p0, Llfl;->a:Llfj;

    invoke-static {v1}, Llfj;->c(Llfj;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llfs;->a(Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Llfl;->a:Llfj;

    invoke-static {v0}, Llfj;->d(Llfj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-string v0, "Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Llfl;->a:Llfj;

    invoke-virtual {v0}, Llfj;->dismiss()V

    .line 116
    iget-object v0, p0, Llfl;->a:Llfj;

    invoke-static {v0}, Llfj;->a(Llfj;)Llfs;

    move-result-object v0

    iget-object v1, p0, Llfl;->a:Llfj;

    invoke-static {v1}, Llfj;->e(Llfj;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llfs;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Llfl;->a:Llfj;

    invoke-static {v0}, Llfj;->f(Llfj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Llfl;->a:Llfj;

    invoke-virtual {v0}, Llfj;->dismiss()V

    .line 120
    iget-object v0, p0, Llfl;->a:Llfj;

    invoke-static {v0}, Llfj;->a(Llfj;)Llfs;

    move-result-object v0

    iget-object v1, p0, Llfl;->a:Llfj;

    invoke-static {v1}, Llfj;->g(Llfj;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llfs;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
