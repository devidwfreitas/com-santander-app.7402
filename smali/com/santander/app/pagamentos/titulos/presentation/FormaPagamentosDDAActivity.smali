.class public Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljvc;


# instance fields
.field private A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private B:Laoa;

.field private C:Lbr/com/santander/uisdk/SantanderSwitch;

.field private D:Landroid/widget/EditText;

.field private E:Landroid/widget/EditText;

.field private a:Ljvz;

.field private b:Ljsr;

.field private c:Landroid/widget/Button;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/santander/app/components/view/DateCircleButton;

.field private w:Lcom/santander/app/components/view/DateCircleButton;

.field private x:Landroid/app/DatePickerDialog;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 71
    const-string v0, "N"

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->z:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private b(Ljsr;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 393
    invoke-virtual {p1}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 395
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Valor a receber "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    invoke-virtual {v0}, Lgku;->c()Ljava/lang/String;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->k()V

    return-void
.end method

.method public static synthetic d(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Ljvz;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->a:Ljvz;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Landroid/app/DatePickerDialog;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->x:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Lcom/santander/app/components/view/DateCircleButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->a()V

    .line 110
    return-void
.end method

.method public static synthetic h(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Lcom/santander/app/components/view/DateCircleButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 113
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 114
    const v0, 0x7f100bf9

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d:Landroid/support/v7/widget/RecyclerView;

    .line 115
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 116
    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 117
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Ljvq;

    const/4 v2, 0x1

    new-array v2, v2, [Ljsr;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b:Ljsr;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljvq;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 118
    const v0, 0x7f100a65

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->e:Landroid/widget/LinearLayout;

    .line 119
    const v0, 0x7f100a67

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->f:Landroid/widget/LinearLayout;

    .line 120
    const v0, 0x7f100a66

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/SantanderSwitch;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->C:Lbr/com/santander/uisdk/SantanderSwitch;

    .line 122
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->C:Lbr/com/santander/uisdk/SantanderSwitch;

    new-instance v1, Ljuv;

    invoke-direct {v1, p0}, Ljuv;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/SantanderSwitch;->setOnCheckedChangeListener(Lalz;)V

    .line 137
    const v0, 0x7f100a69

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->D:Landroid/widget/EditText;

    .line 138
    const v0, 0x7f100a6b

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->E:Landroid/widget/EditText;

    .line 139
    const v0, 0x7f100bf8

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->c:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->c:Landroid/widget/Button;

    new-instance v1, Ljuw;

    invoke-direct {v1, p0}, Ljuw;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->j()V

    .line 149
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->n()V

    .line 150
    return-void
.end method

.method public static synthetic i(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private i()Laoa;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Laoj;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    const v2, 0x7f0b0154

    invoke-direct {v0, v1, v2}, Laoj;-><init>(Landroid/view/View;I)V

    const-string v1, "Voc\u00ea pode agendar seu pagamento de boleto com recorr\u00eancia aqui."

    .line 154
    invoke-virtual {v0, v1}, Laoj;->a(Ljava/lang/CharSequence;)Laoj;

    move-result-object v0

    const/16 v1, 0x30

    .line 155
    invoke-virtual {v0, v1}, Laoj;->i(I)Laoj;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laoj;->a(I)Laoj;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laoj;->l(I)Laoj;

    move-result-object v0

    const v1, 0x800003

    .line 158
    invoke-virtual {v0, v1}, Laoj;->n(I)Laoj;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Laoj;->a()Laoa;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Laoa;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->B:Laoa;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    const v0, 0x7f100bf6

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/DateCircleButton;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    .line 164
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/santander/app/components/view/DateCircleButton;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 165
    const v0, 0x7f100bf7

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/DateCircleButton;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    .line 166
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/santander/app/components/view/DateCircleButton;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b()V

    .line 170
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0906b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-static {}, Lnak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 173
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 174
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0}, Lcom/santander/app/components/view/DateCircleButton;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->y:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    new-instance v1, Ljux;

    invoke-direct {v1, p0}, Ljux;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    new-instance v1, Ljuy;

    invoke-direct {v1, p0}, Ljuy;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    .line 225
    const-string v0, "Pagamentos_DDA_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->z:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->C:Lbr/com/santander/uisdk/SantanderSwitch;

    invoke-virtual {v0}, Lbr/com/santander/uisdk/SantanderSwitch;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->a:Ljvz;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b:Ljsr;

    iget-object v2, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->E:Landroid/widget/EditText;

    .line 229
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v4}, Lcom/santander/app/components/view/DateCircleButton;->a()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-interface {v0, v1, v2, v3, v4}, Ljvz;->a(Ljsr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->a(Ljava/lang/String;)V

    .line 251
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v0, "Pagamentos_DDA_AgendamentoRecorrente"

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "Pagamentos_DDA_AgendamentoRecorrente"

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v1}, Lcom/santander/app/components/view/DateCircleButton;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "Pagamentos_DDA_AgendamentoRecorrente"

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "R$ "

    const-string v3, ""

    .line 237
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b:Ljsr;

    invoke-virtual {v0}, Ljsr;->e()Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljss;

    invoke-direct {v1}, Ljss;-><init>()V

    .line 244
    invoke-virtual {v1, v0}, Ljss;->d(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b:Ljsr;

    invoke-direct {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b(Ljsr;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljss;->b(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljss;->f(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljss;->e(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b:Ljsr;

    invoke-virtual {v0}, Ljsr;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljss;->c(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->a:Ljvz;

    invoke-interface {v0, v1}, Ljvz;->a(Ljss;)V

    goto :goto_0
.end method

.method private n()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 350
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Ljva;

    invoke-direct {v2, p0}, Ljva;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)V

    .line 374
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->x:Landroid/app/DatePickerDialog;

    .line 375
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->x:Landroid/app/DatePickerDialog;

    new-instance v1, Ljvb;

    invoke-direct {v1, p0}, Ljvb;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 381
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 382
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 383
    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->x:Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 384
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->x:Landroid/app/DatePickerDialog;

    const-string v1, "Selecione a Data"

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 385
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->a:Ljvz;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->E:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljvz;->a(Landroid/widget/EditText;)V

    .line 256
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->i:Landroid/app/Activity;

    invoke-static {v0, p1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Ljuz;

    invoke-direct {v1, p0}, Ljuz;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 221
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lamy;

    invoke-direct {v1, p1}, Lamy;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 222
    return-void
.end method

.method public a(Ljsr;)V
    .locals 6

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v2}, Lcom/santander/app/components/view/DateCircleButton;->a()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 266
    const-string v3, "R$ "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    const-string v4, "."

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 268
    const-string v3, "dd/MM/yyyy"

    invoke-static {v2, v3}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 269
    new-instance v2, Ljsp;

    invoke-direct {v2, v0, v4, v5, v1}, Ljsp;-><init>(IDLjava/util/Calendar;)V

    .line 270
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    const-string v0, "Titulos"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 272
    const-string v0, "AgendamentoRecorrente"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 273
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->a:Ljvz;

    invoke-interface {v0}, Ljvz;->e()Ljava/lang/Object;

    move-result-object v0

    .line 274
    const/4 v2, 0x1

    new-array v2, v2, [Lanb;

    const/4 v3, 0x0

    instance-of v4, v0, Land;

    if-eqz v4, :cond_0

    check-cast v0, Land;

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->a:Ljava/util/List;

    .line 275
    invoke-virtual {p0, v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->startActivity(Landroid/content/Intent;)V

    .line 281
    :goto_1
    return-void

    .line 274
    :cond_0
    check-cast v0, Lamx;

    goto :goto_0

    .line 277
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    const-string v1, "Titulos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 285
    const-string v0, "N"

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->z:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 288
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 290
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0}, Lcom/santander/app/components/view/DateCircleButton;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->y:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 294
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 297
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 299
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 302
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->C:Lbr/com/santander/uisdk/SantanderSwitch;

    invoke-virtual {v0, v3}, Lbr/com/santander/uisdk/SantanderSwitch;->setChecked(Z)V

    .line 303
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3ecccccd    # 0.4f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 306
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Ljvq;

    invoke-virtual {v0}, Ljvq;->a()V

    .line 307
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->B:Laoa;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->B:Laoa;

    invoke-virtual {v0}, Laoa;->c()V

    .line 310
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 313
    const-string v0, "S"

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->z:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 316
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 318
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 319
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 322
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 323
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 326
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Ljvq;

    invoke-virtual {v0}, Ljvq;->a()V

    .line 327
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->B:Laoa;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->B:Laoa;

    invoke-virtual {v0}, Laoa;->c()V

    .line 330
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->i()Laoa;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->B:Laoa;

    .line 339
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->B:Laoa;

    invoke-virtual {v0}, Laoa;->b()V

    .line 340
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b:Ljsr;

    invoke-virtual {v0}, Ljsr;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d()V

    .line 347
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->z:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->C:Lbr/com/santander/uisdk/SantanderSwitch;

    invoke-virtual {v0}, Lbr/com/santander/uisdk/SantanderSwitch;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 102
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Ljvq;

    invoke-virtual {v0}, Ljvq;->a()V

    .line 103
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->B:Laoa;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->B:Laoa;

    invoke-virtual {v0}, Laoa;->c()V

    .line 106
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f040096

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->setContentView(I)V

    .line 85
    const v0, 0x7f090a8c

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->c(I)V

    .line 87
    iput-object p0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->i:Landroid/app/Activity;

    .line 89
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "consultaTitulos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljsr;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b:Ljsr;

    .line 91
    new-instance v0, Ljwa;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->i:Landroid/app/Activity;

    iget-object v2, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b:Ljsr;

    invoke-direct {v0, v1, v2, p0}, Ljwa;-><init>(Landroid/app/Activity;Ljsr;Ljvc;)V

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->a:Ljvz;

    .line 93
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->h()V

    .line 94
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g()V

    .line 96
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->a:Ljvz;

    invoke-interface {v0}, Ljvz;->b()V

    .line 97
    return-void
.end method
