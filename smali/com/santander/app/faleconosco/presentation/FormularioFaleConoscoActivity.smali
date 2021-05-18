.class public Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Liam;


# instance fields
.field private A:Landroid/widget/RelativeLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/app/Dialog;

.field private D:Liav;

.field private E:Landroid/app/Activity;

.field private F:Libo;

.field private G:Lhzt;

.field private H:Lhze;

.field private I:Z

.field private J:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private K:Lghu;

.field private L:Landroid/widget/RelativeLayout;

.field private M:Landroid/widget/RelativeLayout;

.field private N:Lhzp;

.field private O:Lcom/santander/app/components/view/ClickToSelectEditText;

.field private P:Lhze;

.field private Q:Lcom/santander/app/components/view/ClickToSelectEditText;

.field private R:Landroid/support/design/widget/TextInputLayout;

.field private S:Lhzp;

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/EditText;

.field private y:Landroid/widget/EditText;

.field private z:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->I:Z

    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->O:Lcom/santander/app/components/view/ClickToSelectEditText;

    new-instance v1, Lian;

    invoke-direct {v1, p0}, Lian;-><init>(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setOnItemSelectedListener(Lgpd;)V

    .line 215
    return-void
.end method

.method private G()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    new-instance v1, Liao;

    invoke-direct {v1, p0}, Liao;-><init>(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setOnItemSelectedListener(Lgpd;)V

    .line 235
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Lghu;)Lghu;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->K:Lghu;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Lhze;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->P:Lhze;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Lhze;)Lhze;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->P:Lhze;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Lhzp;)Lhzp;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->S:Lhzp;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->I:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Lhze;)Lhze;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->H:Lhze;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;Lhzp;)Lhzp;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->N:Lhzp;

    return-object p1
.end method

.method public static synthetic c(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Lhze;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->H:Lhze;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Libo;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->F:Libo;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Lhzp;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->S:Lhzp;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Liav;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->D:Liav;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Lhzp;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->N:Lhzp;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->E:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->F:Libo;

    invoke-virtual {v0}, Libo;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method B()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 243
    new-instance v0, Liap;

    invoke-direct {v0, p0}, Liap;-><init>(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)V

    return-object v0
.end method

.method C()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 253
    new-instance v0, Liaq;

    invoke-direct {v0, p0}, Liaq;-><init>(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)V

    return-object v0
.end method

.method public D()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 301
    new-instance v0, Liar;

    invoke-direct {v0, p0}, Liar;-><init>(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)V

    return-object v0
.end method

.method public E()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->O:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    return-void
.end method

.method public a()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    .line 123
    const v0, 0x7f100c52

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->a:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f100c51

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->b:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f100c18

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->c:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f10049f

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->d:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->J:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 128
    const v0, 0x7f100c28

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->A:Landroid/widget/RelativeLayout;

    .line 129
    const v0, 0x7f100c26

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->g:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f100c27

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->e:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f100c1d

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->x:Landroid/widget/EditText;

    .line 132
    const v0, 0x7f100c1f

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->y:Landroid/widget/EditText;

    .line 133
    const v0, 0x7f100c24

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->z:Landroid/widget/EditText;

    .line 134
    const v0, 0x7f100c2b

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->f:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f100c2c

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->B:Landroid/widget/LinearLayout;

    .line 136
    const v0, 0x7f100acd

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->w:Landroid/widget/Button;

    .line 137
    const v0, 0x7f10090a

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->L:Landroid/widget/RelativeLayout;

    .line 138
    const v0, 0x7f10090b

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->M:Landroid/widget/RelativeLayout;

    .line 140
    const v0, 0x7f100c21

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/ClickToSelectEditText;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    .line 141
    const v0, 0x7f100c20

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->R:Landroid/support/design/widget/TextInputLayout;

    .line 143
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->F:Libo;

    invoke-virtual {v1}, Libo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->F:Libo;

    invoke-virtual {v2}, Libo;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->x:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->x:Landroid/widget/EditText;

    invoke-static {v1}, Lnar;->a(Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->D:Liav;

    iget-object v1, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->F:Libo;

    invoke-virtual {v1}, Libo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Liav;->a(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->w:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->B()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->C()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->D:Liav;

    invoke-interface {v1}, Liav;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->z:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->D()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    const v0, 0x7f100477

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/ClickToSelectEditText;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->O:Lcom/santander/app/components/view/ClickToSelectEditText;

    .line 160
    invoke-direct {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->F()V

    .line 162
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->D:Liav;

    invoke-interface {v0}, Liav;->g()V

    .line 164
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->G()V

    .line 167
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 263
    const-string v0, "Alerta"

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-static {p0, v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 264
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhze;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->O:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setItems(Ljava/util/List;)V

    .line 220
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 268
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 269
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhzp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setItems(Ljava/util/List;)V

    .line 240
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 273
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->C:Landroid/app/Dialog;

    .line 274
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->C:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->C:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->C:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 280
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->C:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->C:Landroid/app/Dialog;

    .line 283
    :cond_0
    return-void
.end method

.method public e()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->E:Landroid/app/Activity;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->F:Libo;

    invoke-virtual {v0}, Libo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lhze;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->H:Lhze;

    return-object v0
.end method

.method public h_()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->B:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public n()Libo;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->F:Libo;

    return-object v0
.end method

.method public o()Lhzt;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->G:Lhzt;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 350
    if-eqz p3, :cond_0

    .line 351
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->D:Liav;

    invoke-interface {v0, p1, p1, p3, p0}, Liav;->a(IILandroid/content/Intent;Landroid/content/Context;)V

    .line 353
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Anexos ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->D:Liav;

    invoke-interface {v2}, Liav;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f0401d9

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "faq_motivo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Libo;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->F:Libo;

    .line 105
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "verificar_sistema_response"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhzt;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->G:Lhzt;

    .line 107
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020620

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 110
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 115
    new-instance v0, Liaw;

    invoke-direct {v0, p0}, Liaw;-><init>(Liam;)V

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->D:Liav;

    .line 116
    iput-object p0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->E:Landroid/app/Activity;

    .line 118
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->a()V

    .line 119
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 172
    const v1, 0x7f120009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 173
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 192
    invoke-super {p0, p1}, Lgrs;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 182
    :sswitch_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->setResult(I)V

    .line 183
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    invoke-virtual {p0, v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 188
    :sswitch_1
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->onBackPressed()V

    goto :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f101208 -> :sswitch_0
    .end sparse-switch
.end method

.method public p()Lhzp;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->N:Lhzp;

    return-object v0
.end method

.method public q()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->z:Landroid/widget/EditText;

    return-object v0
.end method

.method public r()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public s()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->A:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public t()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public u()Landroid/content/Context;
    .locals 0

    .prologue
    .line 424
    return-object p0
.end method

.method public v()Lghu;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->K:Lghu;

    return-object v0
.end method

.method public w()V
    .locals 2

    .prologue
    .line 379
    invoke-static {}, Lgmy;->g()Lamy;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->J:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-virtual {v1, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 381
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->J:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lias;

    invoke-direct {v1, p0}, Lias;-><init>(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 387
    return-void
.end method

.method public x()Lcom/santander/app/components/view/ClickToSelectEditText;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->O:Lcom/santander/app/components/view/ClickToSelectEditText;

    return-object v0
.end method

.method public y()Lcom/santander/app/components/view/ClickToSelectEditText;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    return-object v0
.end method

.method public z()Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->R:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method
