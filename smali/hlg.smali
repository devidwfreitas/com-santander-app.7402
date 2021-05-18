.class public Lhlg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxl;


# instance fields
.field private A:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cancellable"
    .end annotation
.end field

.field private B:Ljava/lang/String;
    .annotation runtime Leks;
        a = "onlineAverbationPasswordFlag"
    .end annotation
.end field

.field private C:Ljava/lang/String;
    .annotation runtime Leks;
        a = "idDossier"
    .end annotation
.end field

.field private D:Lhlh;

.field private E:Ljava/lang/String;

.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "contractId"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "proposalId"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "subProductName"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "registrationId"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalLoanValue"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "loanValue"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "gnid"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "insurenceValue"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Leks;
        a = "debtorBalance"
    .end annotation
.end field

.field private k:Lhli;
    .annotation runtime Leks;
        a = "dates"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Leks;
        a = "insuranceValue"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cancelChannel"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Leks;
        a = "branchCodeLiberation"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Leks;
        a = "observation"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Leks;
        a = "channelCode"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Leks;
        a = "status"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Leks;
        a = "agreementCode"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Leks;
        a = "agreementName"
    .end annotation
.end field

.field private t:Lhlj;
    .annotation runtime Leks;
        a = "installments"
    .end annotation
.end field

.field private u:Lhll;
    .annotation runtime Leks;
        a = "tax"
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation runtime Leks;
        a = "channelDescription"
    .end annotation
.end field

.field private w:Ljava/lang/String;
    .annotation runtime Leks;
        a = "operationType"
    .end annotation
.end field

.field private x:Ljava/lang/String;
    .annotation runtime Leks;
        a = "accountLiberation"
    .end annotation
.end field

.field private y:Ljava/lang/String;
    .annotation runtime Leks;
        a = "subProductCode"
    .end annotation
.end field

.field private z:Ljava/lang/String;
    .annotation runtime Leks;
        a = "productName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lhlg;->E:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    const-string v0, ""

    return-object v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0xb

    return v0
.end method

.method public a(Lhlh;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lhlg;->D:Lhlh;

    .line 323
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lhlg;->E:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public b()I
    .locals 8

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 92
    iget-object v5, p0, Lhlg;->q:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 114
    :goto_1
    return v0

    .line 92
    :sswitch_0
    const-string v7, "ativo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v7, "atraso"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_2
    const-string v7, "liquidado"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string v7, "andamento"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_4
    const-string v7, "pendente"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_5
    const-string v7, "reprovado"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_6
    const-string v7, "cancelado"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_7
    const-string v7, "em cancelamento"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 98
    goto :goto_1

    .line 101
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 105
    goto :goto_1

    :pswitch_3
    move v0, v3

    .line 108
    goto :goto_1

    :pswitch_4
    move v0, v4

    .line 111
    goto :goto_1

    .line 114
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_1

    .line 92
    :sswitch_data_0
    .sparse-switch
        -0x53e1f882 -> :sswitch_1
        -0x101a2cf0 -> :sswitch_5
        0x58d3bcf -> :sswitch_0
        0x12bed9c5 -> :sswitch_4
        0x1a6e2a82 -> :sswitch_7
        0x1c67fff2 -> :sswitch_6
        0x265427a7 -> :sswitch_3
        0x4f77f5f0 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lhlg;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhlg;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhlg;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lhlg;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lhlg;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    iget-object v1, p0, Lhlg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lhlg;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v1, p0, Lhlg;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p0}, Lhlg;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lhlg;->t:Lhlj;

    invoke-virtual {v0}, Lhlj;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 154
    :cond_0
    :try_start_1
    iget-object v0, p0, Lhlg;->t:Lhlj;

    invoke-virtual {v0}, Lhlj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlk;

    .line 155
    iget-object v0, v0, Lhlk;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v0, "0"

    goto :goto_0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p0}, Lhlg;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lhlg;->t:Lhlj;

    invoke-virtual {v0}, Lhlj;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 170
    :cond_0
    :try_start_1
    iget-object v0, p0, Lhlg;->t:Lhlj;

    invoke-virtual {v0}, Lhlj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlk;

    .line 171
    iget-object v0, v0, Lhlk;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v0, "0"

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lhlg;->k:Lhli;

    iget-object v0, v0, Lhli;->c:Ljava/lang/String;

    invoke-static {v0}, Lhyx;->d(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 183
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v0, ""

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v1, p0, Lhlg;->t:Lhlj;

    iget-object v1, v1, Lhlj;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v1, p0, Lhlg;->u:Lhll;

    iget-object v1, v1, Lhll;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v1, p0, Lhlg;->i:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lhlg;->z:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 221
    :try_start_0
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lhlg;->u:Lhll;

    iget-object v3, v3, Lhll;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% a.m."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v0, "0"

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    :try_start_0
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lhlg;->u:Lhll;

    iget-object v3, v3, Lhll;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 236
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% a.a."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string v0, "0"

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 4

    .prologue
    .line 243
    :try_start_0
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lhlg;->u:Lhll;

    iget-object v3, v3, Lhll;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 247
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% a.m."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    const-string v0, "0"

    goto :goto_0
.end method

.method public r()Ljava/lang/String;
    .locals 4

    .prologue
    .line 254
    :try_start_0
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lhlg;->u:Lhll;

    iget-object v3, v3, Lhll;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% a.a."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string v0, "0"

    goto :goto_0
.end method

.method public s()Ljava/lang/String;
    .locals 4

    .prologue
    .line 263
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v1, p0, Lhlg;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lhlg;->k:Lhli;

    iget-object v0, v0, Lhli;->a:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    :try_start_0
    invoke-virtual {p0}, Lhlg;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhyx;->d(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 275
    const-string v1, "dd/MM/yyy"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 276
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    const-string v0, ""

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string v0, "Em at\u00e9 2 dias \u00fateis"

    return-object v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 291
    :try_start_0
    invoke-virtual {p0}, Lhlg;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lhlg;->t:Lhlj;

    invoke-virtual {v0}, Lhlj;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 300
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 294
    :cond_0
    :try_start_1
    iget-object v0, p0, Lhlg;->t:Lhlj;

    invoke-virtual {v0}, Lhlj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlk;

    .line 295
    iget-object v0, v0, Lhlk;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    const-string v0, "0"

    goto :goto_0
.end method

.method public x()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    :try_start_0
    iget-object v0, p0, Lhlg;->k:Lhli;

    iget-object v0, v0, Lhli;->d:Ljava/lang/String;

    invoke-static {v0}, Lhyx;->d(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 307
    const-string v1, "dd/MM/yyy"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 308
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    const-string v0, ""

    goto :goto_0
.end method

.method public y()Z
    .locals 2

    .prologue
    .line 316
    const-string v0, "true"

    iget-object v1, p0, Lhlg;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public z()Lhlh;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lhlg;->D:Lhlh;

    return-object v0
.end method
