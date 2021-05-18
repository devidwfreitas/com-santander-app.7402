.class public Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lmok;


# static fields
.field private static final a:Ljava/lang/String; = "FormaTransferenciaActivity"

.field private static final b:Ljava/lang/String; = "TED"

.field private static final c:Ljava/lang/String; = "DOC"

.field private static final d:Ljava/lang/String; = "TEF"

.field private static final e:Ljava/lang/String; = "0033"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/ImageButton;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/CheckBox;

.field private G:Lcom/santander/app/components/view/DateCircleButton;

.field private H:Lcom/santander/app/components/view/DateCircleButton;

.field private I:Landroid/widget/Spinner;

.field private J:Landroid/widget/Button;

.field private K:Landroid/widget/LinearLayout;

.field private L:Landroid/widget/LinearLayout;

.field private M:Lmpw;

.field private N:Lmlo;

.field private O:Landroid/app/DatePickerDialog;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/Double;

.field private T:Landroid/app/AlertDialog;

.field private U:Ljava/util/Calendar;

.field private f:Landroid/app/Activity;

.field private g:Landroid/widget/ScrollView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 61
    iput-object p0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->f:Landroid/app/Activity;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->T:Landroid/app/AlertDialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->F:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->P:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->U:Ljava/util/Calendar;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->K:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lcom/santander/app/components/view/DateCircleButton;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lcom/santander/app/components/view/DateCircleButton;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->g:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lmlo;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->n()V

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "transferencia"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmlo;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    .line 113
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0}, Lmlo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->S:Ljava/lang/Double;

    .line 115
    const v0, 0x7f100bfe

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->x:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f100c00

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->w:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f100c03

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->y:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f100c04

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->z:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f100c05

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->A:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f100c07

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->B:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f100b00

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->C:Landroid/widget/ImageButton;

    .line 122
    const v0, 0x7f100c0d

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->D:Landroid/widget/Button;

    .line 123
    const v0, 0x7f100c0e

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->E:Landroid/widget/Button;

    .line 124
    const v0, 0x7f100c13

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->K:Landroid/widget/LinearLayout;

    .line 125
    const v0, 0x7f100c12

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->F:Landroid/widget/CheckBox;

    .line 126
    const v0, 0x7f100c14

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->I:Landroid/widget/Spinner;

    .line 127
    const v0, 0x7f100c15

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->J:Landroid/widget/Button;

    .line 128
    const v0, 0x7f100bfa

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->g:Landroid/widget/ScrollView;

    .line 129
    const v0, 0x7f100c11

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->L:Landroid/widget/LinearLayout;

    .line 131
    const v0, 0x7f100c0f

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/DateCircleButton;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    .line 132
    const v0, 0x7f100c10

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/DateCircleButton;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    .line 134
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/santander/app/components/view/DateCircleButton;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/santander/app/components/view/DateCircleButton;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 138
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04039f

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->I:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 141
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->p()V

    .line 143
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->F:Landroid/widget/CheckBox;

    new-instance v1, Lmnx;

    invoke-direct {v1, p0}, Lmnx;-><init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->D:Landroid/widget/Button;

    new-instance v1, Lmoc;

    invoke-direct {v1, p0}, Lmoc;-><init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->E:Landroid/widget/Button;

    new-instance v1, Lmod;

    invoke-direct {v1, p0}, Lmod;-><init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->C:Landroid/widget/ImageButton;

    new-instance v1, Lmoe;

    invoke-direct {v1, p0}, Lmoe;-><init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->J:Landroid/widget/Button;

    new-instance v1, Lmof;

    invoke-direct {v1, p0}, Lmof;-><init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    new-instance v0, Lmpx;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v2}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lmpx;-><init>(Landroid/app/Activity;Lmok;Lcom/santander/app/contacorrente/domain/Conta;)V

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->M:Lmpw;

    .line 229
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->k()V

    .line 230
    return-void
.end method

