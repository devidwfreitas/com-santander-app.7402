.class public Lkgt;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lkgv;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/ListView;

.field private c:Lkgx;

.field private d:Lkgq;

.field private e:Lkgu;

.field private f:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lkgt;->d:Lkgq;

    invoke-virtual {v0}, Lkgq;->notifyDataSetChanged()V

    .line 87
    return-void
.end method

.method public a(ILkgj;)V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lkgt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    const-string v1, "tipo_recarga"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v1, "response"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lkgt;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    invoke-virtual {p0}, Lkgt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkgm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lkgq;

    invoke-virtual {p0}, Lkgt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lkgt;->c:Lkgx;

    invoke-direct {v0, v1, p1, v2}, Lkgq;-><init>(Landroid/content/Context;Ljava/util/List;Lkgx;)V

    iput-object v0, p0, Lkgt;->d:Lkgq;

    .line 79
    iget-object v0, p0, Lkgt;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lkgt;->d:Lkgq;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lkgt;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 81
    iget-object v0, p0, Lkgt;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lkgt;->c:Lkgx;

    invoke-virtual {v1}, Lkgx;->c()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    return-void
.end method

.method public a(Lkgu;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lkgt;->e:Lkgu;

    .line 69
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lkgt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    const-string v1, "Voc\u00ea quer remover essa recarga?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Eliminar"

    iget-object v2, p0, Lkgt;->c:Lkgx;

    invoke-virtual {v2}, Lkgx;->b()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancelar"

    iget-object v2, p0, Lkgt;->c:Lkgx;

    .line 93
    invoke-virtual {v2}, Lkgx;->b()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 94
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lkgt;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lkgt;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lkgt;->f:Landroid/app/Dialog;

    .line 102
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lkgt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lkgt;->f:Landroid/app/Dialog;

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 43
    const v0, 0x7f0401f3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 45
    new-instance v0, Lkgx;

    invoke-direct {v0, p0}, Lkgx;-><init>(Lkgv;)V

    iput-object v0, p0, Lkgt;->c:Lkgx;

    .line 46
    iget-object v0, p0, Lkgt;->c:Lkgx;

    iget-object v2, p0, Lkgt;->e:Lkgu;

    invoke-virtual {v0, v2}, Lkgx;->a(Lkgu;)V

    .line 48
    const v0, 0x7f1009af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lkgt;->a:Landroid/widget/Button;

    .line 49
    iget-object v0, p0, Lkgt;->a:Landroid/widget/Button;

    iget-object v2, p0, Lkgt;->c:Lkgx;

    invoke-virtual {v2}, Lkgx;->a()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f1009b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lkgt;->b:Landroid/widget/ListView;

    .line 51
    iget-object v0, p0, Lkgt;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lkgt;->c:Lkgx;

    iget-object v3, p0, Lkgt;->b:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Lkgx;->a(Landroid/widget/ListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 53
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 64
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 59
    return-void
.end method
