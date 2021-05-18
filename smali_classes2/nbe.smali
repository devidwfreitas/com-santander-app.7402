.class public Lnbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnbd;


# static fields
.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgyv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lnds;

.field private b:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private e:Lgzs;


# direct methods
.method public constructor <init>(Lnds;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lnbe;->a:Lnds;

    .line 34
    iput-object p2, p0, Lnbe;->b:Landroid/app/Activity;

    .line 35
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NULL_CSTRING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lgyu;

    iget-object v1, p0, Lnbe;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lgyu;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0}, Lgyu;->a()V

    .line 41
    invoke-virtual {v0}, Lgyu;->c()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lnbe;->c:Ljava/util/List;

    .line 42
    invoke-virtual {v0}, Lgyu;->close()V

    .line 44
    sget-object v0, Lnbe;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    iget-object v0, p0, Lnbe;->a:Lnds;

    invoke-interface {v0}, Lnds;->b()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lnbe;->a:Lnds;

    invoke-interface {v0}, Lnds;->c()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    :try_start_0
    iput-object p1, p0, Lnbe;->d:Ljava/lang/String;

    .line 56
    sget-object v0, Lnbe;->c:Ljava/util/List;

    .line 57
    invoke-static {v0, p1}, Lgyy;->a(Ljava/util/List;Ljava/lang/String;)Lgzs;

    move-result-object v0

    iput-object v0, p0, Lnbe;->e:Lgzs;

    .line 70
    iget-object v0, p0, Lnbe;->e:Lgzs;

    invoke-virtual {v0}, Lgzs;->b()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbe;->e:Lgzs;

    invoke-virtual {v0}, Lgzs;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 72
    iget-object v0, p0, Lnbe;->e:Lgzs;

    invoke-virtual {v0}, Lgzs;->b()Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lnbe;->e:Lgzs;

    invoke-virtual {v1}, Lgzs;->b()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lnbe;->e:Lgzs;

    invoke-virtual {v1}, Lgzs;->b()Ljava/util/Vector;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 75
    :goto_0
    invoke-direct {p0, v0}, Lnbe;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    invoke-direct {p0, v1}, Lnbe;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    const-string v4, "\\*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    array-length v5, v4

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v2, v4, v1

    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v6, "\\|"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 84
    new-instance v6, Lgky;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-direct {v6, v7, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lnbe;->a:Lnds;

    invoke-interface {v1, v0, v3}, Lnds;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    :goto_2
    return-void

    .line 89
    :cond_2
    iget-object v1, p0, Lnbe;->a:Lnds;

    invoke-interface {v1, v0}, Lnds;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string v1, "ID_SANTANDER_LEITURA_QR_CODE_VALIDAR_RESULTADO_SCAN_EXCEPTION"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 92
    :cond_3
    :try_start_1
    const-string v0, "ID_SANTANDER_LEITURA_QR_CODE_VALIDAR_RESULTADO_SCAN"

    const-string v1, "ERROR - qr1"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lnbe;->a:Lnds;

    const-string v1, "qr1"

    invoke-interface {v0, v1}, Lnds;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 97
    :cond_4
    const-string v0, "ID_SANTANDER_LEITURA_QR_CODE_VALIDAR_RESULTADO_SCAN_ACTIVATIONPARAMETERS"

    const-string v1, "LISTA_VAZIA"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lnbe;->a:Lnds;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnds;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public b()V
    .locals 3

    .prologue
    .line 107
    sget-object v0, Lnbe;->c:Ljava/util/List;

    iget-object v1, p0, Lnbe;->e:Lgzs;

    iget-object v2, p0, Lnbe;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lgyy;->a(Ljava/util/List;Lgzs;Ljava/lang/String;)Lgzs;

    move-result-object v0

    iput-object v0, p0, Lnbe;->e:Lgzs;

    .line 109
    iget-object v0, p0, Lnbe;->e:Lgzs;

    invoke-virtual {v0}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lnbe;->a:Lnds;

    iget-object v1, p0, Lnbe;->e:Lgzs;

    invoke-virtual {v1}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnds;->c(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lnbe;->a:Lnds;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnds;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
