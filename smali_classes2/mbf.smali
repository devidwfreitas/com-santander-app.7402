.class public Lmbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lmbf;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lmbf;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->a(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 163
    return-void
.end method
