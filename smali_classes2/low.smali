.class Llow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llou;


# direct methods
.method constructor <init>(Llou;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Llow;->a:Llou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Llow;->a:Llou;

    invoke-static {v0}, Llou;->a(Llou;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "Seguros_Contratacao_Vida_Beneficiarios_Acao"

    const-string v1, "Adicionar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-static {}, Llmi;->a()Llmi;

    move-result-object v0

    .line 137
    iget-object v1, p0, Llow;->a:Llou;

    invoke-virtual {v0, v1}, Llmi;->a(Llmr;)V

    .line 138
    iget-object v1, p0, Llow;->a:Llou;

    invoke-virtual {v1}, Llou;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "add-mBeneficiaries-contract-summary"

    invoke-virtual {v0, v1, v2}, Llmi;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 139
    return-void
.end method
