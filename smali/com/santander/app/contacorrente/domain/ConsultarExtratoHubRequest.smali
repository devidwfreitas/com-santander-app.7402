.class public Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private callbackIndicator:Ljava/lang/String;
    .annotation runtime Leks;
        a = "callbackIndicator"
    .end annotation
.end field

.field private calledbackItem:Ljava/lang/String;
    .annotation runtime Leks;
        a = "calledbackItem"
    .end annotation
.end field

.field private ccApplicationGeneralBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ccApplicationGeneralBalance"
    .end annotation
.end field

.field private ccApplicationGraceGeneralBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ccApplicationGraceGeneralBalance"
    .end annotation
.end field

.field private ccApplicationGraceTotalBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ccApplicationGraceTotalBalance"
    .end annotation
.end field

.field private ccApplicationGracelessTotalBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ccApplicationGracelessTotalBalance"
    .end annotation
.end field

.field private ccApplicationTotalBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ccApplicationTotalBalance"
    .end annotation
.end field

.field private ccOutGraceGeneralBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ccOutGraceGeneralBalance"
    .end annotation
.end field

.field private cciApplicationGeneralBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cciApplicationGeneralBalance"
    .end annotation
.end field

.field private cciApplicationGraceGeneralBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cciApplicationGraceGeneralBalance"
    .end annotation
.end field

.field private cciApplicationGraceTotalBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cciApplicationGraceTotalBalance"
    .end annotation
.end field

.field private cciApplicationGracelessTotalBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cciApplicationGracelessTotalBalance"
    .end annotation
.end field

.field private cciApplicationTotalBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cciApplicationTotalBalance"
    .end annotation
.end field

.field private cciOutGraceGeneralBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cciOutGraceGeneralBalance"
    .end annotation
.end field

.field private checkingAccountIndex:Ljava/lang/String;
    .annotation runtime Leks;
        a = "checkingAccountIndex"
    .end annotation
.end field

.field private destinationMove:Ljava/lang/String;
    .annotation runtime Leks;
        a = "destinationMove"
    .end annotation
.end field

.field private destinationMoveDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "destinationMoveDate"
    .end annotation
.end field

.field private endMoveDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "endMoveDate"
    .end annotation
.end field

.field private firstCallIndicator:Ljava/lang/String;
    .annotation runtime Leks;
        a = "firstCallIndicator"
    .end annotation
.end field

.field private fromMove:Ljava/lang/String;
    .annotation runtime Leks;
        a = "fromMove"
    .end annotation
.end field

.field private moveDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "moveDate"
    .end annotation
.end field

.field private moveOrderIndicator:Ljava/lang/String;
    .annotation runtime Leks;
        a = "moveOrderIndicator"
    .end annotation
.end field

.field private previousBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "previousBalance"
    .end annotation
.end field

.field private productCode:Ljava/lang/String;
    .annotation runtime Leks;
        a = "productCode"
    .end annotation
.end field

.field private quantityCalledbackItens:Ljava/lang/String;
    .annotation runtime Leks;
        a = "quantityCalledbackItens"
    .end annotation
.end field

.field private reaCode:Ljava/lang/String;
    .annotation runtime Leks;
        a = "reaCode"
    .end annotation
.end field

.field private responseIndicator:Ljava/lang/String;
    .annotation runtime Leks;
        a = "responseIndicator"
    .end annotation
.end field

.field private savingsIndicator:Ljava/lang/String;
    .annotation runtime Leks;
        a = "savingsIndicator"
    .end annotation
.end field

.field private startMoveDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "startMoveDate"
    .end annotation
.end field

.field private statementType:Ljava/lang/String;
    .annotation runtime Leks;
        a = "statementType"
    .end annotation
.end field

.field private yieldGeneralValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "yieldGeneralValue"
    .end annotation
.end field

.field private yieldPerApplicationTotalGeneralValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "yieldPerApplicationTotalGeneralValue"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Ljava/lang/String;Lcom/santander/app/contacorrente/domain/ExtratoContract;)V
    .locals 4
    .param p4    # Lcom/santander/app/contacorrente/domain/ExtratoContract;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    .line 91
    const-string v2, "000000000000000+"

    invoke-virtual {v0, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    if-eqz p4, :cond_20

    instance-of v0, p4, Lcom/santander/app/contacorrente/domain/ExtratoResponse;

    if-eqz v0, :cond_20

    .line 95
    check-cast p4, Lcom/santander/app/contacorrente/domain/ExtratoResponse;

    .line 96
    invoke-virtual {p4}, Lcom/santander/app/contacorrente/domain/ExtratoResponse;->getEntry()Lgvw;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lgvw;->a()V

    .line 102
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getIndiceAgenciaConta()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->checkingAccountIndex:Ljava/lang/String;

    .line 103
    if-nez v0, :cond_1

    const-string v2, "D"

    :goto_1
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->moveOrderIndicator:Ljava/lang/String;

    .line 104
    if-nez v0, :cond_2

    const-string v2, "999999999"

    :goto_2
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->destinationMove:Ljava/lang/String;

    .line 105
    if-nez v0, :cond_3

    const-string v2, "000000000"

    :goto_3
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->fromMove:Ljava/lang/String;

    .line 106
    if-nez v0, :cond_4

    const-string v2, "05"

    :goto_4
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->statementType:Ljava/lang/String;

    .line 107
    if-nez v0, :cond_5

    :goto_5
    iput-object p2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->startMoveDate:Ljava/lang/String;

    .line 108
    if-nez v0, :cond_6

    :goto_6
    iput-object p3, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->endMoveDate:Ljava/lang/String;

    .line 109
    if-nez v0, :cond_7

    const-string v2, ""

    :goto_7
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->moveDate:Ljava/lang/String;

    .line 110
    if-nez v0, :cond_8

    const-string v2, ""

    :goto_8
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->productCode:Ljava/lang/String;

    .line 111
    if-nez v0, :cond_9

    const-string v2, ""

    :goto_9
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->firstCallIndicator:Ljava/lang/String;

    .line 112
    if-nez v0, :cond_a

    const-string v2, ""

    :goto_a
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->callbackIndicator:Ljava/lang/String;

    .line 113
    if-nez v0, :cond_b

    const-string v2, ""

    :goto_b
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->reaCode:Ljava/lang/String;

    .line 114
    if-nez v0, :cond_c

    const-string v2, ""

    :goto_c
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->savingsIndicator:Ljava/lang/String;

    .line 115
    if-nez v0, :cond_d

    const-string v2, ""

    :goto_d
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->destinationMoveDate:Ljava/lang/String;

    .line 116
    if-nez v0, :cond_e

    move-object v2, v3

    :goto_e
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->ccApplicationGeneralBalance:Ljava/lang/String;

    .line 117
    if-nez v0, :cond_f

    move-object v2, v3

    :goto_f
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->ccOutGraceGeneralBalance:Ljava/lang/String;

    .line 118
    if-nez v0, :cond_10

    move-object v2, v3

    :goto_10
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->cciApplicationGracelessTotalBalance:Ljava/lang/String;

    .line 119
    if-nez v0, :cond_11

    move-object v2, v3

    :goto_11
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->cciApplicationTotalBalance:Ljava/lang/String;

    .line 120
    if-nez v0, :cond_12

    move-object v2, v3

    :goto_12
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->yieldGeneralValue:Ljava/lang/String;

    .line 121
    if-nez v0, :cond_13

    move-object v2, v3

    :goto_13
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->yieldPerApplicationTotalGeneralValue:Ljava/lang/String;

    .line 122
    if-nez v0, :cond_14

    move-object v2, v3

    :goto_14
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->cciApplicationGraceTotalBalance:Ljava/lang/String;

    .line 123
    if-nez v0, :cond_15

    move-object v2, v3

    :goto_15
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->ccApplicationGracelessTotalBalance:Ljava/lang/String;

    .line 124
    if-nez v0, :cond_16

    move-object v2, v3

    :goto_16
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->previousBalance:Ljava/lang/String;

    .line 125
    if-nez v0, :cond_17

    move-object v2, v3

    :goto_17
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->ccApplicationTotalBalance:Ljava/lang/String;

    .line 126
    if-nez v0, :cond_18

    move-object v2, v3

    :goto_18
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->cciApplicationGeneralBalance:Ljava/lang/String;

    .line 127
    if-nez v0, :cond_19

    move-object v2, v3

    :goto_19
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->cciApplicationGraceGeneralBalance:Ljava/lang/String;

    .line 128
    if-nez v0, :cond_1a

    move-object v2, v3

    :goto_1a
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->ccApplicationGraceGeneralBalance:Ljava/lang/String;

    .line 129
    if-nez v0, :cond_1b

    move-object v2, v3

    :goto_1b
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->ccApplicationGraceTotalBalance:Ljava/lang/String;

    .line 130
    if-nez v0, :cond_1c

    :goto_1c
    iput-object v3, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->cciOutGraceGeneralBalance:Ljava/lang/String;

    .line 132
    if-nez v0, :cond_1d

    move-object v2, v1

    :goto_1d
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->responseIndicator:Ljava/lang/String;

    .line 133
    if-nez v0, :cond_1e

    move-object v2, v1

    :goto_1e
    iput-object v2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->calledbackItem:Ljava/lang/String;

    .line 134
    if-nez v0, :cond_1f

    :goto_1f
    iput-object v1, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->quantityCalledbackItens:Ljava/lang/String;

    .line 135
    return-void

    .line 103
    :cond_1
    iget-object v2, v0, Lgvw;->E:Ljava/lang/String;

    goto/16 :goto_1

    .line 104
    :cond_2
    iget-object v2, v0, Lgvw;->B:Ljava/lang/String;

    goto/16 :goto_2

    .line 105
    :cond_3
    iget-object v2, v0, Lgvw;->A:Ljava/lang/String;

    goto/16 :goto_3

    .line 106
    :cond_4
    iget-object v2, v0, Lgvw;->a:Ljava/lang/String;

    goto/16 :goto_4

    .line 107
    :cond_5
    iget-object p2, v0, Lgvw;->c:Ljava/lang/String;

    goto/16 :goto_5

    .line 108
    :cond_6
    iget-object p3, v0, Lgvw;->d:Ljava/lang/String;

    goto/16 :goto_6

    .line 109
    :cond_7
    iget-object v2, v0, Lgvw;->v:Ljava/lang/String;

    goto/16 :goto_7

    .line 110
    :cond_8
    iget-object v2, v0, Lgvw;->x:Ljava/lang/String;

    goto/16 :goto_8

    .line 111
    :cond_9
    iget-object v2, v0, Lgvw;->z:Ljava/lang/String;

    goto/16 :goto_9

    .line 112
    :cond_a
    iget-object v2, v0, Lgvw;->e:Ljava/lang/String;

    goto/16 :goto_a

    .line 113
    :cond_b
    iget-object v2, v0, Lgvw;->C:Ljava/lang/String;

    goto/16 :goto_b

    .line 114
    :cond_c
    iget-object v2, v0, Lgvw;->y:Ljava/lang/String;

    goto/16 :goto_c

    .line 115
    :cond_d
    iget-object v2, v0, Lgvw;->w:Ljava/lang/String;

    goto/16 :goto_d

    .line 116
    :cond_e
    iget-object v2, v0, Lgvw;->k:Ljava/lang/String;

    goto/16 :goto_e

    .line 117
    :cond_f
    iget-object v2, v0, Lgvw;->s:Ljava/lang/String;

    goto/16 :goto_f

    .line 118
    :cond_10
    iget-object v2, v0, Lgvw;->p:Ljava/lang/String;

    goto/16 :goto_10

    .line 119
    :cond_11
    iget-object v2, v0, Lgvw;->h:Ljava/lang/String;

    goto/16 :goto_11

    .line 120
    :cond_12
    iget-object v2, v0, Lgvw;->u:Ljava/lang/String;

    goto/16 :goto_12

    .line 121
    :cond_13
    iget-object v2, v0, Lgvw;->t:Ljava/lang/String;

    goto/16 :goto_13

    .line 122
    :cond_14
    iget-object v2, v0, Lgvw;->l:Ljava/lang/String;

    goto/16 :goto_14

    .line 123
    :cond_15
    iget-object v2, v0, Lgvw;->q:Ljava/lang/String;

    goto/16 :goto_15

    .line 124
    :cond_16
    iget-object v2, v0, Lgvw;->D:Ljava/lang/String;

    goto/16 :goto_16

    .line 125
    :cond_17
    iget-object v2, v0, Lgvw;->i:Ljava/lang/String;

    goto/16 :goto_17

    .line 126
    :cond_18
    iget-object v2, v0, Lgvw;->j:Ljava/lang/String;

    goto/16 :goto_18

    .line 127
    :cond_19
    iget-object v2, v0, Lgvw;->n:Ljava/lang/String;

    goto/16 :goto_19

    .line 128
    :cond_1a
    iget-object v2, v0, Lgvw;->o:Ljava/lang/String;

    goto :goto_1a

    .line 129
    :cond_1b
    iget-object v2, v0, Lgvw;->m:Ljava/lang/String;

    goto :goto_1b

    .line 130
    :cond_1c
    iget-object v3, v0, Lgvw;->r:Ljava/lang/String;

    goto :goto_1c

    .line 132
    :cond_1d
    iget-object v2, v0, Lgvw;->b:Ljava/lang/String;

    goto :goto_1d

    .line 133
    :cond_1e
    iget-object v2, v0, Lgvw;->f:Ljava/lang/String;

    goto :goto_1e

    .line 134
    :cond_1f
    iget-object v1, v0, Lgvw;->g:Ljava/lang/String;

    goto :goto_1f

    :cond_20
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lorg/json/JSONObject;

    .line 139
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v1

    invoke-virtual {v1, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    return-object v0
.end method
