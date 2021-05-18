.class public Lwx;
.super Lacr;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/ImageButton;

.field private B:Landroid/widget/ImageButton;

.field private C:Ljava/lang/Boolean;

.field private D:Ljava/lang/Boolean;

.field private E:Ljava/lang/Boolean;

.field private F:Landroid/widget/TextView;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private final a:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private final d:I

.field private final e:I

.field private f:Lace;

.field private g:Lacg;

.field private h:Lom;

.field private i:Loo;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Lack;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 47
    sget v0, Lkz;->shape_selector_fg_unselected:I

    invoke-virtual {p0, v0}, Lwx;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lwx;->a:Landroid/graphics/drawable/Drawable;

    .line 48
    sget v0, Lkz;->shape_selector_fg:I

    invoke-virtual {p0, v0}, Lwx;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lwx;->c:Landroid/graphics/drawable/Drawable;

    .line 49
    sget v0, Lkx;->inv_white_three:I

    invoke-virtual {p0, v0}, Lwx;->b(I)I

    move-result v0

    iput v0, p0, Lwx;->d:I

    .line 50
    sget v0, Lkx;->inv_transparent:I

    invoke-virtual {p0, v0}, Lwx;->b(I)I

    move-result v0

    iput v0, p0, Lwx;->e:I

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lwx;->C:Ljava/lang/Boolean;

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lwx;->D:Ljava/lang/Boolean;

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lwx;->E:Ljava/lang/Boolean;

    .line 95
    invoke-virtual {p1}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lwx;->g:Lacg;

    .line 96
    new-instance v0, Lace;

    invoke-direct {v0}, Lace;-><init>()V

    iput-object v0, p0, Lwx;->f:Lace;

    .line 97
    iget-object v0, p0, Lwx;->f:Lace;

    invoke-virtual {v0, v1}, Lace;->f(Z)V

    .line 98
    new-instance v0, Loo;

    invoke-direct {v0, p1}, Loo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwx;->i:Loo;

    .line 100
    invoke-direct {p0}, Lwx;->b()V

    .line 101
    invoke-direct {p0}, Lwx;->c()V

    .line 102
    invoke-direct {p0}, Lwx;->g()V

    .line 103
    return-void
.end method

