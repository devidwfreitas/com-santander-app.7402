.class public Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljgs;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/widget/LinearLayout;

.field private H:Ljdx;

.field private I:Landroid/widget/Button;

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

.field private X:Landroid/support/design/widget/TextInputLayout;

.field private Y:Landroid/widget/TextView;

.field private Z:Ljava/lang/String;

.field private a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private aa:Lcom/santander/app/contacorrente/domain/Conta;

.field private ab:Z

.field private ac:Z

.field private ad:Ljdx;

.field private ae:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljdx;",
            ">;"
        }
    .end annotation
.end field

.field private af:Landroid/app/Dialog;

.field private ag:Ljava/lang/String;

.field private b:Ljin;

.field private c:Landroid/widget/EditText;

.field private d:Lguj;

.field private e:Ljava/util/Calendar;

.field private f:Ljava/lang/String;

.field private g:Lcom/santander/app/components/view/DateCircleButton;

.field private w:Lcom/santander/app/components/view/DateCircleButton;

.field private x:Lcom/santander/app/components/view/ValorResgateButton;

.field private y:Lcom/santander/app/components/view/ValorResgateButton;

.field private z:Landroid/app/DatePickerDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->aa:Lcom/santander/app/contacorrente/domain/Conta;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ae:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->e:Ljava/util/Calendar;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljdx;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljdx;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ad:Ljdx;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->aa:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljin;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->b:Ljin;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const v3, 0x7f02008c

    const v2, 0x7f020089

    .line 125
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 127
    const v0, 0x7f100c4c

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c:Landroid/widget/EditText;

    .line 128
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->d:Lguj;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ac:Z

    .line 130
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->d:Lguj;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 131
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->d:Lguj;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    const v0, 0x7f100c4b

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->X:Landroid/support/design/widget/TextInputLayout;

    .line 133
    const v0, 0x7f100c4e

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/DateCircleButton;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    .line 134
    const v0, 0x7f100c4f

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/DateCircleButton;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    .line 135
    const v0, 0x7f100c46

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/ValorResgateButton;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    .line 136
    const v0, 0x7f100c45

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/ValorResgateButton;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->x:Lcom/santander/app/components/view/ValorResgateButton;

    .line 137
    const v0, 0x7f100c44

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->B:Landroid/widget/LinearLayout;

    .line 138
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/santander/app/components/view/DateCircleButton;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/santander/app/components/view/DateCircleButton;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->x:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 142
    const v0, 0x7f100c43

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->A:Landroid/widget/LinearLayout;

    .line 143
    const v0, 0x7f100c48

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->F:Landroid/widget/LinearLayout;

    .line 144
    const v0, 0x7f100c47

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->U:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f100c2f

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->K:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f100c31

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->Y:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f100c32

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->L:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f100c37

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->M:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f100c39

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->N:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f100c3b

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->O:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f100c50

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->I:Landroid/widget/Button;

    .line 152
    const v0, 0x7f100c30

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->D:Landroid/widget/LinearLayout;

    .line 153
    const v0, 0x7f100c3c

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->C:Landroid/widget/LinearLayout;

    .line 154
    const v0, 0x7f100c2d

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->E:Landroid/widget/LinearLayout;

    .line 155
    const v0, 0x7f100c2e

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->J:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f100c3d

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->P:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f100c3e

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->Q:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f100c3f

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->R:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f100c40

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->S:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f100c42

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->T:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f100c34

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->V:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f100c35

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->W:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f100c33

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->G:Landroid/widget/LinearLayout;

    .line 166
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->A:Landroid/widget/LinearLayout;

    new-instance v1, Ljgg;

    invoke-direct {v1, p0}, Ljgg;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->i()V

    .line 183
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->j()V

    .line 185
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->I:Landroid/widget/Button;

    new-instance v1, Ljgk;

    invoke-direct {v1, p0}, Ljgk;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c:Landroid/widget/EditText;

    new-instance v1, Ljgl;

    invoke-direct {v1, p0}, Ljgl;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    const-string v1, "fundos_confirmacao"

    iget-object v2, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 356
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->i()V

    return-void
.end method

