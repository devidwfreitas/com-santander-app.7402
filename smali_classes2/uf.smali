.class Luf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltj;


# instance fields
.field final synthetic a:Lue;


# direct methods
.method constructor <init>(Lue;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Luf;->a:Lue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 3

    .prologue
    .line 90
    check-cast p1, Ltq;

    .line 92
    invoke-virtual {p1}, Ltq;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ltq;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Luf;->a:Lue;

    new-instance v1, Lte;

    iget-object v2, p0, Luf;->a:Lue;

    invoke-static {v2}, Lue;->a(Lue;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lte;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lue;->a(Lue;Lte;)V

    .line 95
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {p1}, Ltq;->b()Lsx;

    move-result-object v1

    invoke-virtual {v1}, Lsx;->c()Ltp;

    move-result-object v1

    invoke-virtual {v0, v1}, Laca;->a(Ltp;)V

    .line 96
    new-instance v0, Lou;

    invoke-direct {v0}, Lou;-><init>()V

    .line 97
    invoke-virtual {p1}, Ltq;->b()Lsx;

    move-result-object v1

    invoke-virtual {v1}, Lsx;->d()Ltn;

    move-result-object v1

    invoke-virtual {v1}, Ltn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lou;->g(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Ltq;->b()Lsx;

    move-result-object v1

    invoke-virtual {v1}, Lsx;->d()Ltn;

    move-result-object v1

    invoke-virtual {v1}, Ltn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lou;->a(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Laca;->a()Laca;

    move-result-object v1

    invoke-virtual {v1, v0}, Laca;->a(Lou;)V

    .line 100
    invoke-static {}, Laca;->a()Laca;

    move-result-object v1

    invoke-virtual {p1}, Ltq;->a()Lsz;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ltq;->a()Lsz;

    move-result-object v0

    invoke-virtual {v0}, Lsz;->a()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Laca;->a(Ljava/util/List;)V

    .line 102
    invoke-virtual {p1}, Ltq;->b()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lte;->a:Z

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p1}, Ltq;->b()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->b()Lacb;

    move-result-object v0

    invoke-virtual {v0}, Lacb;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{0}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Luf;->a:Lue;

    invoke-static {v1}, Lue;->b(Lue;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Luf;->a:Lue;

    invoke-static {v1}, Lue;->c(Lue;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ltq;->b()Lsx;

    move-result-object v2

    invoke-virtual {v2}, Lsx;->b()Lacb;

    move-result-object v2

    invoke-virtual {v2}, Lacb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Luf;->a:Lue;

    invoke-static {v0}, Lue;->d(Lue;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Luf;->a:Lue;

    invoke-static {v0}, Lue;->e(Lue;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lug;

    invoke-direct {v1, p0}, Lug;-><init>(Luf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Luf;->a:Lue;

    invoke-static {v0}, Lue;->c(Lue;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Luh;

    invoke-direct {v1, p0}, Luh;-><init>(Luf;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_0
    :goto_1
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 129
    :cond_2
    const-string v0, "InvestimentoV2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modulo Inativo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Luf;->a:Lue;

    invoke-static {v0}, Lue;->f(Lue;)V

    goto :goto_1
.end method

.method public a(Laby;)V
    .locals 3

    .prologue
    .line 136
    const-string v0, "InvestimentoV2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user info onFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v0, "HTTPRequester"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESPONSE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Luf;->a:Lue;

    invoke-static {v0}, Lue;->f(Lue;)V

    .line 139
    return-void
.end method
