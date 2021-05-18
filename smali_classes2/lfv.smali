.class Llfv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llft;


# direct methods
.method constructor <init>(Llft;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Llfv;->a:Llft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-static {v0}, Llft;->b(Llft;)Llge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-static {v0}, Llft;->c(Llft;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-static {v0}, Llft;->a(Llft;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-virtual {v0}, Llft;->dismiss()V

    .line 156
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-static {v0}, Llft;->b(Llft;)Llge;

    move-result-object v0

    iget-object v1, p0, Llfv;->a:Llft;

    invoke-static {v1}, Llft;->d(Llft;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llge;->a(Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-static {v0}, Llft;->i(Llft;)V

    .line 171
    :cond_1
    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-static {v0}, Llft;->e(Llft;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-static {v0}, Llft;->a(Llft;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-virtual {v0}, Llft;->dismiss()V

    .line 160
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-static {v0}, Llft;->b(Llft;)Llge;

    move-result-object v0

    iget-object v1, p0, Llfv;->a:Llft;

    invoke-static {v1}, Llft;->f(Llft;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llge;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-static {v0}, Llft;->g(Llft;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-static {v0}, Llft;->a(Llft;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-virtual {v0}, Llft;->dismiss()V

    .line 164
    iget-object v0, p0, Llfv;->a:Llft;

    invoke-static {v0}, Llft;->b(Llft;)Llge;

    move-result-object v0

    iget-object v1, p0, Llfv;->a:Llft;

    invoke-static {v1}, Llft;->h(Llft;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llge;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
