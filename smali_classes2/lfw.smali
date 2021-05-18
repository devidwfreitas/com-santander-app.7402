.class Llfw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Llft;


# direct methods
.method constructor <init>(Llft;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Llfw;->a:Llft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    if-eqz p2, :cond_0

    .line 203
    iget-object v0, p0, Llfw;->a:Llft;

    invoke-static {v0}, Llft;->e(Llft;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 204
    iget-object v0, p0, Llfw;->a:Llft;

    invoke-static {v0}, Llft;->g(Llft;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Llfw;->a:Llft;

    invoke-static {v0}, Llft;->a(Llft;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DificuldadeFinanceira"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Llfw;->a:Llft;

    invoke-virtual {v0}, Llft;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e01d9

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Llfw;->a:Llft;

    invoke-virtual {v0}, Llft;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e01da

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