.method public static synthetic h(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Landroid/app/DatePickerDialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->z:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 463
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 464
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 467
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 468
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 469
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 471
    iput-boolean v3, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ab:Z

    .line 472
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0}, Lcom/santander/app/components/view/DateCircleButton;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->Z:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public static synthetic i(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->e:Ljava/util/Calendar;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 476
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 477
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 478
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 480
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 481
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 482
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 483
    iput-boolean v3, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ab:Z

    .line 484
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0}, Lcom/santander/app/components/view/DateCircleButton;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->Z:Ljava/lang/String;

    .line 485
    return-void
.end method

.method public static synthetic j(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 488
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->x:Lcom/santander/app/components/view/ValorResgateButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setPressed(Z)V

    .line 489
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->x:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 490
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->x:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setTextColor(I)V

    .line 492
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/ValorResgateButton;->setPressed(Z)V

    .line 493
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 494
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setTextColor(I)V

    .line 495
    iput-boolean v3, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ac:Z

    .line 497
    const-string v0, "Investimentos_Poupanca_Resgatar_Acao"

    const-string v1, "Valor Parcial"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public static synthetic k(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Lcom/santander/app/components/view/DateCircleButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 501
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/ValorResgateButton;->setPressed(Z)V

    .line 502
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 503
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setTextColor(I)V

    .line 505
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->x:Lcom/santander/app/components/view/ValorResgateButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setPressed(Z)V

    .line 506
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->x:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 507
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->x:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setTextColor(I)V

    .line 508
    iput-boolean v3, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ac:Z

    .line 510
    const-string v0, "Investimentos_Poupanca_Resgatar_Acao"

    const-string v1, "Valor Total"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public static synthetic l(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->h()V

    return-void
.end method

.method public static synthetic m(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->F:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic n(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Lcom/santander/app/components/view/ValorResgateButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    return-object v0
.end method

.method public static synthetic o(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->k()V

    return-void
.end method

.method public static synthetic p(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->j()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 226
    sget-object v0, Ljgj;->a:[I

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    invoke-virtual {v1}, Ljdx;->t()Ljdk;

    move-result-object v1

    invoke-virtual {v1}, Ljdk;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-static {}, Lnak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    new-instance v1, Ljgn;

    invoke-direct {v1, p0}, Ljgn;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ab:Z

    .line 250
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0}, Lcom/santander/app/components/view/DateCircleButton;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->Z:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    const v1, 0x7f090631

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->w:Lcom/santander/app/components/view/DateCircleButton;

    new-instance v1, Ljgo;

    invoke-direct {v1, p0}, Ljgo;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void

    .line 229
    :pswitch_0
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    const v1, 0x7f090637

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :pswitch_1
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g:Lcom/santander/app/components/view/DateCircleButton;

    const v1, 0x7f0906c8

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 458
    invoke-static {p0, p1}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 298
    packed-switch p2, :pswitch_data_0

    .line 304
    :goto_0
    invoke-virtual {p0, p2}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 305
    return-void

    .line 300
    :pswitch_0
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->X:Landroid/support/design/widget/TextInputLayout;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->X:Landroid/support/design/widget/TextInputLayout;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    goto :goto_0

    .line 300
    :cond_0
    const-string v0, ""

    goto :goto_1

    .line 301
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x7f100c4b
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/ArrayList;Ljdx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljdx;",
            ">;",
            "Ljdx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 360
    iput-object p1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ae:Ljava/util/ArrayList;

    .line 361
    iput-object p2, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ad:Ljdx;

    .line 362
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->A:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
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
    .line 214
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lamy;

    invoke-direct {v1, p1}, Lamy;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 215
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Ljgm;

    invoke-direct {v1, p0}, Ljgm;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 222
    return-void
.end method

.method public a(Ljdx;)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->K:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->Y:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->L:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->W:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->G:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->O:Landroid/widget/TextView;

    const-string v1, "nova"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    return-void
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 269
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Ljgp;

    invoke-direct {v2, p0}, Ljgp;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V

    .line 284
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

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->z:Landroid/app/DatePickerDialog;

    .line 285
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 287
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->z:Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 288
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->z:Landroid/app/DatePickerDialog;

    const v1, 0x7f0906dd

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method

.method public b(Ljdx;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->J:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->K:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->P:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->R:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->S:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->T:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-virtual {v0, v3}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->x:Lcom/santander/app/components/view/ValorResgateButton;

    const v1, 0x7f0901af

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->x:Lcom/santander/app/components/view/ValorResgateButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setTextViewValor(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    const v1, 0x7f0901b0

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {p1}, Ljdx;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setTextViewValor(Ljava/lang/String;)V

    .line 385
    iget-boolean v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ac:Z

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    invoke-virtual {v1}, Lcom/santander/app/components/view/ValorResgateButton;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->y:Lcom/santander/app/components/view/ValorResgateButton;

    new-instance v1, Ljgq;

    invoke-direct {v1, p0}, Ljgq;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->x:Lcom/santander/app/components/view/ValorResgateButton;

    new-instance v1, Ljgr;

    invoke-direct {v1, p0}, Ljgr;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ValorResgateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public c(Ljdx;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->K:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->Y:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->L:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->O:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->W:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdx;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->G:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 418
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ag:Ljava/lang/String;

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->h(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljdx;->i(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    iget-boolean v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ab:Z

    invoke-virtual {v0, v1}, Ljdx;->b(Z)V

    .line 326
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->aa:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->j(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->aa:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->H(Ljava/lang/String;)V

    .line 329
    sget-object v0, Ljgj;->a:[I

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    invoke-virtual {v1}, Ljdx;->t()Ljdk;

    move-result-object v1

    invoke-virtual {v1}, Ljdk;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->g()V

    .line 347
    return-void

    .line 331
    :pswitch_0
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ad:Ljdx;

    invoke-virtual {v1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :pswitch_1
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    const-string v1, "000000000"

    invoke-virtual {v0, v1}, Ljdx;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_2
    iget-boolean v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ac:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    const v1, 0x7f0906cb

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->e(Ljava/lang/String;)V

    .line 343
    :goto_1
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ad:Ljdx;

    invoke-virtual {v1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    const v1, 0x7f0906c9

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public e()V
    .locals 6

    .prologue
    .line 422
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->i:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 423
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 425
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 427
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 429
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 430
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 435
    const v3, 0x7f09017d

    invoke-virtual {p0, v3}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 436
    new-instance v4, Ljgh;

    invoke-direct {v4, p0, v1}, Ljgh;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;Landroid/app/Dialog;)V

    .line 444
    const v0, 0x7f09016a

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 445
    new-instance v5, Ljgi;

    invoke-direct {v5, p0, v1}, Ljgi;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;Landroid/app/Dialog;)V

    .line 452
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->i:Landroid/app/Activity;

    const v2, 0x7f090acb

    invoke-virtual {p0, v2}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09078f

    invoke-virtual {p0, v3}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 454
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 515
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 516
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 517
    const-string v0, "conta_fundo_selecionada"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    const-string v0, "conta_fundo_selecionada"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljdx;

    .line 519
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->b:Ljin;

    invoke-interface {v1, v0}, Ljin;->b(Ljdx;)V

    .line 522
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f04006a

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fundos_detalhes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljdx;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    .line 105
    sget-object v0, Ljgj;->a:[I

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    invoke-virtual {v1}, Ljdx;->t()Ljdk;

    move-result-object v1

    invoke-virtual {v1}, Ljdk;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->f()V

    .line 119
    new-instance v0, Ljio;

    invoke-direct {v0, p0}, Ljio;-><init>(Ljgs;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->b:Ljin;

    .line 120
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->b:Ljin;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->H:Ljdx;

    invoke-interface {v0, v1}, Ljin;->a(Ljdx;)V

    .line 121
    return-void

    .line 108
    :pswitch_0
    const v0, 0x7f090636

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c(I)V

    .line 109
    const-string v0, "Investimentos_Fundos_Aplicar_Acao"

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ag:Ljava/lang/String;

    .line 110
    const-string v0, "Fundos_Aplicar"

    const-string v1, "Investimentos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_1
    const v0, 0x7f0906ca

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c(I)V

    .line 114
    const-string v0, "Investimentos_Fundos_Resgate_Acao"

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->ag:Ljava/lang/String;

    .line 115
    const-string v0, "Fundos_Resgatar"

    const-string v1, "Investimentos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
