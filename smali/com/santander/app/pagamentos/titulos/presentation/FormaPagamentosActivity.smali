.class public Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljvd;


# instance fields
.field private A:Lcom/santander/app/components/view/DateCircleButton;

.field private B:Landroid/app/DatePickerDialog;

.field private C:Landroid/app/DatePickerDialog;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Landroid/widget/LinearLayout;

.field private H:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private a:Ljwb;

.field private b:Ljsr;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageButton;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Lcom/santander/app/components/view/DateCircleButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 69
    const-string v0, "N"

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->F:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->D:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Ljsr;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Landroid/app/DatePickerDialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->C:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->E:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->j()V

    return-void
.end method

.method public static synthetic d(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Ljwb;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->a:Ljwb;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Landroid/app/DatePickerDialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->B:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Lcom/santander/app/components/view/DateCircleButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->D:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->c()V

    .line 94
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    invoke-virtual {v1}, Ljsr;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    invoke-virtual {v1}, Ljsr;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public static synthetic h(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Lcom/santander/app/components/view/DateCircleButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 99
    const v0, 0x7f100bf0

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->G:Landroid/widget/LinearLayout;

    .line 100
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->G:Landroid/widget/LinearLayout;

    new-instance v1, Ljul;

    invoke-direct {v1, p0}, Ljul;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f100bee

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->c:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f100bf3

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->x:Landroid/widget/LinearLayout;

    .line 108
    const v0, 0x7f100bf1

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->y:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f100bf2

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->f:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    invoke-virtual {v1}, Ljsr;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v0, 0x7f100b12

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->g:Landroid/widget/ImageButton;

    .line 113
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->g:Landroid/widget/ImageButton;

    new-instance v1, Ljun;

    invoke-direct {v1, p0}, Ljun;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f100bf5

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->d:Landroid/widget/EditText;

    .line 120
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->H:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 121
    const v0, 0x7f100bef

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->w:Landroid/widget/LinearLayout;

    .line 122
    const v0, 0x7f100bf8

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->e:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->e:Landroid/widget/Button;

    new-instance v1, Ljuo;

    invoke-direct {v1, p0}, Ljuo;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->i()V

    .line 132
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->k()V

    .line 134
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->n()V

    .line 135
    return-void
.end method

.method public static synthetic i(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->F:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    const v0, 0x7f100bf6

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/DateCircleButton;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    .line 139
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/santander/app/components/view/DateCircleButton;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 140
    const v0, 0x7f100bf7

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/DateCircleButton;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    .line 141
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/santander/app/components/view/DateCircleButton;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->d()V

    .line 145
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0906b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-static {}, Lnak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 148
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0}, Lcom/santander/app/components/view/DateCircleButton;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->D:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    new-instance v1, Ljup;

    invoke-direct {v1, p0}, Ljup;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 164
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    new-instance v1, Ljuq;

    invoke-direct {v1, p0}, Ljuq;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method

.method public static synthetic j(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->E:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 197
    const-string v0, "Pagamentos_Pagamento_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000121"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    invoke-virtual {v0}, Ljsr;->e()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljss;

    invoke-direct {v1}, Ljss;-><init>()V

    .line 203
    invoke-virtual {v1, v0}, Ljss;->d(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljss;->b(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->F:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljss;->f(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->D:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljss;->e(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljss;->c(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->a:Ljwb;

    invoke-interface {v0, v1}, Ljwb;->a(Ljss;)V

    .line 218
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsr;->k(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljsr;->a(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljsr;->r(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsr;->p(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->a:Ljwb;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    invoke-interface {v0, v1}, Ljwb;->c(Ljsr;)V

    goto :goto_0
.end method

.method public static synthetic k(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 306
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Ljus;

    invoke-direct {v2, p0}, Ljus;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V

    .line 325
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

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->B:Landroid/app/DatePickerDialog;

    .line 326
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->B:Landroid/app/DatePickerDialog;

    new-instance v1, Ljut;

    invoke-direct {v1, p0}, Ljut;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 332
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 334
    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->B:Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 335
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->B:Landroid/app/DatePickerDialog;

    const-string v1, "Selecione a Data"

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->B:Landroid/app/DatePickerDialog;

    new-instance v1, Ljuu;

    invoke-direct {v1, p0}, Ljuu;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 346
    return-void
.end method

.method private n()V
    .locals 6

    .prologue
    .line 349
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Ljum;

    invoke-direct {v2, p0}, Ljum;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V

    .line 362
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->C:Landroid/app/DatePickerDialog;

    .line 363
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->C:Landroid/app/DatePickerDialog;

    const-string v1, "Selecione a Data"

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->x:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    return-void
.end method

.method public a(Landroid/widget/LinearLayout;)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->w:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    invoke-virtual {v1}, Ljsr;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->i:Landroid/app/Activity;

    invoke-static {v0, p1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 298
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
    .line 178
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->H:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Ljur;

    invoke-direct {v1, p0}, Ljur;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 193
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->H:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lamy;

    invoke-direct {v1, p1}, Lamy;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 194
    return-void
.end method

.method public a(Ljsr;)V
    .locals 2

    .prologue
    .line 247
    const-string v0, "Pagamentos_Pagamento_Confirmacao_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    const-string v1, "Titulos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->y:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    return-void
.end method

.method public b(Ljsr;)V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    const-string v1, "ConsultaTitulos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->a:Ljwb;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->d:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljwb;->a(Landroid/widget/EditText;)V

    .line 233
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    const-string v0, "N"

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->F:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 265
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 267
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0}, Lcom/santander/app/components/view/DateCircleButton;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->D:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 272
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 275
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 276
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 278
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    const-string v0, "S"

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->F:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 284
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 286
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 287
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->A:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 290
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 291
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->z:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 293
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->G:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f040095

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->setContentView(I)V

    .line 78
    const v0, 0x7f090a8c

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->c(I)V

    .line 80
    iput-object p0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->i:Landroid/app/Activity;

    .line 82
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "consultaTitulos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljsr;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    .line 84
    new-instance v0, Ljwc;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->i:Landroid/app/Activity;

    iget-object v2, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b:Ljsr;

    invoke-direct {v0, v1, v2, p0}, Ljwc;-><init>(Landroid/app/Activity;Ljsr;Ljvd;)V

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->a:Ljwb;

    .line 86
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->h()V

    .line 87
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->g()V

    .line 89
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->a:Ljwb;

    invoke-interface {v0}, Ljwb;->b()V

    .line 90
    return-void
.end method
