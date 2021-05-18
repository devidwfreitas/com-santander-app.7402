.class Lcom/ca/mdo/PersistenceManager;
.super Ljava/lang/Object;
.source "PersistenceManager.java"


# instance fields
.field public sessionManager:Lcom/ca/mdo/SessionManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildEvtTypeActivityTxn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "svc"    # Ljava/lang/String;
    .param p2, "txn"    # Ljava/lang/String;
    .param p3, "txnTime"    # J
    .param p5, "timestamp"    # J
    .param p7, "parentS"    # Ljava/lang/String;
    .param p8, "parentT"    # Ljava/lang/String;
    .param p9, "parentTime"    # Ljava/lang/String;
    .param p10, "failed"    # Ljava/lang/String;
    .param p11, "isAuto"    # Z
    .param p12, "jObjOut"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 195
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/16 p12, 0x0

    .line 234
    .end local p12    # "jObjOut":Lorg/json/JSONObject;
    :goto_0
    return-object p12

    .line 197
    .restart local p12    # "jObjOut":Lorg/json/JSONObject;
    :cond_1
    :try_start_0
    const-string v3, "ty"

    const-string v4, "txn_events"

    move-object/from16 v0, p12

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v3, "n"

    move-object/from16 v0, p12

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v3, "v"

    move-object/from16 v0, p12

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v3, "apptxn_fail"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "apptxn_end"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 201
    :cond_2
    const-string v3, "t"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p12

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 206
    .local v1, "attrObj":Lorg/json/JSONObject;
    const-string v4, "mode"

    if-eqz p11, :cond_9

    const-string v3, "AUTO"

    :goto_2
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    if-eqz p1, :cond_a

    .line 208
    const-string v3, "ca_as"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    :goto_3
    const-string v3, "apptxn_end"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "apptxn_fail"

    .line 214
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "apptxn_start"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 215
    :cond_3
    const-string v4, "txn_s"

    const-wide/16 v5, 0x0

    cmp-long v3, p3, v5

    if-lez v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :cond_4
    if-eqz p10, :cond_5

    .line 219
    const-string v3, "fd"

    move-object/from16 v0, p10

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    :cond_5
    if-eqz p8, :cond_6

    .line 223
    const-string v3, "ca_at_p"

    invoke-virtual {v1, v3, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v3, "ca_as_p"

    invoke-virtual {v1, v3, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v3, "txn_s_p"

    move-object/from16 v0, p9

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    :cond_6
    move-object/from16 v0, p12

    invoke-static {v0, v1}, Lcom/ca/mdo/PersistenceManager;->setScreenNames(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 229
    const-string v3, "attr"

    move-object/from16 v0, p12

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 232
    .end local v1    # "attrObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    const/16 p12, 0x0

    goto/16 :goto_0

    .line 203
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_1
    const-string v4, "t"

    const-wide/16 v5, 0x0

    cmp-long v3, p3, v5

    if-lez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    move-object/from16 v0, p12

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 206
    .restart local v1    # "attrObj":Lorg/json/JSONObject;
    :cond_9
    const-string v3, "MANUAL"

    goto/16 :goto_2

    .line 210
    :cond_a
    const-string v3, "ca_as"

    const-string v4, "Unknown"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 215
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_4
.end method

.method private static getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 349
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 352
    :cond_0
    :goto_0
    return-object v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "ex":Lorg/json/JSONException;
    goto :goto_0
.end method

.method private static removePassed(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "eventObject"    # Lorg/json/JSONObject;

    .prologue
    .line 342
    const-string v0, "passovercsn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    const-string v0, "passoverpsn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    return-void
.end method

.method private static setScreenLoadTime(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "eventObject"    # Lorg/json/JSONObject;
    .param p1, "attribs"    # Lorg/json/JSONObject;

    .prologue
    .line 331
    :try_start_0
    const-string v2, "slt"

    invoke-static {p0, v2}, Lcom/ca/mdo/PersistenceManager;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "slt":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 333
    const-string v2, "slt"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    :cond_0
    const-string v2, "slt"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v1    # "slt":Ljava/lang/String;
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "jex":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setScreenNames(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "eventObject"    # Lorg/json/JSONObject;
    .param p1, "attribs"    # Lorg/json/JSONObject;

    .prologue
    .line 316
    :try_start_0
    const-string v3, "passovercsn"

    invoke-static {p0, v3}, Lcom/ca/mdo/PersistenceManager;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "csn":Ljava/lang/String;
    const-string v3, "passoverpsn"

    invoke-static {p0, v3}, Lcom/ca/mdo/PersistenceManager;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "psn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 319
    const-string v3, "csn"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    :cond_0
    if-eqz v2, :cond_1

    .line 321
    const-string v3, "psn"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    :cond_1
    invoke-static {p0}, Lcom/ca/mdo/PersistenceManager;->removePassed(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v0    # "csn":Ljava/lang/String;
    .end local v2    # "psn":Ljava/lang/String;
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "jex":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public buildEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "timeStamp"    # J
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "eventObject"    # Lorg/json/JSONObject;

    .prologue
    .line 170
    :try_start_0
    const-string v2, "ty"

    invoke-virtual {p6, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v2, "n"

    invoke-virtual {p6, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v2, "v"

    invoke-virtual {p6, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v2, "t"

    invoke-virtual {p6, v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v0, "attrObj":Lorg/json/JSONObject;
    invoke-static {p6, v0}, Lcom/ca/mdo/PersistenceManager;->setScreenNames(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 176
    const-string v2, "slt"

    invoke-virtual {p6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-static {p6, v0}, Lcom/ca/mdo/PersistenceManager;->setScreenLoadTime(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 178
    :cond_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationService()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationTransaction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/ca/mdo/CAMobileDevOps;->mAppTransactionStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 179
    const-string v2, "ca_as"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v2, "ca_at"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationTransaction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v2, "txn_s"

    sget-wide v3, Lcom/ca/mdo/CAMobileDevOps;->mAppTransactionStartTime:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 183
    :cond_1
    const-string v2, "attr"

    invoke-virtual {p6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v0    # "attrObj":Lorg/json/JSONObject;
    :goto_0
    return-object p6

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildEvent(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "eventObject"    # Lorg/json/JSONObject;

    .prologue
    .line 145
    :try_start_0
    const-string v2, "attr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    const-string v2, "attr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 151
    .local v0, "attribs":Lorg/json/JSONObject;
    :goto_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationService()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationTransaction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/ca/mdo/CAMobileDevOps;->mAppTransactionStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 153
    const-string v2, "ca_as"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v2, "ca_at"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationTransaction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v2, "txn_s"

    sget-wide v3, Lcom/ca/mdo/CAMobileDevOps;->mAppTransactionStartTime:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 157
    :cond_0
    invoke-static {p1, v0}, Lcom/ca/mdo/PersistenceManager;->setScreenNames(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 158
    const-string v2, "slt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-static {p1, v0}, Lcom/ca/mdo/PersistenceManager;->setScreenLoadTime(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 160
    :cond_1
    const-string v2, "attr"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    .end local v0    # "attribs":Lorg/json/JSONObject;
    :goto_1
    return-object p1

    .line 149
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "attribs":Lorg/json/JSONObject;
    goto :goto_0

    .line 161
    .end local v0    # "attribs":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public buildEvtTypeCustom(Ljava/lang/String;Lorg/json/JSONObject;JLorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "paramsObj"    # Lorg/json/JSONObject;
    .param p3, "timeStamp"    # J
    .param p5, "jObj"    # Lorg/json/JSONObject;

    .prologue
    .line 239
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 241
    .local v0, "attrObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "ty"

    const-string v6, "custom"

    invoke-virtual {p5, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v5, "v"

    invoke-virtual {p5, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationService()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationTransaction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-wide v5, Lcom/ca/mdo/CAMobileDevOps;->mAppTransactionStartTime:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 246
    const-string v5, "ca_as"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationService()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v5, "ca_at"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationTransaction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v5, "txn_s"

    sget-wide v6, Lcom/ca/mdo/CAMobileDevOps;->mAppTransactionStartTime:J

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 250
    if-eqz p2, :cond_1

    .line 251
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 253
    .local v3, "pkey":Ljava/lang/String;
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 254
    .local v4, "pval":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    .end local v2    # "key":Ljava/util/Iterator;
    .end local v3    # "pkey":Ljava/lang/String;
    .end local v4    # "pval":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object p5

    .line 259
    :cond_0
    if-eqz p2, :cond_1

    .line 260
    :try_start_1
    const-string v5, "attr"

    invoke-virtual {p5, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    :cond_1
    invoke-static {p5, v0}, Lcom/ca/mdo/PersistenceManager;->setScreenNames(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 263
    const-string v5, "attr"

    invoke-virtual {p5, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v5, "t"

    invoke-virtual {p5, v5, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public canCollectPerfData(I)Z
    .locals 3
    .param p1, "eventId"    # I

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v0

    .line 81
    .local v0, "policyManager":Lcom/ca/mdo/PolicyManager;
    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/ca/mdo/PolicyManager;->getPerfCollectFrequency()I

    move-result v2

    rem-int v2, p1, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "je":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public mergeEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 6
    .param p1, "session_id"    # Ljava/lang/String;
    .param p2, "event"    # Lorg/json/JSONObject;
    .param p3, "eventType"    # I
    .param p4, "logTag"    # Ljava/lang/String;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v0, "eventRecord":Lorg/json/JSONObject;
    const-wide/16 v2, 0x0

    .line 108
    .local v2, "timestamp":J
    :try_start_0
    const-string v4, "session_json_type"

    invoke-virtual {v0, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v4, "session_id"

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 111
    const/4 v4, 0x3

    if-eq p3, v4, :cond_2

    const-string v4, "hdr"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 112
    const-string v4, "eid"

    iget-object v5, p0, Lcom/ca/mdo/PersistenceManager;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v5}, Lcom/ca/mdo/SessionManager;->getNewEventID()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v4, "t"

    invoke-virtual {p2, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    :goto_1
    const-string v4, "session_json"

    invoke-virtual {v0, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_2
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getDatabaseService()Lcom/ca/mdo/DatabaseHandler;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ca/mdo/DatabaseHandler;->mergeEvent(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 115
    :cond_2
    :try_start_1
    const-string v4, "eid"

    const v5, 0x7fffffff

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 11
    .param p1, "session_id"    # Ljava/lang/String;
    .param p2, "event"    # Lorg/json/JSONObject;
    .param p3, "eventType"    # I
    .param p4, "logTag"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x2

    .line 20
    const/4 v9, 0x1

    .line 21
    .local v9, "processRules":Z
    if-eqz p4, :cond_0

    const-string v0, "evt"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->incrementEventUploadCounter()V

    .line 25
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 28
    :cond_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .local v6, "eventRecord":Lorg/json/JSONObject;
    const-wide/16 v2, 0x0

    .line 30
    .local v2, "timestamp":J
    const/4 v4, -0x1

    .line 32
    .local v4, "eventID":I
    :try_start_0
    const-string v0, "session_json_type"

    invoke-virtual {v6, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v0, "session_id"

    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 35
    if-eq p3, v10, :cond_7

    const-string v0, "hdr"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 36
    if-ne p3, v5, :cond_5

    .line 37
    const v4, 0x7fffd8ef

    .line 42
    :goto_1
    const-string v0, "eid"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v0, "t"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 48
    const-string v0, "t"

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    :goto_2
    invoke-static {p2}, Lcom/ca/mdo/PersistenceManager;->removePassed(Lorg/json/JSONObject;)V

    .line 58
    const-string v0, "session_json"

    invoke-virtual {v6, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v0, "n"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    const-string v0, "n"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_4

    const-string v0, "screenshots_disabled"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "screenshots_enabled"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    :cond_3
    const/4 v9, 0x0

    .line 70
    .end local v8    # "name":Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getDatabaseService()Lcom/ca/mdo/DatabaseHandler;

    move-result-object v0

    invoke-virtual {v0, v6, p3, v9}, Lcom/ca/mdo/DatabaseHandler;->persistEvents(Lorg/json/JSONObject;IZ)V

    .line 71
    if-eq p3, v5, :cond_1

    if-eq p3, v10, :cond_1

    const-string v0, "hdr"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    if-lez v4, :cond_1

    invoke-virtual {p0, v4}, Lcom/ca/mdo/PersistenceManager;->canCollectPerfData(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/ca/mdo/PersistenceManager;->persistPerformanceEvent(Ljava/lang/String;JII)V

    goto/16 :goto_0

    .line 40
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/ca/mdo/PersistenceManager;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v0}, Lcom/ca/mdo/SessionManager;->getNewEventID()I

    move-result v4

    goto :goto_1

    .line 51
    :cond_6
    const-string v0, "t"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_2

    .line 54
    :cond_7
    const v4, 0x7fffffff

    .line 55
    const-string v0, "eid"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 66
    :catch_0
    move-exception v7

    .line 67
    .local v7, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public persistPerformanceEvent(Ljava/lang/String;JII)V
    .locals 5
    .param p1, "session_id"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "eventID"    # I
    .param p5, "eventType"    # I

    .prologue
    .line 125
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .local v2, "perfRecord":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "session_json_type"

    const-string v4, "prf"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v3, "session_id"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    invoke-virtual {p0, p2, p3}, Lcom/ca/mdo/PersistenceManager;->setPerf(J)Lorg/json/JSONObject;

    move-result-object v1

    .line 130
    .local v1, "perfJson":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 131
    const-string v3, "session_json"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v3, "eid"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getDatabaseService()Lcom/ca/mdo/DatabaseHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p5, v4}, Lcom/ca/mdo/DatabaseHandler;->persistEvents(Lorg/json/JSONObject;IZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1    # "perfJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "E":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPerf(J)Lorg/json/JSONObject;
    .locals 6
    .param p1, "timestamp"    # J

    .prologue
    .line 273
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 274
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 275
    .local v1, "perf":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v2

    .line 277
    .local v2, "policyManager":Lcom/ca/mdo/PolicyManager;
    :try_start_0
    const-string v3, "t"

    invoke-virtual {v1, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 278
    invoke-virtual {v2}, Lcom/ca/mdo/PolicyManager;->isCpuEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    const-string v3, "c"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getCPUUsage()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 284
    :goto_0
    invoke-virtual {v2}, Lcom/ca/mdo/PolicyManager;->isMemEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    const-string v3, "m"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getMemoryUsage()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 290
    :goto_1
    invoke-virtual {v2}, Lcom/ca/mdo/PolicyManager;->isDiskEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    const-string v3, "d"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getDiskUsage()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 297
    :goto_2
    const-string v3, "f"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    invoke-virtual {v2}, Lcom/ca/mdo/PolicyManager;->isBatteryEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 299
    const-string v3, "b"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getBatteryPct()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 304
    :goto_3
    const-string v3, "eid"

    iget-object v4, p0, Lcom/ca/mdo/PersistenceManager;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v4}, Lcom/ca/mdo/SessionManager;->getPresentEventID()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 310
    .end local v1    # "perf":Lorg/json/JSONObject;
    .end local v2    # "policyManager":Lcom/ca/mdo/PolicyManager;
    :goto_4
    return-object v1

    .line 282
    .restart local v1    # "perf":Lorg/json/JSONObject;
    .restart local v2    # "policyManager":Lcom/ca/mdo/PolicyManager;
    :cond_0
    const-string v3, "c"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception in processing perf Json"

    invoke-static {v3, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "m"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 294
    :cond_2
    const-string v3, "d"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 302
    :cond_3
    const-string v3, "b"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 310
    .end local v1    # "perf":Lorg/json/JSONObject;
    .end local v2    # "policyManager":Lcom/ca/mdo/PolicyManager;
    :cond_4
    const/4 v1, 0x0

    goto :goto_4
.end method
