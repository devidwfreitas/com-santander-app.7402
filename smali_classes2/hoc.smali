.class Lhoc;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field protected a:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

.field final synthetic b:Lhob;

.field private c:Landroid/support/design/widget/TextInputLayout;

.field private d:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lhob;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 82
    iput-object p1, p0, Lhoc;->b:Lhob;

    .line 83
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    const v0, 0x7f100467

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lhoc;->c:Landroid/support/design/widget/TextInputLayout;

    .line 85
    const v0, 0x7f1002fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lhoc;->d:Landroid/widget/ImageButton;

    .line 86
    iget-object v0, p0, Lhoc;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lhoc;->d:Landroid/widget/ImageButton;

    new-instance v1, Lhod;

    invoke-direct {v1, p0, p1}, Lhod;-><init>(Lhoc;Lhob;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;)V
    .locals 2

    .prologue
    .line 97
    iput-object p1, p0, Lhoc;->a:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    .line 99
    iget-object v0, p0, Lhoc;->c:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lhoc;->c:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->getHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lhoc;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->useAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lhoc;->d:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lhoc;->d:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lhoc;->a:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lhoc;->a:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    invoke-virtual {v0, p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->setValue(Ljava/lang/String;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    .line 116
    iget-object v0, p0, Lhoc;->b:Lhob;

    invoke-virtual {v0}, Lhob;->c()V

    goto :goto_0
.end method
