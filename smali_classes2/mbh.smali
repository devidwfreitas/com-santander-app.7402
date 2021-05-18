.class public Lmbh;
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
    .line 173
    iput-object p1, p0, Lmbh;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    if-eqz p2, :cond_1

    .line 177
    iget-object v0, p0, Lmbh;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01d9

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 178
    iget-object v0, p0, Lmbh;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->b(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lmbh;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->c(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Llkt;

    move-result-object v0

    invoke-virtual {v0}, Llkt;->a()V

    .line 180
    iget-object v0, p0, Lmbh;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0, v2}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->a(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;I)I

    .line 181
    iget-object v0, p0, Lmbh;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->d(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Lmbl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lmbh;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->d(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Lmbl;

    move-result-object v0

    iget-object v1, p0, Lmbh;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->e(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)I

    move-result v1

    invoke-interface {v0, v1}, Lmbl;->a(I)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lmbh;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01da

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
