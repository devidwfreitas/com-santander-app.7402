.class public Ljtd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljtb;


# instance fields
.field private a:Lmip;

.field private b:Ljwi;

.field private c:Ljtc;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljtc;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljwj;

    invoke-direct {v0, p1}, Ljwj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ljtd;->b:Ljwi;

    .line 37
    iput-object p2, p0, Ljtd;->c:Ljtc;

    .line 38
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljtd;->a:Lmip;

    .line 39
    iput-object p1, p0, Ljtd;->d:Landroid/app/Activity;

    .line 40
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 92
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_1

    .line 93
    invoke-virtual {v0}, Lgku;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-nez p3, :cond_0

    .line 94
    invoke-virtual {v0}, Lgku;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 95
    :cond_2
    invoke-virtual {v0}, Lgku;->c()Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Ljtd;)Ljtc;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ljtd;->c:Ljtc;

    return-object v0
.end method

.method private b(Ljsr;Ljsp;)Ljsq;
    .locals 8

    .prologue
    const/16 v7, 0xb

    .line 62
    new-instance v2, Ljsq;

    invoke-direct {v2}, Ljsq;-><init>()V

    .line 63
    invoke-virtual {p1}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "CNPJ/CPF "

    const-string v3, "B"

    invoke-direct {p0, v0, v1, v3}, Ljtd;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v3, ""

    .line 64
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v0

    const-string v3, "Benefici\u00e1rio"

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Ljtd;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {p2}, Ljsp;->c()Ljava/util/Calendar;

    move-result-object v4

    .line 67
    invoke-virtual {p1}, Ljsr;->q()Ljava/lang/String;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 70
    const-string v6, "yyyyMMdd"

    invoke-static {v0, v6}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 71
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "01"

    :goto_0
    invoke-virtual {v2, v0}, Ljsq;->h(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Ljsq;->h()Ljava/lang/String;

    move-result-object v0

    const-string v5, "00"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v2, v0}, Ljsq;->f(Ljava/lang/String;)V

    .line 77
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 78
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 79
    const/4 v0, 0x2

    invoke-virtual {p2}, Ljsp;->a()I

    move-result v4

    invoke-virtual {v5, v0, v4}, Ljava/util/Calendar;->add(II)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v7, :cond_3

    const-string v0, "13"

    :goto_3
    invoke-virtual {v2, v0}, Ljsq;->a(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v7, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "000"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljsq;->b(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2, v3}, Ljsq;->c(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljsq;->g(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Ljsp;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Laep;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljsq;->d(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljsq;->e(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Ljsq;->i()V

    .line 87
    return-object v2

    .line 71
    :cond_0
    const-string v0, "00"

    goto/16 :goto_0

    .line 72
    :cond_1
    const-string v0, "2"

    goto :goto_1

    .line 74
    :cond_2
    const-string v0, "00"

    invoke-virtual {v2, v0}, Ljsq;->h(Ljava/lang/String;)V

    .line 75
    const-string v0, "1"

    invoke-virtual {v2, v0}, Ljsq;->f(Ljava/lang/String;)V

    goto :goto_2

    .line 80
    :cond_3
    const-string v0, "14"

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 81
    goto :goto_4
.end method


# virtual methods
.method public a(Ljsr;Ljsp;)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Ljtd;->b:Ljwi;

    new-instance v1, Ljte;

    invoke-direct {v1, p0}, Ljte;-><init>(Ljtd;)V

    .line 58
    invoke-direct {p0, p1, p2}, Ljtd;->b(Ljsr;Ljsp;)Ljsq;

    move-result-object v2

    .line 44
    invoke-interface {v0, v1, v2}, Ljwi;->a(Lgkw;Ljsq;)V

    .line 59
    return-void
.end method
