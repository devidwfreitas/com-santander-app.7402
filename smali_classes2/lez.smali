.class Llez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llex;


# direct methods
.method constructor <init>(Llex;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Llez;->a:Llex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Llez;->a:Llex;

    invoke-static {v0}, Llex;->a(Llex;)Llfg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Llez;->a:Llex;

    invoke-static {v0}, Llex;->b(Llex;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "Seguros_Cancelamento_Vida_AP_CorrerRisco_PopUp_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Llez;->a:Llex;

    invoke-virtual {v0}, Llex;->dismiss()V

    .line 126
    iget-object v0, p0, Llez;->a:Llex;

    invoke-static {v0}, Llex;->a(Llex;)Llfg;

    move-result-object v0

    iget-object v1, p0, Llez;->a:Llex;

    invoke-static {v1}, Llex;->c(Llex;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llfg;->a(Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Llez;->a:Llex;

    invoke-static {v0}, Llex;->d(Llex;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const-string v0, "Seguros_Cancelamento_Vida_AP_CorrerRisco_PopUp_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Llez;->a:Llex;

    invoke-virtual {v0}, Llex;->dismiss()V

    .line 130
    iget-object v0, p0, Llez;->a:Llex;

    invoke-static {v0}, Llex;->a(Llex;)Llfg;

    move-result-object v0

    iget-object v1, p0, Llez;->a:Llex;

    invoke-static {v1}, Llex;->e(Llex;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llfg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Llez;->a:Llex;

    invoke-static {v0}, Llex;->f(Llex;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "Seguros_Cancelamento_Vida_AP_CorrerRisco_PopUp_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Llez;->a:Llex;

    invoke-virtual {v0}, Llex;->dismiss()V

    .line 134
    iget-object v0, p0, Llez;->a:Llex;

    invoke-static {v0}, Llex;->a(Llex;)Llfg;

    move-result-object v0

    iget-object v1, p0, Llez;->a:Llex;

    invoke-static {v1}, Llex;->g(Llex;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llfg;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
