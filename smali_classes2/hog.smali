.class Lhog;
.super Lhoc;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic c:Lhob;

.field private d:Landroid/support/v7/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Lhob;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 193
    iput-object p1, p0, Lhog;->c:Lhob;

    .line 194
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400be

    const/4 v2, 0x0

    .line 195
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 194
    invoke-direct {p0, p1, v0}, Lhoc;-><init>(Lhob;Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lhog;->itemView:Landroid/view/View;

    const v1, 0x7f100055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p0, Lhog;->d:Landroid/support/v7/widget/AppCompatSpinner;

    .line 197
    iget-object v0, p0, Lhog;->d:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 198
    return-void
.end method


# virtual methods
.method a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;)V
    .locals 4

    .prologue
    .line 202
    invoke-super {p0, p1}, Lhoc;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;)V

    .line 203
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lhog;->itemView:Landroid/view/View;

    .line 204
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04037e

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->getData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 205
    const v1, 0x7f04037d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 206
    iget-object v1, p0, Lhog;->d:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 207
    iget-object v0, p0, Lhog;->d:Landroid/support/v7/widget/AppCompatSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 208
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lhog;->a:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    invoke-virtual {p0, v0}, Lhog;->a(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 218
    return-void
.end method
