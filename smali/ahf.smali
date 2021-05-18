.class public Lahf;
.super Ljava/lang/Object;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private a:Landroid/app/Activity;

.field private b:Lajg;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

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
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;Lajg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lahf;->a:Landroid/app/Activity;

    iput-object p3, p0, Lahf;->b:Lajg;

    invoke-virtual {p0, p1}, Lahf;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lahf;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lahf;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Janeiro"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Fevereiro"

    aput-object v3, v1, v2

    const-string v2, "Mar\u00e7o"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const-string v3, "Abril"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Maio"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Junho"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Julho"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Agosto"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Setembro"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Outubro"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Novembro"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Dezembro"

    aput-object v3, v1, v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    aget-object v0, v1, v0

    return-object v0
.end method

.method static synthetic b(Lahf;)Lajg;
    .locals 1

    iget-object v0, p0, Lahf;->b:Lajg;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget v0, Lagg;->month_header_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->c:Landroid/widget/TextView;

    sget v0, Lagg;->duvidas_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lahf;->d:Landroid/widget/ImageView;

    sget v0, Lagg;->month_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->e:Landroid/widget/TextView;

    sget v0, Lagg;->field_debt_cheque:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahf;->f:Landroid/widget/RelativeLayout;

    sget v0, Lagg;->field_debt_cartoes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahf;->g:Landroid/widget/RelativeLayout;

    sget v0, Lagg;->field_debt_emprestimo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahf;->h:Landroid/widget/RelativeLayout;

    sget v0, Lagg;->field_debt_financiamentos:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahf;->i:Landroid/widget/RelativeLayout;

    sget v0, Lagg;->field_debt_renegociacao:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahf;->j:Landroid/widget/RelativeLayout;

    sget v0, Lagg;->debt_cheque_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->o:Landroid/widget/TextView;

    sget v0, Lagg;->debt_cartoes_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->p:Landroid/widget/TextView;

    sget v0, Lagg;->debt_emprestimo_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->q:Landroid/widget/TextView;

    sget v0, Lagg;->debt_financiamentos_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->r:Landroid/widget/TextView;

    sget v0, Lagg;->debt_renegociacao_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->s:Landroid/widget/TextView;

    sget v0, Lagg;->oportunidades_field:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lahf;->k:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lahf;->k:Landroid/widget/FrameLayout;

    sget v1, Lagg;->field_oportunidade_cartoes:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahf;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lahf;->k:Landroid/widget/FrameLayout;

    sget v1, Lagg;->field_oportunidade_emprestimo:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahf;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lahf;->k:Landroid/widget/FrameLayout;

    sget v1, Lagg;->field_oportunidade_financiamentos:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lahf;->n:Landroid/widget/RelativeLayout;

    sget v0, Lagg;->debt_cheque_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->t:Landroid/widget/TextView;

    sget v0, Lagg;->debt_cartoes_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->u:Landroid/widget/TextView;

    sget v0, Lagg;->debt_emprestimo_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->v:Landroid/widget/TextView;

    sget v0, Lagg;->debt_financiamentos_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->w:Landroid/widget/TextView;

    sget v0, Lagg;->debt_renegociacao_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->x:Landroid/widget/TextView;

    sget v0, Lagg;->month_data_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lahf;->C:Landroid/widget/LinearLayout;

    sget v0, Lagg;->empty_month_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lahf;->B:Landroid/widget/LinearLayout;

    sget v0, Lagg;->month_emprestimo_atraso_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->y:Landroid/widget/TextView;

    sget v0, Lagg;->month_financ_atraso_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->z:Landroid/widget/TextView;

    sget v0, Lagg;->month_reneg_atraso_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahf;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->f()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahf;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->g()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lahf;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->c()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lahf;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lahf;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lahf;->a:Landroid/app/Activity;

    sget v2, Lagl;->compromissos_em:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lahf;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lahf;->d:Landroid/widget/ImageView;

    new-instance v1, Lahl;

    invoke-direct {v1, p0}, Lahl;-><init>(Lahf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->c()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->f()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->d()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->g()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lahf;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lahf;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lahf;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lahf;->b:Lajg;

    invoke-virtual {v1}, Lajg;->a()Laji;

    move-result-object v1

    invoke-virtual {v1}, Laji;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lahf;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->d()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lahf;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lahf;->b:Lajg;

    invoke-virtual {v1}, Lajg;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->d()I

    move-result v0

    if-le v0, v6, :cond_4

    iget-object v0, p0, Lahf;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lahf;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagl;->number_of_items:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lahf;->b:Lajg;

    invoke-virtual {v4}, Lajg;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->f()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lahf;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lahf;->b:Lajg;

    invoke-virtual {v1}, Lajg;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->f()I

    move-result v0

    if-le v0, v6, :cond_5

    iget-object v0, p0, Lahf;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lahf;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagl;->number_of_items:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lahf;->b:Lajg;

    invoke-virtual {v4}, Lajg;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->g()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lahf;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lahf;->b:Lajg;

    invoke-virtual {v1}, Lajg;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->g()I

    move-result v0

    if-le v0, v6, :cond_6

    iget-object v0, p0, Lahf;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lahf;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagl;->number_of_items:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lahf;->b:Lajg;

    invoke-virtual {v4}, Lajg;->g()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->c()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lahf;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lahf;->b:Lajg;

    invoke-virtual {v1}, Lajg;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->c()I

    move-result v0

    if-le v0, v6, :cond_7

    iget-object v0, p0, Lahf;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lahf;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lagl;->number_of_items:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lahf;->b:Lajg;

    invoke-virtual {v4}, Lajg;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lahf;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Lahm;

    invoke-direct {v1, p0}, Lahm;-><init>(Lahf;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahf;->i:Landroid/widget/RelativeLayout;

    new-instance v1, Laho;

    invoke-direct {v1, p0}, Laho;-><init>(Lahf;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahf;->j:Landroid/widget/RelativeLayout;

    new-instance v1, Lahq;

    invoke-direct {v1, p0}, Lahq;-><init>(Lahf;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahf;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lahs;

    invoke-direct {v1, p0}, Lahs;-><init>(Lahf;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahf;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lahf;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lahf;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lahf;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lahf;->m:Landroid/widget/RelativeLayout;

    new-instance v1, Laht;

    invoke-direct {v1, p0}, Laht;-><init>(Lahf;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lahf;->b:Lajg;

    invoke-virtual {v0}, Lajg;->g()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lahf;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lahf;->n:Landroid/widget/RelativeLayout;

    new-instance v1, Lahu;

    invoke-direct {v1, p0}, Lahu;-><init>(Lahf;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    invoke-static {}, Lajd;->a()Lajd;

    move-result-object v0

    invoke-virtual {v0}, Lajd;->b()Laju;

    move-result-object v0

    sget-object v1, Laju;->USER_PRIVATE:Laju;

    invoke-virtual {v0, v1}, Laju;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lahf;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lahf;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lahf;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lahf;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lahf;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3
.end method
