.class public Loo;
.super Labw;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lot;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Labw;-><init>()V

    .line 29
    iput-object p1, p0, Loo;->a:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic a(Loo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Loo;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lot;)V
    .locals 4

    .prologue
    .line 35
    iput-object p6, p0, Loo;->b:Lot;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    sget-object v1, Labq;->SUB_CARACTERISTICAS:Labq;

    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?gw-app-key="

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Labp;->b()Labp;

    move-result-object v2

    invoke-virtual {v2}, Labp;->a()Lje;

    move-result-object v2

    invoke-virtual {v2}, Lje;->a()Lio;

    move-result-object v2

    invoke-virtual {v2}, Lio;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&operation="

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    if-eqz p4, :cond_0

    .line 47
    const-string v1, "&certificateNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    :try_start_0
    invoke-static {}, Labp;->b()Labp;

    move-result-object v1

    invoke-virtual {v1}, Labp;->a()Lje;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Loo;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    new-instance v2, Lop;

    invoke-direct {v2, p0, p6}, Lop;-><init>(Loo;Lot;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    iget-object v1, p0, Loo;->b:Lot;

    new-instance v2, Laby;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lot;->a(Laby;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lot;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 108
    iput-object p4, p0, Loo;->b:Lot;

    .line 110
    const-string v0, "0000"

    .line 111
    if-eqz p3, :cond_0

    .line 112
    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 114
    array-length v2, v1

    if-le v2, v3, :cond_0

    .line 117
    aget-object v0, v1, v3

    const-string v2, "h"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    aget-object v0, v1, v3

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    sget-object v2, Labq;->DATA_AGENDAMENTO:Labq;

    invoke-virtual {v2}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 129
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0000/"

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0000/"

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    invoke-static {}, Laca;->a()Laca;

    move-result-object v2

    invoke-virtual {v2}, Laca;->c()Lou;

    move-result-object v2

    invoke-virtual {v2}, Lou;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "gw-app-key="

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Labp;->b()Labp;

    move-result-object v2

    invoke-virtual {v2}, Labp;->a()Lje;

    move-result-object v2

    invoke-virtual {v2}, Lje;->a()Lio;

    move-result-object v2

    invoke-virtual {v2}, Lio;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :try_start_0
    invoke-static {}, Labp;->b()Labp;

    move-result-object v0

    invoke-virtual {v0}, Labp;->a()Lje;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Loo;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lir;

    move-result-object v1

    new-instance v2, Lor;

    invoke-direct {v2, p0, p4}, Lor;-><init>(Loo;Lot;)V

    invoke-virtual {v0, v1, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    return-void

    .line 120
    :cond_1
    aget-object v0, v1, v3

    goto/16 :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    iget-object v1, p0, Loo;->b:Lot;

    new-instance v2, Laby;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lot;->a(Laby;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lot;)V
    .locals 4

    .prologue
    .line 159
    iput-object p3, p0, Loo;->b:Lot;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    sget-object v1, Labq;->CALCULO_RENTABILIDADE:Labq;

    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gw-app-key="

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Labp;->b()Labp;

    move-result-object v2

    invoke-virtual {v2}, Labp;->a()Lje;

    move-result-object v2

    invoke-virtual {v2}, Lje;->a()Lio;

    move-result-object v2

    invoke-virtual {v2}, Lio;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "applicationValue="

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :try_start_0
    invoke-static {}, Labp;->b()Labp;

    move-result-object v1

    invoke-virtual {v1}, Labp;->a()Lje;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Loo;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    new-instance v2, Los;

    invoke-direct {v2, p0, p3}, Los;-><init>(Loo;Lot;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    iget-object v1, p0, Loo;->b:Lot;

    new-instance v2, Laby;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lot;->a(Laby;)V

    goto :goto_0
.end method

.method public a(Lot;)V
    .locals 6

    .prologue
    .line 72
    iput-object p1, p0, Loo;->b:Lot;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Labq;->SALDO_CONTA_CORRENTE:Labq;

    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?gw-app-key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    invoke-static {}, Labp;->b()Labp;

    move-result-object v1

    invoke-virtual {v1}, Labp;->a()Lje;

    move-result-object v1

    invoke-virtual {v1}, Lje;->a()Lio;

    move-result-object v1

    invoke-virtual {v1}, Lio;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 79
    :try_start_0
    const-string v2, "system"

    invoke-static {}, Labp;->b()Labp;

    move-result-object v3

    invoke-virtual {v3}, Labp;->a()Lje;

    move-result-object v3

    invoke-virtual {v3}, Lje;->a()Lio;

    move-result-object v3

    invoke-virtual {v3}, Lio;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    :try_start_1
    invoke-static {}, Labp;->b()Labp;

    move-result-object v2

    invoke-virtual {v2}, Labp;->a()Lje;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0, v1, v3}, Loo;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    new-instance v1, Loq;

    invoke-direct {v1, p0, p1}, Loq;-><init>(Loo;Lot;)V

    invoke-virtual {v2, v0, v1}, Lje;->a(Liq;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :goto_1
    return-void

    .line 80
    :catch_0
    move-exception v2

    .line 81
    new-instance v2, Laby;

    const-string v3, "-1"

    iget-object v4, p0, Loo;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Llg;->error_generic:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Laby;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lot;->a(Laby;)V

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    iget-object v1, p0, Loo;->b:Lot;

    new-instance v2, Laby;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lot;->a(Laby;)V

    goto :goto_1
.end method