.method public static synthetic h(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->k()V

    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0}, Lmlo;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Lmlo;->e(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->I:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->I:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lmlo;->f(Ljava/lang/String;)V

    .line 240
    :cond_1
    return-void

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->I:Landroid/widget/Spinner;

    .line 238
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic i(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->o()V

    return-void
.end method

.method public static synthetic j(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->p()V

    return-void
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x7

    .line 292
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->U:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->U:Ljava/util/Calendar;

    .line 293
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->U:Ljava/util/Calendar;

    .line 294
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 292
    :goto_0
    return v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic k(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->I:Landroid/widget/Spinner;

    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->L:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 330
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 333
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 334
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 337
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0}, Lcom/santander/app/components/view/DateCircleButton;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dd/MM/yyyy"

    invoke-static {v0, v1}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    const-string v2, "yyyyMMdd"

    invoke-static {v0, v2}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlo;->d(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0, v3}, Lmlo;->a(Z)V

    .line 340
    return-void
.end method

.method public static synthetic l(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->i()V

    return-void
.end method

.method public static synthetic m(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lmpw;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->M:Lmpw;

    return-object v0
.end method

.method public static synthetic n(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->f:Landroid/app/Activity;

    return-object v0
.end method

.method private n()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 344
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 347
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 350
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setPressed(Z)V

    .line 351
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setBackgroundLinear(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 354
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    invoke-virtual {v0}, Lcom/santander/app/components/view/DateCircleButton;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dd/MM/yyyy"

    invoke-static {v0, v1}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    const-string v2, "yyyyMMdd"

    invoke-static {v0, v2}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlo;->d(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0}, Lmlo;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0, v3}, Lmlo;->a(Z)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0, v4}, Lmlo;->a(Z)V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->D:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 365
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->D:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->D:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 368
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->E:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 369
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->E:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->E:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 372
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    const-string v1, "DOC"

    invoke-virtual {v0, v1}, Lmlo;->c(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public static synthetic o(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->j()Z

    move-result v0

    return v0
.end method

.method public static synthetic p(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/app/DatePickerDialog;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->O:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->E:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 377
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->E:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->E:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 380
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->D:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 381
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->D:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->D:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 384
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    const-string v1, "TED"

    invoke-virtual {v0, v1}, Lmlo;->c(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public static synthetic q(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->U:Ljava/util/Calendar;

    return-object v0
.end method

.method public static synthetic r(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->P:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic s(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->T:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    const-string v1, "Transferir hoje"

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    invoke-static {}, Lnak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->G:Lcom/santander/app/components/view/DateCircleButton;

    new-instance v1, Lmog;

    invoke-direct {v1, p0}, Lmog;-><init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    const-string v1, "Agendar"

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->H:Lcom/santander/app/components/view/DateCircleButton;

    new-instance v1, Lmoh;

    invoke-direct {v1, p0}, Lmoh;-><init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 468
    invoke-static {p0, p1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public a(Lmkx;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 426
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0}, Lmlo;->b()Lmld;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->g()Ljava/lang/String;

    move-result-object v0

    .line 428
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limite de at\u00e9 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmkx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nEnviado no dia \u00fatil seguinte \u00e0 solicita\u00e7\u00e3o."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->Q:Ljava/lang/String;

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A partir de "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmkx;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nEnviado no  mesmo dia \u00fatil da solicita\u00e7\u00e3o, se realizado at\u00e9 as 17h00."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->R:Ljava/lang/String;

    .line 431
    const-string v1, "0033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    const-string v1, "TEF"

    invoke-virtual {v0, v1}, Lmlo;->c(Ljava/lang/String;)V

    .line 444
    :cond_0
    :goto_1
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0}, Lmlo;->c()Lmkw;

    move-result-object v0

    invoke-virtual {v0}, Lmkw;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {p1}, Lmkx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->S:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_0

    .line 437
    const v0, 0x7f100c0c

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    const v0, 0x7f100c0b

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 441
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->p()V

    goto :goto_1
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 269
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lmoi;

    invoke-direct {v2, p0}, Lmoi;-><init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

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

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->O:Landroid/app/DatePickerDialog;

    .line 285
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 287
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->O:Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 288
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->O:Landroid/app/DatePickerDialog;

    const-string v1, "Selecione a Data"

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 298
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 299
    const v0, 0x7f04017a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 300
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 301
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 304
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 305
    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 306
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 308
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 310
    const v0, 0x7f100757

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const v0, 0x7f100759

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->R:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const v0, 0x7f10075a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lmoj;

    invoke-direct {v2, p0, v1}, Lmoj;-><init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 322
    return-void
.end method

.method public d()V
    .locals 13

    .prologue
    const v12, 0x7f100c08

    const/16 v11, 0x8

    .line 390
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v6

    .line 391
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0}, Lmlo;->b()Lmld;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->e()Ljava/lang/String;

    move-result-object v0

    .line 392
    :goto_0
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v1}, Lmlo;->b()Lmld;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v1}, Lmlo;->b()Lmld;

    move-result-object v1

    invoke-virtual {v1}, Lmld;->g()Ljava/lang/String;

    move-result-object v1

    .line 393
    :goto_1
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v2}, Lmlo;->b()Lmld;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v2}, Lmlo;->b()Lmld;

    move-result-object v2

    invoke-virtual {v2}, Lmld;->i()Ljava/lang/String;

    move-result-object v2

    .line 394
    :goto_2
    iget-object v3, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v3}, Lmlo;->b()Lmld;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v3}, Lmlo;->b()Lmld;

    move-result-object v3

    invoke-virtual {v3}, Lmld;->h()Ljava/lang/String;

    move-result-object v3

    .line 395
    :goto_3
    iget-object v4, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v4}, Lmlo;->b()Lmld;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v4}, Lmlo;->b()Lmld;

    move-result-object v4

    invoke-virtual {v4}, Lmld;->k()Ljava/lang/String;

    move-result-object v4

    .line 396
    :goto_4
    iget-object v5, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v5}, Lmlo;->d()Ljava/lang/String;

    move-result-object v7

    .line 398
    const-string v5, "0033"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "Conta Santander "

    .line 399
    :goto_5
    iget-object v8, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->x:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v5, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/santander/app/contacorrente/domain/Conta;->getExtractoHome()Lfuy;

    move-result-object v6

    invoke-virtual {v6}, Lfuy;->u()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v5, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->B:Landroid/widget/TextView;

    invoke-static {v7}, Lnaj;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    if-eqz v0, :cond_7

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 404
    iget-object v5, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :goto_6
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->A:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ag: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - conta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lnaq;->l(Ljava/lang/String;)I

    move-result v3

    int-to-double v6, v3

    const-wide v8, 0x4040800000000000L    # 33.0

    cmpl-double v3, v6, v8

    if-nez v3, :cond_0

    invoke-static {v4}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    const-string v0, "0033"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 413
    invoke-virtual {p0, v12}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    :goto_7
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->J:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 422
    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0}, Lmlo;->c()Lmkw;

    move-result-object v0

    invoke-virtual {v0}, Lmkw;->h()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->c()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 393
    :cond_3
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v2}, Lmlo;->c()Lmkw;

    move-result-object v2

    invoke-virtual {v2}, Lmkw;->l()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 394
    :cond_4
    iget-object v3, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v3}, Lmlo;->c()Lmkw;

    move-result-object v3

    invoke-virtual {v3}, Lmkw;->d()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 395
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v5}, Lmlo;->c()Lmkw;

    move-result-object v5

    invoke-virtual {v5}, Lmkw;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v5}, Lmlo;->c()Lmkw;

    move-result-object v5

    invoke-virtual {v5}, Lmkw;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 398
    :cond_6
    const-string v5, ""

    goto/16 :goto_5

    .line 406
    :cond_7
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->y:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 415
    :cond_8
    invoke-virtual {p0, v12}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    const-string v1, "TEF"

    invoke-virtual {v0, v1}, Lmlo;->c(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public e()V
    .locals 4

    .prologue
    .line 449
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 450
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 451
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090694

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09018e

    new-instance v3, Lmob;

    invoke-direct {v3, p0}, Lmob;-><init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    .line 452
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090190

    new-instance v3, Lmoa;

    invoke-direct {v3, p0}, Lmoa;-><init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    .line 457
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 462
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->T:Landroid/app/AlertDialog;

    .line 463
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->T:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 464
    return-void
.end method

.method public f()Lmlo;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    return-object v0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 479
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->f:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    const-string v1, "transferencia"

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->N:Lmlo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->startActivity(Landroid/content/Intent;)V

    .line 482
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f040068

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 105
    const v1, 0x7f090b0d

    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->h()V

    .line 108
    return-void
.end method
