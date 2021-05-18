.class public Lmbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lmbi;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 193
    if-eqz p2, :cond_1

    .line 194
    iget-object v0, p0, Lmbi;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01d9

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 195
    iget-object v0, p0, Lmbi;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->a(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 196
    iget-object v0, p0, Lmbi;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->c(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Llkt;

    move-result-object v0

    invoke-virtual {v0}, Llkt;->a()V

    .line 197
    iget-object v0, p0, Lmbi;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->a(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;I)I

    .line 198
    iget-object v0, p0, Lmbi;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->d(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Lmbl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lmbi;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->d(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Lmbl;

    move-result-object v0

    iget-object v1, p0, Lmbi;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->e(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)I

    move-result v1

    invoke-interface {v0, v1}, Lmbl;->a(I)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lmbi;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01da

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
