.class public Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lgfr;


# instance fields
.field private a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private b:Lcom/santander/app/contacorrente/domain/Conta;

.field private c:Lggh;

.field private d:Landroid/app/DatePickerDialog;

.field private e:Ljava/util/Calendar;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/support/v7/widget/RecyclerView;

.field private y:Landroid/widget/TextView;

.field private z:Lggc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Landroid/app/DatePickerDialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->d:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->b:Lcom/santander/app/contacorrente/domain/Conta;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->e:Ljava/util/Calendar;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;Lgfg;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->a(Lgfg;)V

    return-void
.end method

.method private a(Lgfg;)V
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lgfq;->a:[I

    invoke-virtual {p1}, Lgfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 225
    :pswitch_0
    const-string v0, "Investimentos_CarteiraDiaria_PosicaoConsolidada_Acao"

    const-string v1, "Fundos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :pswitch_1
    const-string v0, "Investimentos_CarteiraDiaria_PosicaoConsolidada_Acao"

    const-string v1, "RendaFixa"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :pswitch_2
    const-string v0, "Investimentos_CarteiraDiaria_PosicaoConsolidada_Acao"

    const-string v1, "RendaVariave"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :pswitch_3
    const-string v0, "Investimentos_CarteiraDiaria_PosicaoConsolidada_Acao"

    const-string v1, "Derivativos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_4
    const-string v0, "Investimentos_CarteiraDiaria_PosicaoConsolidada_Acao"

    const-string v1, "ContasAPagarReceber"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static synthetic b(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->b:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 80
    const v0, 0x7f100c7c

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->g:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lgfm;

    invoke-direct {v1, p0}, Lgfm;-><init>(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f100c7d

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->w:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->w:Landroid/widget/TextView;

    invoke-static {v3}, Lnak;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v0, 0x7f100c7f

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->y:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f100c80

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->x:Landroid/support/v7/widget/RecyclerView;

    .line 92
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 93
    iget-object v1, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->x:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->f:Ljava/lang/String;

    .line 97
    invoke-static {v3}, Lnak;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->f:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private c()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lgfp;

    invoke-direct {v0, p0}, Lgfp;-><init>(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Lggh;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->c:Lggh;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->e:Ljava/util/Calendar;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 116
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lgfo;

    invoke-direct {v2, p0}, Lgfo;-><init>(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)V

    .line 130
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

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->d:Landroid/app/DatePickerDialog;

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 135
    const/4 v1, 0x0

    .line 137
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lnak;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    :goto_0
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->d:Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->d:Landroid/app/DatePickerDialog;

    const v1, 0x7f0906dd

    invoke-virtual {p0, v1}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lger;)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lger;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v0, Lggc;

    iget-object v1, p1, Lger;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->c()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lggc;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->z:Lggc;

    .line 150
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->x:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->z:Lggc;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 152
    invoke-virtual {p1}, Lger;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p1}, Lger;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->y:Landroid/widget/TextView;

    const-string v1, "R$ 0,00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->z:Lggc;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->z:Lggc;

    invoke-virtual {v0}, Lggc;->a()V

    .line 207
    :cond_0
    invoke-virtual {p0, p1}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->b(Ljava/lang/String;)V

    .line 208
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
    .line 102
    new-instance v0, Lamy;

    invoke-direct {v0, p1}, Lamy;-><init>(Ljava/util/List;)V

    .line 103
    iget-object v1, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-virtual {v1, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 104
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lgfn;

    invoke-direct {v1, p0}, Lgfn;-><init>(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 112
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->i:Landroid/app/Activity;

    invoke-static {v0, p1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 213
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f090649

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->c(I)V

    .line 70
    invoke-direct {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->b()V

    .line 72
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmir;->b(Z)V

    .line 74
    new-instance v0, Lggi;

    invoke-direct {v0, p0}, Lggi;-><init>(Lgfr;)V

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->c:Lggh;

    .line 75
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->a()V

    .line 76
    return-void
.end method
