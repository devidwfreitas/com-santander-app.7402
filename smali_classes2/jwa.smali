.class public Ljwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljto;
.implements Ljvz;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljvc;

.field private c:Ljtn;

.field private d:Ljsr;

.field private e:Lcom/santander/app/contacorrente/domain/Conta;

.field private f:Lghu;

.field private g:Ljava/lang/Object;

.field private h:Lmip;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljsr;Ljvc;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ljwa;->a:Landroid/app/Activity;

    .line 49
    iput-object p3, p0, Ljwa;->b:Ljvc;

    .line 50
    iput-object p2, p0, Ljwa;->d:Ljsr;

    .line 51
    new-instance v0, Ljtp;

    iget-object v1, p0, Ljwa;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p2, p0}, Ljtp;-><init>(Landroid/app/Activity;Ljsr;Ljto;)V

    iput-object v0, p0, Ljwa;->c:Ljtn;

    .line 52
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljwa;->h:Lmip;

    .line 53
    return-void
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 116
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    .line 120
    :cond_1
    :goto_0
    return v0

    .line 119
    :cond_2
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 120
    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private a(Ljsr;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p1}, Ljsr;->q()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 91
    const-string v2, "yyyyMMdd"

    invoke-static {v0, v2}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 93
    const-string v2, "dd/MM/yyyy"

    invoke-static {p2, v2}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 97
    :goto_0
    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-class v1, Ljwa;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x7

    .line 124
    .line 125
    invoke-direct {p0, p1, p2}, Ljwa;->a(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    move v1, v0

    .line 126
    :goto_0
    if-ge v1, v2, :cond_1

    .line 127
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 130
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    return v0
.end method

.method private b(Ljsr;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 103
    :try_start_0
    invoke-virtual {p1}, Ljsr;->q()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 105
    const-string v3, "yyyyMMdd"

    invoke-static {v1, v3}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 107
    const-string v3, "dd/MM/yyyy"

    invoke-static {p2, v3}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 108
    invoke-direct {p0, v1, v2}, Ljwa;->b(Ljava/util/Calendar;Ljava/util/Calendar;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x15

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    const-class v2, Ljwa;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Ljss;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Ljwa;->e:Lcom/santander/app/contacorrente/domain/Conta;

    if-nez v1, :cond_0

    iget-object v1, p0, Ljwa;->f:Lghu;

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Ljwa;->b:Ljvc;

    iget-object v2, p0, Ljwa;->a:Landroid/app/Activity;

    const v3, 0x7f090790

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljvc;->a(Ljava/lang/String;)V

    .line 217
    :goto_0
    return v0

    .line 212
    :cond_0
    invoke-virtual {p1}, Ljss;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "R$ 0,00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Ljwa;->b:Ljvc;

    iget-object v2, p0, Ljwa;->a:Landroid/app/Activity;

    const v3, 0x7f0907bb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljvc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljsr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 67
    invoke-static {p2}, Lmzt;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 68
    :goto_0
    invoke-static {p3}, Lmzt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "R$ 0,00"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-wide v2, v4

    .line 69
    :goto_1
    invoke-direct {p0, p1, p4}, Ljwa;->a(Ljsr;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    const-string v0, "Data de agendamento deve ser anterior ou igual a data de vencimento."

    .line 84
    :goto_2
    return-object v0

    .line 67
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 68
    :cond_2
    const-string v1, "R$ "

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_1

    .line 72
    :cond_3
    invoke-direct {p0, p1, p4}, Ljwa;->b(Ljsr;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    const-string v0, "Antecipa\u00e7\u00e3o deve ser menor ou igual a 21 dias \u00fateis."

    goto :goto_2

    .line 75
    :cond_4
    if-nez v0, :cond_5

    cmpl-double v1, v2, v4

    if-nez v1, :cond_5

    .line 76
    const-string v0, "Favor preencher quantidade de meses e valor m\u00e1ximo do pagamento."

    goto :goto_2

    .line 78
    :cond_5
    if-nez v0, :cond_6

    .line 79
    const-string v0, "N\u00famero de meses recorrentes deve ser maior que zero."

    goto :goto_2

    .line 81
    :cond_6
    cmpl-double v0, v2, v4

    if-nez v0, :cond_7

    .line 82
    const-string v0, "Valor m\u00e1ximo deve ser maior que R$ 0,00."

    goto :goto_2

    .line 84
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public a(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lguj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lguj;-><init>(Z)V

    .line 168
    invoke-virtual {v0, p1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 169
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    return-void
.end method

.method public a(Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 1

    .prologue
    .line 174
    iput-object p1, p0, Ljwa;->e:Lcom/santander/app/contacorrente/domain/Conta;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Ljwa;->f:Lghu;

    .line 176
    return-void
.end method

.method public a(Lghu;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Ljwa;->f:Lghu;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Ljwa;->e:Lcom/santander/app/contacorrente/domain/Conta;

    .line 182
    iget-object v0, p0, Ljwa;->b:Ljvc;

    invoke-interface {v0}, Ljvc;->b()V

    .line 183
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Ljwa;->g:Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-static {p1}, Lgmy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    invoke-static {p2}, Lgmy;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v1, p0, Ljwa;->b:Ljvc;

    invoke-interface {v1, v0}, Ljvc;->a(Ljava/util/List;)V

    .line 141
    iget-object v0, p0, Ljwa;->b:Ljvc;

    invoke-interface {v0}, Ljvc;->e()V

    .line 142
    return-void
.end method

.method public a(Ljsr;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ljwa;->b:Ljvc;

    invoke-interface {v0, p1}, Ljvc;->a(Ljsr;)V

    .line 152
    return-void
.end method

.method public a(Ljss;)V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0, p1}, Ljwa;->b(Ljss;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Ljwa;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Ljwa;->e:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->setConta(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Ljwa;->e:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->setAgencia(Ljava/lang/String;)V

    .line 201
    :goto_0
    iget-object v0, p0, Ljwa;->c:Ljtn;

    invoke-interface {v0, p1}, Ljtn;->a(Ljss;)V

    .line 203
    :cond_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Ljwa;->f:Lghu;

    invoke-virtual {v0}, Lghu;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->a(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Ljwa;->h:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->setAgencia(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Ljwa;->h:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->setConta(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Ljwa;->d()V

    .line 58
    return-void
.end method

.method public b(Ljsr;)V
    .locals 3

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Ljsr;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Ljwa;->b:Ljvc;

    invoke-virtual {p1}, Ljsr;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljvc;->a(Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Ljwa;->b:Ljvc;

    iget-object v1, p0, Ljwa;->a:Landroid/app/Activity;

    const v2, 0x7f09043f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljvc;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Ljwa;->e:Lcom/santander/app/contacorrente/domain/Conta;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ljwa;->c:Ljtn;

    invoke-interface {v0}, Ljtn;->c()V

    .line 63
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Ljwa;->g:Ljava/lang/Object;

    return-object v0
.end method