.method private A()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lwx;->h:Lom;

    const-string v1, "valorMinimoResgate"

    invoke-virtual {v0, v1}, Lom;->h(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lwx;->h:Lom;

    const-string v1, "horarioLimiteInvestimento"

    invoke-virtual {v0, v1}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private C()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lwx;->h:Lom;

    const-string v1, "indicadorAgendamentoResgate"

    invoke-virtual {v0, v1}, Lom;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private D()Ltk;
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lwx;->g:Lacg;

    invoke-virtual {v0}, Lacg;->r()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk;

    return-object v0
.end method

.method private E()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 746
    invoke-direct {p0}, Lwx;->D()Ltk;

    move-result-object v0

    invoke-virtual {v0}, Ltk;->c()Lsw;

    move-result-object v0

    invoke-virtual {v0}, Lsw;->a()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lwx;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lwx;->D:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 629
    invoke-static {p1}, Laat;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Laat;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 632
    iget-object v2, p0, Lwx;->g:Lacg;

    invoke-virtual {v2}, Lacg;->n()Lto;

    move-result-object v2

    .line 633
    iget-object v3, p0, Lwx;->g:Lacg;

    invoke-virtual {v3}, Lacg;->p()Ljava/lang/String;

    move-result-object v3

    .line 635
    invoke-direct {p0, p1}, Lwx;->b(Ljava/util/Calendar;)V

    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    sget v1, Llg;->tag_name_resgatar_data_acao:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    .line 639
    invoke-virtual {v2}, Lto;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-virtual {v2}, Lto;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    .line 638
    invoke-virtual {p0, v1, v4}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Llg;->tag_valor_data_hoje:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 640
    invoke-virtual {p0, v2, v3}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-static {v1, v2}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hoje - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    :goto_0
    return-object v0

    .line 644
    :cond_0
    sget v1, Llg;->tag_name_resgatar_data_acao:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    .line 646
    invoke-virtual {v2}, Lto;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-virtual {v2}, Lto;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    .line 645
    invoke-virtual {p0, v1, v4}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Llg;->tag_valor_data_agendada:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 647
    invoke-virtual {p0, v2, v3}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 644
    invoke-static {v1, v2}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lwx;Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lwx;->a(Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lwx;Lom;)Lom;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lwx;->h:Lom;

    return-object p1
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 12

    .prologue
    .line 579
    :try_start_0
    invoke-direct {p0}, Lwx;->r()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 580
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 581
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lwx;->a(Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;

    .line 583
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[^0-9^/]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    invoke-static {v1}, Laat;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 589
    :cond_0
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 591
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 592
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 593
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 595
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 597
    const/4 v0, 0x5

    const/16 v2, 0x5a

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 599
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 601
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v1

    new-instance v2, Lxc;

    invoke-direct {v2, p0, v6, p1}, Lxc;-><init>(Lwx;ILandroid/widget/TextView;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 612
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 613
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 614
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 616
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 617
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/DatePicker;->setFirstDayOfWeek(I)V

    .line 620
    :cond_1
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/Double;)V
    .locals 2

    .prologue
    .line 461
    invoke-static {p1}, Laat;->b(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lwx;->s:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {v1, v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-direct {p0}, Lwx;->m()V

    .line 464
    return-void
.end method

.method static synthetic a(Lwx;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lwx;->d()V

    return-void
.end method

.method static synthetic a(Lwx;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lwx;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lwx;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lwx;->b(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic a(Lwx;[Landroid/view/View;)V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lwx;->b([Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lwx;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lwx;->C:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Lwx;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lwx;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lwx;Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lwx;->a(Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lwx;->B:Landroid/widget/ImageButton;

    .line 107
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwx;->p:Landroid/widget/TextView;

    .line 108
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_lbl_nome_produto:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwx;->j:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_lbl_valor_disp_resgate:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwx;->k:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_lbl_conta_corrente:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwx;->l:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->lbl_conta_corrente:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwx;->F:Landroid/widget/TextView;

    .line 112
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_lbl_saldo_disponivel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwx;->o:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_btn_parcial:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lwx;->t:Landroid/widget/Button;

    .line 114
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_btn_total:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lwx;->u:Landroid/widget/Button;

    .line 115
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_edt_valor:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    iput-object v0, p0, Lwx;->s:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    .line 116
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_txt_valor:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwx;->n:Landroid/widget/TextView;

    .line 117
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_linha_valor:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lwx;->w:Landroid/view/View;

    .line 118
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_txt_validacao_valor:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwx;->m:Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_btn_data:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lwx;->A:Landroid/widget/ImageButton;

    .line 120
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_txt_data:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwx;->q:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_txt_validacao_data:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwx;->r:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_btn_info:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lwx;->z:Landroid/widget/ImageButton;

    .line 123
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_apl_loading:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lwx;->x:Landroid/view/View;

    .line 124
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_main_view:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lwx;->y:Landroid/view/View;

    .line 125
    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v0

    sget v1, Lla;->resgate_btn_continuar:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lwx;->v:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lwx;->t:Landroid/widget/Button;

    iget-object v1, p0, Lwx;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    sget v0, Llg;->CDB:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwx;->G:Ljava/lang/String;

    .line 130
    sget v0, Llg;->FUNDOS:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwx;->H:Ljava/lang/String;

    .line 131
    sget v0, Llg;->POUPANCA:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwx;->I:Ljava/lang/String;

    .line 132
    return-void
.end method

.method private b(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 655
    invoke-static {p1}, Laat;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Laat;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lwx;->f:Lace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lace;->g(Z)V

    .line 662
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lwx;->f:Lace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lace;->g(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lwx;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lwx;->g()V

    return-void
.end method

.method static synthetic c(Lwx;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lwx;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 138
    :try_start_0
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    invoke-direct {p0}, Lwx;->D()Ltk;

    move-result-object v1

    invoke-virtual {v1}, Ltk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 143
    :goto_0
    iget-object v0, p0, Lwx;->g:Lacg;

    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v3

    .line 144
    iget-object v0, p0, Lwx;->i:Loo;

    .line 145
    invoke-virtual {v3}, Lto;->u()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {v3}, Lto;->j()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v3}, Lto;->i()Ljava/lang/String;

    move-result-object v3

    const-string v5, "R"

    new-instance v6, Lwy;

    invoke-direct {v6, p0}, Lwy;-><init>(Lwx;)V

    .line 144
    invoke-virtual/range {v0 .. v6}, Loo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lot;)V

    .line 181
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lwx;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lwx;->r()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 750
    const-string v0, "[.]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 184
    new-instance v0, Loo;

    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Loo;-><init>(Landroid/content/Context;)V

    .line 186
    iget-object v1, p0, Lwx;->g:Lacg;

    invoke-virtual {v1}, Lacg;->n()Lto;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lto;->j()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v1}, Lto;->i()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-direct {p0}, Lwx;->B()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lxd;

    invoke-direct {v4, p0}, Lxd;-><init>(Lwx;)V

    .line 187
    invoke-virtual {v0, v2, v1, v3, v4}, Loo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lot;)V

    .line 226
    return-void
.end method

.method static synthetic e(Lwx;)Lace;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lwx;->f:Lace;

    return-object v0
.end method

.method static synthetic f(Lwx;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lwx;->i()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lwx;->g:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    new-instance v0, Loo;

    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Loo;-><init>(Landroid/content/Context;)V

    .line 232
    new-instance v1, Lxf;

    invoke-direct {v1, p0}, Lxf;-><init>(Lwx;)V

    invoke-virtual {v0, v1}, Loo;->a(Lot;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-direct {p0}, Lwx;->h()V

    goto :goto_0
.end method

.method static synthetic g(Lwx;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lwx;->goBack()V

    return-void
.end method

.method private goBack()V
    .locals 3

    .prologue
    .line 701
    iget-object v0, p0, Lwx;->g:Lacg;

    invoke-virtual {v0}, Lacg;->s()V

    .line 702
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lwx;->g:Lacg;

    invoke-virtual {v0, v1, v2}, Lzs;->a(Landroid/content/Context;Lacg;)V

    .line 703
    return-void
.end method

.method static synthetic h(Lwx;)Lacg;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lwx;->g:Lacg;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lwx;->C:Ljava/lang/Boolean;

    .line 267
    invoke-virtual {p0}, Lwx;->a()V

    .line 268
    invoke-direct {p0}, Lwx;->i()V

    .line 269
    return-void
.end method

.method private i()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 299
    iget-object v0, p0, Lwx;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lwx;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lwx;->f:Lace;

    invoke-direct {p0}, Lwx;->D()Ltk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->a(Ltk;)V

    .line 301
    iget-object v0, p0, Lwx;->f:Lace;

    iget-object v1, p0, Lwx;->g:Lacg;

    invoke-virtual {v1}, Lacg;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->b(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lwx;->f:Lace;

    iget-object v1, p0, Lwx;->g:Lacg;

    invoke-virtual {v1}, Lacg;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->a(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lwx;->f:Lace;

    iget-object v1, p0, Lwx;->g:Lacg;

    invoke-virtual {v1}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->a(Lto;)V

    .line 304
    iget-object v0, p0, Lwx;->f:Lace;

    iget-object v1, p0, Lwx;->g:Lacg;

    invoke-virtual {v1}, Lacg;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->c(Ljava/lang/Integer;)V

    .line 305
    iget-object v0, p0, Lwx;->f:Lace;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lace;->c(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lwx;->f:Lace;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->a(Ljava/lang/Integer;)V

    .line 308
    iget-object v0, p0, Lwx;->x:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lwx;->y:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 311
    sget v0, Llg;->label_conta_corrente:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lwx;->g:Lacg;

    invoke-virtual {v1}, Lacg;->p()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lwx;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwx;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " de destino"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_1
    iget-object v1, p0, Lwx;->F:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lwx;->B:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 320
    iget-object v0, p0, Lwx;->B:Landroid/widget/ImageButton;

    new-instance v1, Lxh;

    invoke-direct {v1, p0}, Lxh;-><init>(Lwx;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lwx;->p:Landroid/widget/TextView;

    sget v1, Llg;->app_resgatar:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 328
    invoke-direct {p0}, Lwx;->k()V

    .line 330
    iget-object v0, p0, Lwx;->g:Lacg;

    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lwx;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lto;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lwx;->k:Landroid/widget/TextView;

    invoke-direct {p0}, Lwx;->E()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v1, p0, Lwx;->n:Landroid/widget/TextView;

    invoke-direct {p0}, Lwx;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lwx;->t:Landroid/widget/Button;

    iget-object v2, p0, Lwx;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v1, p0, Lwx;->t:Landroid/widget/Button;

    iget v2, p0, Lwx;->d:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 337
    iget-object v1, p0, Lwx;->t:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    iget-object v1, p0, Lwx;->t:Landroid/widget/Button;

    new-instance v2, Lxi;

    invoke-direct {v2, p0, v0}, Lxi;-><init>(Lwx;Lto;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v1, p0, Lwx;->u:Landroid/widget/Button;

    iget-object v2, p0, Lwx;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v1, p0, Lwx;->u:Landroid/widget/Button;

    iget v2, p0, Lwx;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 351
    iget-object v1, p0, Lwx;->u:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 352
    iget-object v1, p0, Lwx;->u:Landroid/widget/Button;

    new-instance v2, Lxj;

    invoke-direct {v2, p0, v0}, Lxj;-><init>(Lwx;Lto;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    invoke-direct {p0}, Lwx;->C()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lwx;->A:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lwx;->A:Landroid/widget/ImageButton;

    new-instance v1, Lxk;

    invoke-direct {v1, p0}, Lxk;-><init>(Lwx;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    :goto_0
    sget v0, Llg;->config_resgate_txt_data_validacao:I

    new-array v1, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lwx;->B()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lwx;->r:Landroid/widget/TextView;

    invoke-direct {p0}, Lwx;->z()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-direct {p0}, Lwx;->y()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 379
    iget-object v0, p0, Lwx;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 397
    :goto_2
    iget-object v0, p0, Lwx;->s:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    new-instance v1, Lxm;

    invoke-direct {v1, p0}, Lxm;-><init>(Lwx;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->a(Laay;)V

    .line 411
    iget-object v0, p0, Lwx;->v:Landroid/widget/Button;

    new-instance v1, Lxa;

    invoke-direct {v1, p0}, Lxa;-><init>(Lwx;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    :cond_2
    return-void

    .line 372
    :cond_3
    iget-object v0, p0, Lwx;->A:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 376
    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 381
    :cond_5
    iget-object v0, p0, Lwx;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lwx;->z:Landroid/widget/ImageButton;

    new-instance v1, Lxl;

    invoke-direct {v1, p0}, Lxl;-><init>(Lwx;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method static synthetic i(Lwx;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lwx;->h()V

    return-void
.end method

.method static synthetic j(Lwx;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lwx;->t()V

    return-void
.end method

.method private j()Z
    .locals 4

    .prologue
    .line 429
    invoke-direct {p0}, Lwx;->E()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0}, Lwx;->p()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-direct {p0}, Lwx;->v()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    invoke-direct {p0}, Lwx;->n()Ljava/lang/Double;

    move-result-object v4

    .line 435
    iget-object v0, p0, Lwx;->t:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lwx;->c:Landroid/graphics/drawable/Drawable;

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 437
    :goto_0
    invoke-direct {p0}, Lwx;->A()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lwx;->w()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lwx;->j()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 438
    :goto_1
    invoke-direct {p0}, Lwx;->j()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    move v0, v1

    .line 440
    :goto_2
    invoke-direct {p0}, Lwx;->A()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 442
    invoke-direct {p0}, Lwx;->o()Ljava/lang/Double;

    move-result-object v6

    invoke-static {v6}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v6

    .line 443
    invoke-static {v4}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v7

    .line 444
    const-string v8, ""

    .line 445
    if-eqz v3, :cond_3

    .line 446
    sget v0, Llg;->label_ranged_value:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v2

    aput-object v7, v3, v1

    invoke-virtual {p0, v0, v3}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_3
    iget-object v1, p0, Lwx;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    return-void

    :cond_0
    move v0, v2

    .line 435
    goto :goto_0

    :cond_1
    move v3, v2

    .line 437
    goto :goto_1

    :cond_2
    move v0, v2

    .line 438
    goto :goto_2

    .line 447
    :cond_3
    if-eqz v0, :cond_4

    .line 448
    sget v0, Llg;->label_blocked_partial_redemption:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-direct {p0, v4}, Lwx;->a(Ljava/lang/Double;)V

    goto :goto_3

    .line 450
    :cond_4
    if-eqz v5, :cond_5

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Llg;->label_valor_minimo:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 453
    :cond_5
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Llg;->label_valor_minimo:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v2}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic k(Lwx;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lwx;->s()V

    return-void
.end method

.method static synthetic l(Lwx;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lwx;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lwx;->g:Lacg;

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lwx;->g:Lacg;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwx;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 468
    :goto_0
    return v0

    .line 469
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic m(Lwx;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lwx;->w:Landroid/view/View;

    return-object v0
.end method

.method private m()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 473
    invoke-direct {p0}, Lwx;->o()Ljava/lang/Double;

    move-result-object v3

    .line 474
    invoke-direct {p0}, Lwx;->n()Ljava/lang/Double;

    move-result-object v4

    .line 477
    iget-object v0, p0, Lwx;->u:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lwx;->c:Landroid/graphics/drawable/Drawable;

    if-ne v0, v5, :cond_0

    move v0, v1

    .line 478
    :goto_0
    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lwx;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwx;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 484
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v4}, Lwx;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    iget-object v2, p0, Lwx;->f:Lace;

    invoke-virtual {v2, v0}, Lace;->a(Ljava/lang/Double;)V

    .line 486
    iget-object v0, p0, Lwx;->v:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lwx;->v:Landroid/widget/Button;

    sget v1, Lkx;->inv_white_three:I

    invoke-virtual {p0, v1}, Lwx;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 488
    iget-object v0, p0, Lwx;->v:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 494
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 477
    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lwx;->s:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwx;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 490
    :cond_2
    iget-object v0, p0, Lwx;->v:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 491
    iget-object v0, p0, Lwx;->v:Landroid/widget/Button;

    sget v3, Lkx;->inv_brownish_grey:I

    invoke-virtual {p0, v3}, Lwx;->b(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 492
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v3, p0, Lwx;->n:Landroid/widget/TextView;

    aput-object v3, v0, v2

    iget-object v2, p0, Lwx;->w:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lwx;->a([Landroid/view/View;)V

    goto :goto_2
.end method

.method static synthetic n(Lwx;)Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lwx;->s:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    return-object v0
.end method

.method private n()Ljava/lang/Double;
    .locals 4

    .prologue
    .line 497
    invoke-direct {p0}, Lwx;->E()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0}, Lwx;->p()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 499
    invoke-direct {p0}, Lwx;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-direct {p0}, Lwx;->E()Ljava/lang/Double;

    move-result-object v0

    .line 502
    :cond_0
    return-object v0
.end method

.method private o()Ljava/lang/Double;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    .line 507
    invoke-direct {p0}, Lwx;->A()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    invoke-direct {p0}, Lwx;->v()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 510
    :goto_1
    return-object v0

    .line 508
    :cond_0
    invoke-direct {p0}, Lwx;->v()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 510
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic o(Lwx;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lwx;->m()V

    return-void
.end method

.method private p()Ljava/lang/Double;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 515
    invoke-direct {p0}, Lwx;->y()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lwx;->x()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private q()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 520
    invoke-direct {p0}, Lwx;->E()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Laat;->b(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 523
    :try_start_0
    invoke-direct {p0}, Lwx;->u()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0}, Lwx;->E()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    move v3, v1

    .line 524
    :goto_0
    invoke-direct {p0}, Lwx;->w()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 525
    :goto_1
    if-eqz v1, :cond_0

    .line 526
    invoke-direct {p0}, Lwx;->u()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Laat;->b(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lwx;->m:Landroid/widget/TextView;

    sget v2, Llg;->resgate_txt_validacao_valor:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v1, p0, Lwx;->m:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lwx;->E:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move v3, v2

    .line 523
    goto :goto_0

    :cond_2
    move v1, v2

    .line 524
    goto :goto_1

    .line 534
    :catch_0
    move-exception v1

    .line 535
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private r()Ljava/lang/Integer;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/16 v0, 0x18

    .line 544
    .line 546
    :try_start_0
    invoke-direct {p0}, Lwx;->z()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    invoke-direct {p0}, Lwx;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 549
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 552
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "O m\u00ednimo de perman\u00eancia neste investimento \u00e9 de "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lwx;->x()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-direct {p0}, Lwx;->w()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", e o m\u00e1ximo permitido para movimenta\u00e7\u00f5es \u00e9 de "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lwx;->u()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lwx;->e()Lack;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Resgate parcial"

    .line 565
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 566
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "FECHAR"

    new-instance v2, Lxb;

    invoke-direct {v2, p0}, Lxb;-><init>(Lwx;)V

    .line 567
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 575
    return-void
.end method

.method private t()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 665
    iget-object v0, p0, Lwx;->t:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lwx;->c:Landroid/graphics/drawable/Drawable;

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 666
    :goto_0
    iget-object v3, p0, Lwx;->u:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lwx;->c:Landroid/graphics/drawable/Drawable;

    if-ne v3, v5, :cond_1

    move v5, v1

    .line 668
    :goto_1
    if-nez v5, :cond_3

    .line 669
    iget-object v3, p0, Lwx;->s:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {v3, v6}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->setVisibility(I)V

    .line 670
    iget-object v3, p0, Lwx;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    iget-object v3, p0, Lwx;->w:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v6, p0, Lwx;->m:Landroid/widget/TextView;

    iget-object v3, p0, Lwx;->E:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 673
    iget-object v3, p0, Lwx;->z:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 675
    iget-object v3, p0, Lwx;->v:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 676
    iget-object v3, p0, Lwx;->v:Landroid/widget/Button;

    sget v4, Lkx;->inv_white_three:I

    invoke-virtual {p0, v4}, Lwx;->b(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 677
    iget-object v3, p0, Lwx;->v:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    .line 679
    iget-object v3, p0, Lwx;->f:Lace;

    iget-object v4, p0, Lwx;->n:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lwx;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lace;->a(Ljava/lang/Double;)V

    .line 689
    :goto_3
    iget-object v4, p0, Lwx;->t:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lwx;->a:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 690
    iget-object v4, p0, Lwx;->t:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget v3, p0, Lwx;->e:I

    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 691
    iget-object v3, p0, Lwx;->t:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 692
    iget-object v3, p0, Lwx;->u:Landroid/widget/Button;

    if-eqz v5, :cond_7

    iget-object v0, p0, Lwx;->a:Landroid/graphics/drawable/Drawable;

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 693
    iget-object v3, p0, Lwx;->u:Landroid/widget/Button;

    if-eqz v5, :cond_8

    iget v0, p0, Lwx;->e:I

    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 694
    iget-object v0, p0, Lwx;->u:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 695
    iget-object v0, p0, Lwx;->f:Lace;

    if-nez v5, :cond_9

    :goto_8
    invoke-virtual {v0, v1}, Lace;->d(Z)V

    .line 696
    iget-object v0, p0, Lwx;->n:Landroid/widget/TextView;

    sget v1, Lkx;->inv_black:I

    invoke-virtual {p0, v1}, Lwx;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 698
    return-void

    :cond_0
    move v0, v2

    .line 665
    goto/16 :goto_0

    :cond_1
    move v5, v2

    .line 666
    goto/16 :goto_1

    :cond_2
    move v3, v4

    .line 672
    goto :goto_2

    .line 681
    :cond_3
    iget-object v3, p0, Lwx;->s:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {v3, v2}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->setVisibility(I)V

    .line 682
    iget-object v3, p0, Lwx;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    iget-object v3, p0, Lwx;->w:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v3, p0, Lwx;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 685
    iget-object v3, p0, Lwx;->z:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lwx;->l()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_9
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 686
    invoke-direct {p0}, Lwx;->m()V

    goto :goto_3

    :cond_4
    move v4, v2

    .line 685
    goto :goto_9

    .line 689
    :cond_5
    iget-object v3, p0, Lwx;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 690
    :cond_6
    iget v3, p0, Lwx;->d:I

    goto :goto_5

    .line 692
    :cond_7
    iget-object v0, p0, Lwx;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 693
    :cond_8
    iget v0, p0, Lwx;->d:I

    goto :goto_7

    :cond_9
    move v1, v2

    .line 695
    goto :goto_8
.end method

.method private u()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lwx;->h:Lom;

    const-string v1, "valorMaximoResgate"

    invoke-virtual {v0, v1}, Lom;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private v()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lwx;->h:Lom;

    const-string v1, "valorMinimoResgate"

    invoke-virtual {v0, v1}, Lom;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private w()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lwx;->h:Lom;

    const-string v1, "valorMaximoResgate"

    invoke-virtual {v0, v1}, Lom;->h(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private x()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lwx;->h:Lom;

    const-string v1, "saldoMinimoPermanencia"

    invoke-virtual {v0, v1}, Lom;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private y()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lwx;->h:Lom;

    const-string v1, "saldoMinimoPermanencia"

    invoke-virtual {v0, v1}, Lom;->h(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private z()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lwx;->h:Lom;

    const-string v1, "horarioLimiteInvestimento"

    invoke-virtual {v0, v1}, Lom;->h(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 272
    new-instance v1, Lou;

    invoke-direct {v1}, Lou;-><init>()V

    .line 274
    iget-object v0, p0, Lwx;->g:Lacg;

    invoke-virtual {v0}, Lacg;->r()Ljava/util/List;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 276
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk;

    invoke-virtual {v0}, Ltk;->j()Lsv;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    invoke-virtual {v0}, Lsv;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lou;->g(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Lsv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lou;->a(Ljava/lang/String;)V

    .line 284
    :goto_0
    iget-object v0, p0, Lwx;->g:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 286
    invoke-virtual {v1}, Lou;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 287
    invoke-virtual {v1}, Lou;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 289
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lou;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lou;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 290
    iget-object v3, p0, Lwx;->f:Lace;

    invoke-virtual {v3, v0}, Lace;->a(Lou;)V

    .line 291
    iget-object v3, p0, Lwx;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Lou;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lou;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Laat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v3, p0, Lwx;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Lou;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laat;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 281
    :cond_1
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->c()Lou;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 296
    :cond_2
    return-void
.end method
