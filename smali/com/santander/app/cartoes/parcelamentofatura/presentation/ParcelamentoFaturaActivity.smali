.class public Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lgji;


# static fields
.field private static final a:Ljava/lang/String; = "ParcelamentoFaturaActivity"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:I

.field private E:Lghv;

.field private F:Lghw;

.field private G:Landroid/widget/Button;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private b:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private c:Lghu;

.field private d:Lgjl;

.field private e:Landroid/widget/Spinner;

.field private f:Landroid/widget/Spinner;

.field private g:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/EditText;

.field private y:Lguj;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->J:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->K:Z

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->D:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->x:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;Lghu;)Lghu;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->c:Lghu;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;Lgjl;)Lgjl;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->d:Lgjl;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->I:Z

    return p1
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iput-boolean v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->I:Z

    .line 86
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->H:Z

    .line 88
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->b:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 89
    const v0, 0x7f100cfe

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->e:Landroid/widget/Spinner;

    .line 90
    const v0, 0x7f100d06

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->f:Landroid/widget/Spinner;

    .line 91
    const v0, 0x7f100d03

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->w:Landroid/widget/RelativeLayout;

    .line 92
    const v0, 0x7f100cff

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->g:Landroid/widget/RelativeLayout;

    .line 93
    const v0, 0x7f100d02

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->x:Landroid/widget/EditText;

    .line 94
    const v0, 0x7f100b65

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->z:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f100cf6

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->A:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f100cf8

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->B:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f100cfa

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->C:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f100cf0

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->G:Landroid/widget/Button;

    .line 100
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->y:Lguj;

    .line 101
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->y:Lguj;

    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 102
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->x:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->y:Lguj;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->x:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->x:Landroid/widget/EditText;

    new-instance v1, Lgis;

    invoke-direct {v1, p0}, Lgis;-><init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 119
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->G:Landroid/widget/Button;

    new-instance v1, Lgit;

    invoke-direct {v1, p0}, Lgit;-><init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "indexCartao"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->D:I

    .line 151
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->e()V

    .line 158
    :goto_1
    return-void

    .line 148
    :cond_0
    iput v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->D:I

    goto :goto_0

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->d()V

    goto :goto_1
.end method

.method public static synthetic b(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->H:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 298
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghw;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->F:Lghw;

    return-object v0
.end method

.method private c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgif;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->f:Landroid/widget/Spinner;

    new-instance v1, Lgix;

    invoke-direct {v1, p0, p1}, Lgix;-><init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->J:Z

    .line 324
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04037d

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 325
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 326
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->A()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic d(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghv;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->E:Lghv;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lgjm;

    invoke-direct {v0, p0}, Lgjm;-><init>(Lgji;)V

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->d:Lgjl;

    .line 166
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->d:Lgjl;

    invoke-interface {v0}, Lgjl;->a()V

    .line 167
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->d:Lgjl;

    invoke-interface {v0}, Lgjl;->b()V

    .line 168
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghu;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->c:Lghu;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 171
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->t()Lgke;

    move-result-object v1

    new-instance v2, Lgiu;

    invoke-direct {v2, p0, v0}, Lgiu;-><init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;Landroid/app/Dialog;)V

    invoke-interface {v1, v2}, Lgke;->a(Lfoh;)V

    .line 181
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lgjl;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->d:Lgjl;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 377
    const v0, 0x7f100cef

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->K:Z

    .line 379
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 382
    const v0, 0x7f100cef

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iput-boolean v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->K:Z

    .line 384
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->I:Z

    return v0
.end method

.method public static synthetic h(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->f:Landroid/widget/Spinner;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->d()V

    return-void
.end method

.method public static synthetic j(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->K:Z

    return v0
.end method

.method public static synthetic k(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->g()V

    return-void
.end method

.method public static synthetic l(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->w:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic m(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->g:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic n(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->J:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 352
    const-string v0, "Cartoes_ParcelamentoDeFatura_ParcelamentoFixas_ValorDaPrimeiraParcela"

    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgif;

    .line 355
    const-string v1, "true"

    invoke-virtual {v0, v1}, Lgif;->b(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 359
    if-lez v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->F:Lghw;

    const-string v2, "P"

    invoke-virtual {v1, v2}, Lghw;->o(Ljava/lang/String;)V

    .line 365
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    const-string v2, "calculoParcelarFatura"

    iget-object v3, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->F:Lghw;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 368
    const-string v2, "parcelaSelecionada"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 369
    const-string v0, "cartaoSelecionado"

    iget-object v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->c:Lghu;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->startActivity(Landroid/content/Intent;)V

    .line 374
    return-void

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->F:Lghw;

    const-string v2, "T"

    invoke-virtual {v1, v2}, Lghw;->o(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lghv;)V
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Lghv;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->A:Landroid/widget/TextView;

    invoke-virtual {p1}, Lghv;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p1}, Lghv;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    const-string v3, "###,###,##0.0000"

    invoke-static {v1, v2, v3}, Lnaj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p1}, Lghv;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p1}, Lghv;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->c(Ljava/util/List;)V

    .line 268
    invoke-virtual {p1}, Lghv;->t()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->x:Landroid/widget/EditText;

    invoke-virtual {p1}, Lghv;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_0
    iput-object p1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->E:Lghv;

    .line 273
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->G:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 274
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->x:Landroid/widget/EditText;

    invoke-virtual {p1}, Lghv;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Lghw;)V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Lghw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->A:Landroid/widget/TextView;

    invoke-virtual {p1}, Lghw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p1}, Lghw;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    const-string v3, "###,###,##0.0000"

    invoke-static {v1, v2, v3}, Lnaj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p1}, Lghw;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p1}, Lghw;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->c(Ljava/util/List;)V

    .line 286
    invoke-virtual {p1}, Lghw;->t()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->x:Landroid/widget/EditText;

    invoke-virtual {p1}, Lghw;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :goto_0
    iput-object p1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->F:Lghw;

    .line 293
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->G:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 294
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->x:Landroid/widget/EditText;

    invoke-virtual {p1}, Lghw;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Lgig;)V
    .locals 3

    .prologue
    .line 339
    const-string v0, "Cartoes_ParcelamentoDeFatura_ParcelamentoFixas_Acao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lgig;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgig;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, "Cartoes_ParcelamentoDeFatura_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    const-string v1, "parcelarFatura"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->startActivity(Landroid/content/Intent;)V

    .line 347
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->f()V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->I:Z

    .line 332
    invoke-static {p0, p1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->D:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->c:Lghu;

    .line 186
    invoke-static {}, Lgmy;->c()Ljava/util/List;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->b:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v2, Lamy;

    invoke-direct {v2, v0}, Lamy;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 189
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->b:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v2, Lgiv;

    invoke-direct {v2, p0, v0}, Lgiv;-><init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 211
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->b:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iget v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->D:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setCurrentItem(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04037d

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 218
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 220
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->e:Landroid/widget/Spinner;

    new-instance v1, Lgiw;

    invoke-direct {v1, p0}, Lgiw;-><init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 256
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f040340

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->setContentView(I)V

    .line 78
    const-string v0, "Parcelamento de Fatura"

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->c(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->b()V

    .line 80
    return-void
.end method
