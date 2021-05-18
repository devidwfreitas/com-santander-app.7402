.class Lhdl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lhdk;


# direct methods
.method constructor <init>(Lhdk;I)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lhdl;->b:Lhdk;

    iput p2, p0, Lhdl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return v1

    .line 121
    :pswitch_0
    iget-object v0, p0, Lhdl;->b:Lhdk;

    iget-object v2, v0, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v0, p0, Lhdl;->b:Lhdk;

    iget-object v0, v0, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lhdl;->b:Lhdk;

    iget-object v3, v3, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget v3, v3, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->b:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lheq;

    invoke-static {v2, v0}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;Lheq;)Lheq;

    .line 123
    iget-object v0, p0, Lhdl;->b:Lhdk;

    iget-object v0, v0, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    iget-object v2, p0, Lhdl;->b:Lhdk;

    iget-object v2, v2, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->b(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Lhen;

    move-result-object v2

    invoke-virtual {v2}, Lhen;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmir;->i(Ljava/lang/String;)V

    .line 125
    new-instance v0, Lhdm;

    invoke-direct {v0, p0}, Lhdm;-><init>(Lhdl;)V

    .line 138
    iget-object v2, p0, Lhdl;->b:Lhdk;

    iget-object v2, v2, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v2, v2, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a:Landroid/support/v7/app/AppCompatActivity;

    const-string v3, "Excluir o dep\u00f3sito programado?"

    const-string v4, "Excluir"

    const-string v5, "Cancelar"

    invoke-static {v2, v0, v3, v4, v5}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x7f101207
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 104
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 105
    const v1, 0x7f120008

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    iget-object v0, p0, Lhdl;->b:Lhdk;

    iget-object v0, v0, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget v1, p0, Lhdl;->a:I

    iget-object v2, p0, Lhdl;->b:Lhdk;

    iget-object v2, v2, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v2, v2, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a(ILandroid/widget/ListView;)Landroid/view/View;

    move-result-object v1

    .line 107
    const v0, 0x7f10080c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    const v0, 0x7f10080d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v0, p0, Lhdl;->b:Lhdk;

    iget-object v0, v0, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-virtual {v0}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e016a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lhdl;->b:Lhdk;

    iget-object v0, v0, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget v1, p0, Lhdl;->a:I

    iget-object v2, p0, Lhdl;->b:Lhdk;

    iget-object v2, v2, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v2, v2, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a(ILandroid/widget/ListView;)Landroid/view/View;

    move-result-object v1

    .line 94
    const v0, 0x7f10080c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    const v0, 0x7f10080d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lhdl;->b:Lhdk;

    iget-object v2, v2, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-virtual {v2}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e010e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 99
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method
