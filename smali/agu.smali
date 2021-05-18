.class public Lagu;
.super Lakb;


# instance fields
.field private A:Landroid/widget/TextView;

.field private a:Landroid/app/Activity;

.field private b:Lajn;

.field private c:Z

.field private d:Z

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Laka;Lajn;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lakb;-><init>(Landroid/app/Activity;)V

    iput-boolean v2, p0, Lagu;->d:Z

    iput-object p1, p0, Lagu;->a:Landroid/app/Activity;

    iput-object p2, p0, Lagu;->b:Lajn;

    const-string v0, "N"

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->c()Lajk;

    move-result-object v1

    invoke-virtual {v1}, Lajk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lagu;->c:Z

    :goto_0
    invoke-virtual {p0}, Lagu;->a()V

    return-void

    :cond_0
    iput-boolean v2, p0, Lagu;->c:Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lajn;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lajn;->d()Lajf;

    move-result-object v1

    invoke-virtual {v1}, Lajf;->k()Lajl;

    move-result-object v1

    invoke-virtual {v1}, Lajl;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^0+(?!$)"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lajn;->d()Lajf;

    move-result-object v1

    invoke-virtual {v1}, Lajf;->k()Lajl;

    move-result-object v1

    invoke-virtual {v1}, Lajl;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^0+(?!$)"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public a()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lagu;->d()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagg;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lagl;->detalhe:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->proximo_vencimento_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->valor_contratado_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->taxa_de_juros_mes_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->taxa_de_juros_ano_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->iof_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->numero_do_contrato_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->produto_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->seguro_value_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->field_cet:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lagu;->x:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->cet_mes_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->cet_ano_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->field_iof:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lagu;->o:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->field_produto:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lagu;->v:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->field_taxa_de_juros:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lagu;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->field_numero_do_contrato:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lagu;->n:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->field_valor_total_seguro:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lagu;->w:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lagu;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->topo_ativo_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lagu;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->ativo_atualizado_em_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->ativo_inicio_date_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->ativo_saldo_devedor_em_date_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->parcela_value_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->ativo_tipo_credito_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagu;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->ativo_saldo_devedor_em_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->a:Landroid/app/Activity;

    sget v2, Lagg;->parcela_text:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lagu;->h:Landroid/widget/TextView;

    const-string v1, "0,00"

    iget-object v2, p0, Lagu;->b:Lajn;

    invoke-virtual {v2}, Lajn;->d()Lajf;

    move-result-object v2

    invoke-virtual {v2}, Lajf;->k()Lajl;

    move-result-object v2

    invoke-virtual {v2}, Lajl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lagu;->i:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lagu;->a:Landroid/app/Activity;

    sget v2, Lagg;->parcela_value_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v6, p0, Lagu;->d:Z

    :goto_0
    iget-object v1, p0, Lagu;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lagu;->b:Lajn;

    invoke-virtual {v2}, Lajn;->d()Lajf;

    move-result-object v2

    invoke-virtual {v2}, Lajf;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lajs;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lagu;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lagu;->b:Lajn;

    invoke-virtual {v2}, Lajn;->c()Lajk;

    move-result-object v2

    invoke-virtual {v2}, Lajk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lajs;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lagu;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lagu;->b:Lajn;

    invoke-virtual {v2}, Lajn;->d()Lajf;

    move-result-object v2

    invoke-virtual {v2}, Lajf;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lajs;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lagu;->a:Landroid/app/Activity;

    sget v2, Lagl;->money_value:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lagu;->b:Lajn;

    invoke-virtual {v4}, Lajn;->d()Lajf;

    move-result-object v4

    invoke-virtual {v4}, Lajf;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagu;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {p0, v1}, Lagu;->a(Lajn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagu;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lagu;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lagu;->c()V

    return-void

    :cond_0
    iget-object v1, p0, Lagu;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lagu;->a:Landroid/app/Activity;

    sget v3, Lagl;->money_value:I

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lagu;->b:Lajn;

    invoke-virtual {v5}, Lajn;->d()Lajf;

    move-result-object v5

    invoke-virtual {v5}, Lajf;->k()Lajl;

    move-result-object v5

    invoke-virtual {v5}, Lajl;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->topo_atraso_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lagu;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->days_late_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->a:Landroid/app/Activity;

    sget v2, Lagg;->em_atraso_desde_date_text:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lagu;->a:Landroid/app/Activity;

    sget v3, Lagg;->atraso_atualizado_em_text:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lagu;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lagu;->a:Landroid/app/Activity;

    sget v3, Lagg;->atraso_inicio_date_text:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lagu;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lagu;->a:Landroid/app/Activity;

    sget v3, Lagg;->atraso_saldo_devedor_em_date_text:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lagu;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lagu;->a:Landroid/app/Activity;

    sget v3, Lagg;->atraso_regularizar_value_text:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lagu;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lagu;->a:Landroid/app/Activity;

    sget v3, Lagg;->atraso_saldo_devedor_em_text:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lagu;->a:Landroid/app/Activity;

    sget v4, Lagg;->atraso_tipo_credito_text:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lagu;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lagu;->b:Lajn;

    invoke-virtual {v3}, Lajn;->d()Lajf;

    move-result-object v3

    invoke-virtual {v3}, Lajf;->k()Lajl;

    move-result-object v3

    invoke-virtual {v3}, Lajl;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^0+(?!$)"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagu;->b:Lajn;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v0

    invoke-virtual {v0}, Lajf;->k()Lajl;

    move-result-object v0

    invoke-virtual {v0}, Lajl;->h()Lajm;

    move-result-object v0

    invoke-virtual {v0}, Lajm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajs;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagu;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->d()Lajf;

    move-result-object v1

    invoke-virtual {v1}, Lajf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lajs;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagu;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->c()Lajk;

    move-result-object v1

    invoke-virtual {v1}, Lajk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lajs;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagu;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->d()Lajf;

    move-result-object v1

    invoke-virtual {v1}, Lajf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lajs;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0,00"

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->d()Lajf;

    move-result-object v1

    invoke-virtual {v1}, Lajf;->k()Lajl;

    move-result-object v1

    invoke-virtual {v1}, Lajl;->h()Lajm;

    move-result-object v1

    invoke-virtual {v1}, Lajm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lagu;->i:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagg;->atraso_valor_regularizar_label:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v6, p0, Lagu;->d:Z

    :goto_2
    iget-object v0, p0, Lagu;->a:Landroid/app/Activity;

    sget v1, Lagl;->money_value:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lagu;->b:Lajn;

    invoke-virtual {v4}, Lajn;->d()Lajf;

    move-result-object v4

    invoke-virtual {v4}, Lajf;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagu;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lagu;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->a:Landroid/app/Activity;

    sget v3, Lagl;->money_value:I

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lagu;->b:Lajn;

    invoke-virtual {v5}, Lajn;->d()Lajf;

    move-result-object v5

    invoke-virtual {v5}, Lajf;->k()Lajl;

    move-result-object v5

    invoke-virtual {v5}, Lajl;->h()Lajm;

    move-result-object v5

    invoke-virtual {v5}, Lajm;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x47c35000    # 100000.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "."

    const-string v3, ","

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "% a.m."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x47c35000    # 100000.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "."

    const-string v3, ","

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "% a.a."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    iget-object v0, p0, Lagu;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->d()Lajf;

    move-result-object v1

    invoke-virtual {v1}, Lajf;->k()Lajl;

    move-result-object v1

    invoke-virtual {v1}, Lajl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lajs;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagu;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->a:Landroid/app/Activity;

    sget v2, Lagl;->money_value:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lagu;->b:Lajn;

    invoke-virtual {v4}, Lajn;->d()Lajf;

    move-result-object v4

    invoke-virtual {v4}, Lajf;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagu;->b:Lajn;

    invoke-virtual {v0}, Lajn;->c()Lajk;

    move-result-object v0

    invoke-virtual {v0}, Lajk;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lagu;->b:Lajn;

    invoke-virtual {v0}, Lajn;->c()Lajk;

    move-result-object v0

    invoke-virtual {v0}, Lajk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lagu;->b:Lajn;

    invoke-virtual {v0}, Lajn;->c()Lajk;

    move-result-object v0

    invoke-virtual {v0}, Lajk;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lagu;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->c()Lajk;

    move-result-object v1

    invoke-virtual {v1}, Lajk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lagu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lagu;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->b()Lajr;

    move-result-object v1

    invoke-virtual {v1}, Lajr;->a()Lajq;

    move-result-object v1

    invoke-virtual {v1}, Lajq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagu;->b:Lajn;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v0

    invoke-virtual {v0}, Lajf;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lagu;->q:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagu;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v5, p0, Lagu;->d:Z

    :goto_1
    iget-object v0, p0, Lagu;->b:Lajn;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v0

    invoke-virtual {v0}, Lajf;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lagu;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->d()Lajf;

    move-result-object v1

    invoke-virtual {v1}, Lajf;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lagu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lagu;->b:Lajn;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v0

    invoke-virtual {v0}, Lajf;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lagu;->b:Lajn;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v0

    invoke-virtual {v0}, Lajf;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lagu;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_3
    iget-object v0, p0, Lagu;->b:Lajn;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v0

    invoke-virtual {v0}, Lajf;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lagu;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->a:Landroid/app/Activity;

    sget v2, Lagl;->money_value:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lagu;->b:Lajn;

    invoke-virtual {v4}, Lajn;->d()Lajf;

    move-result-object v4

    invoke-virtual {v4}, Lajf;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lagu;->b:Lajn;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v0

    invoke-virtual {v0}, Lajf;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lagu;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->a:Landroid/app/Activity;

    sget v2, Lagl;->money_value:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lagu;->b:Lajn;

    invoke-virtual {v4}, Lajn;->d()Lajf;

    move-result-object v4

    invoke-virtual {v4}, Lajf;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-boolean v0, p0, Lagu;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lagu;->b()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lagu;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v5, p0, Lagu;->d:Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lagu;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->d()Lajf;

    move-result-object v1

    invoke-virtual {v1}, Lajf;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lagu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lagu;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lagu;->b:Lajn;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v0

    invoke-virtual {v0}, Lajf;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lagu;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->d()Lajf;

    move-result-object v1

    invoke-virtual {v1}, Lajf;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lagu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v0, p0, Lagu;->b:Lajn;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v0

    invoke-virtual {v0}, Lajf;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lagu;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lagu;->b:Lajn;

    invoke-virtual {v1}, Lajn;->d()Lajf;

    move-result-object v1

    invoke-virtual {v1}, Lajf;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lagu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lagu;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lagu;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5
.end method
