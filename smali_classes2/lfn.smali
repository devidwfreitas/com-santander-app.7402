.class Llfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Llfj;


# direct methods
.method constructor <init>(Llfj;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Llfn;->a:Llfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Llfn;->a:Llfj;

    invoke-static {v0}, Llfj;->f(Llfj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Llfn;->a:Llfj;

    invoke-static {v0}, Llfj;->b(Llfj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 149
    const-string v0, "Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao"

    const-string v1, "NaoGostoProduto"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Llfn;->a:Llfj;

    invoke-virtual {v0}, Llfj;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e01d9

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Llfn;->a:Llfj;

    invoke-virtual {v0}, Llfj;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e01da

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
