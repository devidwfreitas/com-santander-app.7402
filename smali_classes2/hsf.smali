.class Lhsf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/text/NumberFormat;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lhsf;->a:Ljava/text/NumberFormat;

    .line 25
    return-void
.end method

.method private a(Lhxr;Lhxr;)Z
    .locals 2

    .prologue
    .line 131
    invoke-interface {p2}, Lhxr;->getValorLimiteMax()F

    move-result v0

    invoke-interface {p1}, Lhxr;->getValorLimiteMax()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lhxr;Lhxr;F)Z
    .locals 2

    .prologue
    .line 125
    invoke-interface {p2}, Lhxr;->getValorLimiteMax()F

    move-result v0

    invoke-interface {p1}, Lhxr;->getValorLimiteMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 126
    invoke-interface {p2}, Lhxr;->getValorLimiteMax()F

    move-result v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lhxr;Lhxr;)Z
    .locals 2

    .prologue
    .line 144
    invoke-interface {p2}, Lhxr;->getValorLimiteMax()F

    move-result v0

    invoke-interface {p1}, Lhxr;->getValorLimiteMax()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 145
    invoke-interface {p2}, Lhxr;->getParcelaMax()I

    move-result v0

    invoke-interface {p1}, Lhxr;->getParcelaMax()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lhxr;Lhxr;F)Z
    .locals 2

    .prologue
    .line 137
    invoke-interface {p2}, Lhxr;->getValorLimiteMax()F

    move-result v0

    invoke-interface {p1}, Lhxr;->getValorLimiteMax()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 138
    invoke-interface {p2}, Lhxr;->getParcelaMax()I

    move-result v0

    invoke-interface {p1}, Lhxr;->getParcelaMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 139
    invoke-interface {p2}, Lhxr;->getParcelaMax()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Lhxr;Lhxr;FILhsh;)V
    .locals 10

    .prologue
    .line 33
    const-string v7, ""

    .line 34
    const-string v6, ""

    .line 35
    const-string v3, ""

    .line 36
    const-string v1, ""

    .line 42
    invoke-direct {p0, p2, p3, p4}, Lhsf;->a(Lhxr;Lhxr;F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v2, 0x1

    .line 44
    const/4 v0, 0x1

    .line 46
    invoke-interface {p3}, Lhxr;->getValorLimiteMax()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 47
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 49
    const-string v1, "Seu limite para oferta especial\n\u00e9 de %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lhsf;->a:Ljava/text/NumberFormat;

    .line 50
    invoke-interface {p3}, Lhxr;->getValorLimiteMax()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 49
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 51
    const-string v6, "Com qual valor deseja continuar?"

    .line 52
    iget-object v1, p0, Lhsf;->a:Ljava/text/NumberFormat;

    invoke-virtual {v1, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 53
    iget-object v1, p0, Lhsf;->a:Ljava/text/NumberFormat;

    invoke-virtual {v1, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v6

    move-object v9, v7

    move-object v6, v1

    move-object v7, v3

    .line 96
    :goto_0
    if-nez v0, :cond_4

    .line 97
    invoke-interface/range {p6 .. p6}, Lhsh;->a()V

    .line 120
    :goto_1
    return-void

    .line 54
    :cond_0
    int-to-float v0, p5

    invoke-direct {p0, p2, p3, v0}, Lhsf;->b(Lhxr;Lhxr;F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v0, 0x1

    .line 58
    invoke-interface {p3}, Lhxr;->getParcelaMax()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 59
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 61
    const-string v7, "Para oferta especial, quantidade das suas parcelas precisar\u00e1 ser recalculada"

    .line 62
    const-string v6, "Com qual quantidade de parcelas deseja continuar?"

    .line 63
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v6

    move-object v9, v7

    move-object v6, v1

    move-object v7, v3

    goto :goto_0

    .line 65
    :cond_1
    invoke-direct {p0, p2, p3}, Lhsf;->b(Lhxr;Lhxr;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v0, 0x1

    .line 69
    invoke-interface {p3}, Lhxr;->getParcelaMax()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 70
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 72
    const-string v1, "Para oferta especial, voc\u00ea conta com at\u00e9 %s parcelas a mais para pagar"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 73
    invoke-interface {p3}, Lhxr;->getParcelaMax()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 72
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 74
    const-string v6, "Com qual quantidade de parcelas deseja continuar?"

    .line 75
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v6

    move-object v9, v7

    move-object v6, v1

    move-object v7, v3

    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0, p2, p3}, Lhsf;->a(Lhxr;Lhxr;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const/4 v2, 0x1

    .line 79
    const/4 v0, 0x1

    .line 81
    invoke-interface {p3}, Lhxr;->getValorLimiteMax()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 82
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 84
    const-string v1, "Seu limite para oferta especial\n\u00e9 de %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lhsf;->a:Ljava/text/NumberFormat;

    .line 85
    invoke-interface {p3}, Lhxr;->getValorLimiteMax()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 84
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 86
    const-string v6, "Com qual valor deseja continuar?"

    .line 87
    iget-object v1, p0, Lhsf;->a:Ljava/text/NumberFormat;

    invoke-virtual {v1, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 88
    iget-object v1, p0, Lhsf;->a:Ljava/text/NumberFormat;

    invoke-virtual {v1, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v6

    move-object v9, v7

    move-object v6, v1

    move-object v7, v3

    goto/16 :goto_0

    .line 90
    :cond_3
    const/4 v0, 0x0

    .line 91
    const/4 v2, 0x0

    .line 92
    const/4 v4, 0x0

    .line 93
    const/4 v5, 0x0

    move-object v8, v6

    move-object v9, v7

    move-object v6, v1

    move-object v7, v3

    goto/16 :goto_0

    .line 101
    :cond_4
    new-instance v0, Lhsg;

    move-object v1, p0

    move-object/from16 v3, p6

    invoke-direct/range {v0 .. v5}, Lhsg;-><init>(Lhsf;ZLhsh;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, p1

    move-object v2, v9

    move-object v3, v8

    move-object v4, v7

    move-object v5, v6

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lhys;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1
.end method
