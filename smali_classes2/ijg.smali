.class Lijg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lijf;


# direct methods
.method constructor <init>(Lijf;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lijg;->a:Lijf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 117
    const-string v1, ""

    .line 119
    iget-object v0, p0, Lijg;->a:Lijf;

    iget-object v3, p0, Lijg;->a:Lijf;

    invoke-static {v3}, Lijf;->a(Lijf;)Lmip;

    move-result-object v3

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->s()Lght;

    move-result-object v3

    invoke-interface {v3}, Lght;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lijf;->a(Lijf;Ljava/util/List;)Ljava/util/List;

    .line 121
    iget-object v0, p0, Lijg;->a:Lijf;

    invoke-static {v0}, Lijf;->b(Lijf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 122
    iget-object v3, p0, Lijg;->a:Lijf;

    iget-object v0, p0, Lijg;->a:Lijf;

    invoke-static {v0}, Lijf;->b(Lijf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-static {v3, v0}, Lijf;->a(Lijf;Lghu;)Lghu;

    .line 126
    :cond_0
    iget-object v0, p0, Lijg;->a:Lijf;

    invoke-static {v0}, Lijf;->c(Lijf;)Lfud;

    move-result-object v0

    invoke-virtual {v0}, Lfud;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lijg;->a:Lijf;

    invoke-static {v0}, Lijf;->c(Lijf;)Lfud;

    move-result-object v0

    invoke-virtual {v0}, Lfud;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 127
    :cond_1
    iget-object v0, p0, Lijg;->a:Lijf;

    invoke-static {v0}, Lijf;->d(Lijf;)Landroid/app/Activity;

    move-result-object v0

    const-string v3, "Deveria introduzir uma quantidade"

    invoke-static {v0, v3}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    .line 130
    :cond_2
    iget-object v0, p0, Lijg;->a:Lijf;

    invoke-static {v0}, Lijf;->f(Lijf;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lijg;->a:Lijf;

    invoke-static {v3}, Lijf;->e(Lijf;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpv;

    invoke-virtual {v0}, Lfpv;->c()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    .line 131
    iget-object v0, p0, Lijg;->a:Lijf;

    invoke-static {v0}, Lijf;->e(Lijf;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lijg;->a:Lijf;

    invoke-static {v4}, Lijf;->e(Lijf;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 132
    const v3, 0x7f101050

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 133
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 135
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0,00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    iget-object v0, p0, Lijg;->a:Lijf;

    invoke-static {v0}, Lijf;->d(Lijf;)Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lijg;->a:Lijf;

    invoke-virtual {v3}, Lijf;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    :goto_0
    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 148
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lijg;->a:Lijf;

    invoke-virtual {v0}, Lijf;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v6}, Lhau;->a(Z)V

    .line 156
    :goto_2
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lijg;->a:Lijf;

    iget-object v0, v0, Lijf;->c:Landroid/content/Context;

    const-class v3, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    const-string v0, "conta"

    iget-object v3, p0, Lijg;->a:Lijf;

    invoke-static {v3}, Lijf;->g(Lijf;)Lcom/santander/app/widget/Carrossel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v0, "cartao"

    iget-object v3, p0, Lijg;->a:Lijf;

    invoke-static {v3}, Lijf;->h(Lijf;)Lgon;

    move-result-object v3

    invoke-virtual {v3}, Lgon;->a()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string v3, "tipo"

    iget-object v0, p0, Lijg;->a:Lijf;

    invoke-static {v0}, Lijf;->f(Lijf;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lijg;->a:Lijf;

    invoke-static {v4}, Lijf;->e(Lijf;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpv;

    invoke-virtual {v0}, Lfpv;->c()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v0, "cantidad"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v0, "fecha"

    iget-object v1, p0, Lijg;->a:Lijf;

    invoke-virtual {v1}, Lijf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v0, "agendado"

    iget-object v1, p0, Lijg;->a:Lijf;

    invoke-virtual {v1}, Lijf;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 163
    const-string v0, "vencimiento"

    iget-object v1, p0, Lijg;->a:Lijf;

    invoke-static {v1}, Lijf;->c(Lijf;)Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lijg;->a:Lijf;

    invoke-virtual {v0, v2}, Lijf;->startActivity(Landroid/content/Intent;)V

    .line 166
    :cond_3
    return-void

    .line 138
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\,"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 142
    :cond_5
    iget-object v0, p0, Lijg;->a:Lijf;

    invoke-static {v0}, Lijf;->d(Lijf;)Landroid/app/Activity;

    move-result-object v0

    const-string v3, "Deveria introduzir uma quantidade"

    invoke-static {v0, v3}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_0

    .line 145
    :cond_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 152
    :cond_7
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v5}, Lhau;->a(Z)V

    goto/16 :goto_2
.end method
