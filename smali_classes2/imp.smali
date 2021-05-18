.class public Limp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Limp;->a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lioi;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 145
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 146
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    .line 147
    invoke-virtual {v0}, Lioi;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lioi;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    invoke-virtual {v0}, Lioi;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lioi;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    iget-object v1, p0, Limp;->a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;->c(Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "O novo per\u00edodo n\u00e3o pode ser igual ao per\u00edodo atual para o pa\u00eds selecionado. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v0}, Lioi;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v1, v0}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 152
    const/4 v2, 0x1

    .line 155
    :cond_0
    return v2

    .line 145
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 117
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Limp;->a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;

    invoke-virtual {v0}, Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v0, p0, Limp;->a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    .line 121
    invoke-virtual {v0}, Lioi;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Limp;->a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;

    invoke-static {v0, v2}, Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-direct {p0, v2}, Limp;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    const-string v0, "lista"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 128
    const-string v0, "passo"

    const-string v2, "2"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v0, "operacao"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Limp;->a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->e()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Limp;->a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;->b(Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;)Limk;

    move-result-object v2

    invoke-virtual {v2}, Limk;->a()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->H()Ljava/lang/String;

    move-result-object v2

    .line 131
    iget-object v0, p0, Limp;->a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->e()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Limp;->a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;

    invoke-static {v3}, Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;->b(Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;)Limk;

    move-result-object v3

    invoke-virtual {v3}, Limk;->a()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->b()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v3, "FINALCARTAO"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v0, "cartao"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Limp;->a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    :cond_2
    :goto_1
    return-void

    .line 139
    :cond_3
    iget-object v0, p0, Limp;->a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;I)V

    goto :goto_1
.end method
