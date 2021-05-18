.class public Lafg;
.super Ljava/lang/Object;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/TextView;

.field private X:Landroid/widget/TextView;

.field private Y:Landroid/widget/LinearLayout;

.field private Z:Landroid/widget/LinearLayout;

.field private a:Landroid/app/Activity;

.field private aa:Landroid/widget/LinearLayout;

.field private ab:Landroid/widget/LinearLayout;

.field private ac:Landroid/widget/Button;

.field private b:Laeb;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafg;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Laeb;

    iput-object v0, p0, Lafg;->b:Laeb;

    invoke-direct {p0}, Lafg;->a()V

    invoke-direct {p0}, Lafg;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_dados_endereco:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_dados_pagador_original:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_dados_registro_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_dados_pagamento_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_valor_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_codigo_instituicao_beneficiaria_destinataria:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_nome_beneficiario_original:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_cnpj:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_endereco:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_cep:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_cidade:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_estado:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_nome_pagador:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_cpf_pagador:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_endereco_pagador:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_cep_pagador:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_cidade_pagador:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_estado_pagador:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_data_vencimento:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_data_processamento:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_valor_documento:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->w:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_desconto:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_juros:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_origem:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_situacao_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_data_documento:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->B:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_multa:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->C:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_autoriza_pagamento_valor_divergente:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->D:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_abatimento:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->E:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_nosso_numero:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_especie:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->G:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_seu_numero:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_desconto_calculado:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->I:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_valor_calculado:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->J:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_juros_calculados:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->K:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_multa_calculada:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->L:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_abatimento_calculado:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->M:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_valor_titulo_desc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_valor_documento_desc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->O:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_valor_calculado_desc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->P:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_desconto_desc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->Q:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_juros_desc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->R:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_multa_desc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->S:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_abatimento_desc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->T:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_desconto_calculado_desc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->U:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_juros_calculados_desc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->V:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_multa_calculada_desc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->W:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_abatimento_calculado_desc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafg;->X:Landroid/widget/TextView;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->layout_address_data:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lafg;->Y:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->layout_payer_data:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lafg;->Z:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->layout_register_title_data:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lafg;->aa:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->layout_payment_data:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lafg;->ab:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladr;->button_buy:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lafg;->ac:Landroid/widget/Button;

    iget-object v0, p0, Lafg;->c:Landroid/widget/TextView;

    new-instance v1, Lafl;

    invoke-direct {v1, p0}, Lafl;-><init>(Lafg;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lafg;->d:Landroid/widget/TextView;

    new-instance v1, Lafm;

    invoke-direct {v1, p0}, Lafm;-><init>(Lafg;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lafg;->f:Landroid/widget/TextView;

    new-instance v1, Lafn;

    invoke-direct {v1, p0}, Lafn;-><init>(Lafg;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lafg;->e:Landroid/widget/TextView;

    new-instance v1, Lafo;

    invoke-direct {v1, p0}, Lafo;-><init>(Lafg;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lafg;->ac:Landroid/widget/Button;

    new-instance v1, Lafp;

    invoke-direct {v1, p0}, Lafp;-><init>(Lafg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lafg;)V
    .locals 0

    invoke-direct {p0}, Lafg;->d()V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladq;->ic_arrow_down:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    sget v1, Ladq;->ic_arrow_up:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4

    const/16 v2, 0x8

    invoke-direct {p0, p1}, Lafg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laep;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0,00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lafg;->a:Landroid/app/Activity;

    sget v3, Ladw;->currency_format:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lafg;->b:Laeb;

    invoke-virtual {v0}, Laeb;->j()Laec;

    move-result-object v1

    invoke-static {}, Laea;->a()Laea;

    move-result-object v0

    invoke-virtual {v0}, Laea;->d()Lji;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lafg;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Laec;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Laec;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laes;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laes;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lafg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laes;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laes;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->s:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->t:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->u:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laeo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->v:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laeo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->z:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->W()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->A:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->L()Laed;

    move-result-object v3

    invoke-virtual {v3}, Laed;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->B:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laeo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lafg;->D:Landroid/widget/TextView;

    iget-object v4, p0, Lafg;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Laec;->ae()Ljava/lang/String;

    move-result-object v0

    const-string v5, "S"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Ladw;->sim:I

    :goto_0
    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->F:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->G:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafg;->H:Landroid/widget/TextView;

    invoke-virtual {v1}, Laec;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Laec;->as()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lafg;->w:Landroid/widget/TextView;

    iget-object v4, p0, Lafg;->O:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4}, Lafg;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1}, Laec;->as()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lafg;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lafg;->N:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4}, Lafg;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1}, Laec;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lafg;->J:Landroid/widget/TextView;

    iget-object v4, p0, Lafg;->P:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4}, Lafg;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1}, Laec;->J()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lafg;->C:Landroid/widget/TextView;

    iget-object v4, p0, Lafg;->S:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4}, Lafg;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1}, Laec;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lafg;->E:Landroid/widget/TextView;

    iget-object v4, p0, Lafg;->T:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4}, Lafg;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1}, Laec;->F()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lafg;->x:Landroid/widget/TextView;

    iget-object v4, p0, Lafg;->Q:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4}, Lafg;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1}, Laec;->I()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lafg;->y:Landroid/widget/TextView;

    iget-object v4, p0, Lafg;->R:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4}, Lafg;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1}, Laec;->af()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lafg;->I:Landroid/widget/TextView;

    iget-object v4, p0, Lafg;->U:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4}, Lafg;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1}, Laec;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lafg;->K:Landroid/widget/TextView;

    iget-object v4, p0, Lafg;->V:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4}, Lafg;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1}, Laec;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lafg;->L:Landroid/widget/TextView;

    iget-object v4, p0, Lafg;->W:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4}, Lafg;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1}, Laec;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lafg;->M:Landroid/widget/TextView;

    iget-object v2, p0, Lafg;->X:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2}, Lafg;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :goto_1
    return-void

    :cond_0
    sget v0, Ladw;->nao:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-class v1, Lafg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic b(Lafg;)V
    .locals 0

    invoke-direct {p0}, Lafg;->e()V

    return-void
.end method

.method private c()V
    .locals 4

    :try_start_0
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    const-string v1, "Pagamentos_DDA_Acao"

    invoke-static {}, Laea;->a()Laea;

    move-result-object v2

    invoke-virtual {v2}, Laea;->d()Lji;

    move-result-object v2

    iget-object v3, p0, Lafg;->b:Laeb;

    invoke-virtual {v3}, Laeb;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    const-string v1, "Pagamentos_DDA_Acao"

    const-string v2, "Pagar"

    invoke-virtual {v0, v1, v2}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lafg;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lafg;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "codigoBarrasDDA"

    iget-object v2, p0, Lafg;->b:Laeb;

    invoke-virtual {v2}, Laeb;->j()Laec;

    move-result-object v2

    invoke-virtual {v2}, Laec;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "dda"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lafg;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lafg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lafg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lafg;)V
    .locals 0

    invoke-direct {p0}, Lafg;->g()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lafg;->Y:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lafg;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lafg;->a(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic d(Lafg;)V
    .locals 0

    invoke-direct {p0}, Lafg;->f()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lafg;->Z:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lafg;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lafg;->a(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic e(Lafg;)V
    .locals 0

    invoke-direct {p0}, Lafg;->c()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lafg;->aa:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lafg;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lafg;->a(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lafg;->ab:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lafg;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lafg;->a(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-void
.end method
