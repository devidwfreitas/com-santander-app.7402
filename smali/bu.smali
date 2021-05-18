.class public Lbu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:I = 0x0

.field public static final b:I = 0x712

.field public static final c:I = 0x713

.field public static final d:I = 0x714

.field public static final e:I = 0x715

.field public static final f:I = 0x716

.field public static final g:I = 0x718

.field static h:I = 0x0

.field public static final i:I = 0x6ae

.field public static final j:I = 0x6af

.field public static final k:I = 0x6b0

.field public static final l:I = 0x6b1

.field public static final m:I = 0x6b2

.field public static final n:I = 0x6b4

.field public static o:Ljava/lang/String; = null

.field public static p:Ljava/lang/String; = null

.field static final q:Ljava/lang/String; = "6BF891D1C596FD5F4B0CD7AC1A2594AB284C41F5ACA2E7EC390701BD4F9A6256"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x6b7

    sput v0, Lbu;->a:I

    .line 44
    const/16 v0, 0x71b

    sput v0, Lbu;->h:I

    .line 58
    const-string v0, "&"

    sput-object v0, Lbu;->o:Ljava/lang/String;

    .line 59
    const-string v0, ":"

    sput-object v0, Lbu;->p:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lal;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    .line 68
    :cond_0
    sget v0, Lbu;->h:I

    .line 70
    :goto_0
    return v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbu;->a(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lal;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 61
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 62
    :cond_0
    sget v0, Lbu;->a:I

    .line 64
    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lbu;->a(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;Ljava/lang/StringBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;Ljava/lang/StringBuffer;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lal;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")I"
        }
    .end annotation

    .prologue
    const/16 v6, 0x6af

    const/16 v5, 0x713

    const/4 v3, 0x0

    .line 74
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    move v2, v0

    .line 82
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbu;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lbr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v7

    .line 84
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    .line 89
    const/4 v0, 0x2

    if-ge v8, v0, :cond_2

    .line 90
    if-eqz v2, :cond_1

    const/16 v0, 0x712

    .line 217
    :goto_1
    return v0

    :cond_0
    move v2, v3

    .line 74
    goto :goto_0

    .line 90
    :cond_1
    const/16 v0, 0x6ae

    goto :goto_1

    .line 107
    :cond_2
    const/4 v0, 0x0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v3

    move-object v4, v0

    .line 110
    :goto_2
    if-lt v1, v8, :cond_3

    .line 127
    if-nez v4, :cond_5

    .line 128
    if-eqz v2, :cond_4

    move v0, v5

    goto :goto_1

    .line 113
    :cond_3
    :try_start_1
    invoke-virtual {v7, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lbu;->a(Lal;[BLjava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 114
    if-eqz v4, :cond_f

    .line 116
    add-int/lit8 v0, v8, 0x63

    move-object v1, v4

    .line 110
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object v4, v1

    move v1, v0

    goto :goto_2

    .line 118
    :catch_0
    move-exception v0

    move v0, v1

    move-object v1, v4

    goto :goto_3

    :cond_4
    move v0, v6

    .line 128
    goto :goto_1

    .line 135
    :cond_5
    :try_start_2
    invoke-virtual {v7}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    const-string v1, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    :try_start_3
    invoke-static {p1, v4, v0}, Lbu;->a([B[BLjava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 149
    :try_start_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    const-string v0, "a"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    sget-object v1, Lbu;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lbr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v7

    .line 161
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_8

    .line 162
    if-eqz v2, :cond_7

    :goto_4
    move v0, v5

    goto :goto_1

    .line 139
    :catch_1
    move-exception v0

    .line 141
    if-eqz v2, :cond_6

    const/16 v0, 0x714

    goto :goto_1

    :cond_6
    const/16 v0, 0x6b0

    goto :goto_1

    .line 162
    :cond_7
    const/16 v5, 0x6b1

    goto :goto_4

    .line 165
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 167
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 168
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 175
    if-eqz v2, :cond_a

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 180
    :cond_a
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 181
    const-string v0, "b"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "c"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    const/4 v4, 0x0

    invoke-virtual {v7, v1, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 209
    :cond_b
    invoke-virtual {p4, v7}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v3

    .line 211
    goto/16 :goto_1

    .line 170
    :cond_c
    if-eqz v2, :cond_d

    :goto_5
    move v0, v5

    goto/16 :goto_1

    :cond_d
    move v5, v6

    goto :goto_5

    .line 213
    :catch_2
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    if-eqz v2, :cond_e

    const/16 v0, 0x716

    goto/16 :goto_1

    :cond_e
    const/16 v0, 0x6b2

    goto/16 :goto_1

    :cond_f
    move v0, v1

    move-object v1, v4

    goto/16 :goto_3
.end method

.method private static a([B[BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v0, 0x10

    .line 269
    const-string v1, "6BF891D1C596FD5F4B0CD7AC1A2594AB284C41F5ACA2E7EC390701BD4F9A6256"

    invoke-static {v1}, Laz;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 273
    new-instance v2, Lby;

    invoke-direct {v2, p0}, Lby;-><init>([B)V

    .line 274
    invoke-virtual {v2, v1}, Lby;->a([B)[B

    move-result-object v1

    .line 278
    new-instance v2, Lby;

    invoke-direct {v2, v1}, Lby;-><init>([B)V

    .line 279
    invoke-virtual {v2, p0}, Lby;->a([B)[B

    move-result-object v2

    .line 286
    const/16 v1, 0x20

    new-array v3, v1, [B

    .line 287
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 291
    :goto_1
    array-length v1, v3

    if-lt v0, v1, :cond_1

    .line 296
    new-instance v0, Lby;

    invoke-direct {v0, v3}, Lby;-><init>([B)V

    .line 297
    invoke-virtual {v0, v2}, Lby;->a([B)[B

    move-result-object v0

    .line 298
    new-instance v1, Lby;

    invoke-direct {v1, v0}, Lby;-><init>([B)V

    .line 299
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbz;->c([B)[B

    move-result-object v0

    .line 300
    invoke-virtual {v1, v0}, Lby;->c([B)[B

    move-result-object v2

    .line 303
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 306
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 310
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-16"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 313
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 314
    const-string v3, "z"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 318
    const-string v3, "utf8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    aget-byte v4, p1, v1

    aput-byte v4, v3, v1

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_1
    add-int/lit8 v1, v0, -0x10

    aget-byte v1, p0, v1

    aget-byte v4, p0, v0

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    :cond_2
    :try_start_1
    const-string v3, "latin1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 321
    new-instance v0, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 328
    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object v0, v1

    goto :goto_2

    .line 322
    :cond_4
    :try_start_2
    const-string v3, "utf16"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-16"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private static a(Lal;[BLjava/lang/String;)[B
    .locals 5

    .prologue
    .line 228
    if-eqz p0, :cond_0

    .line 229
    invoke-virtual {p0}, Lal;->u()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Lal;->j()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {p0}, Lal;->l()Ljava/lang/String;

    move-result-object v2

    .line 232
    new-instance v3, Ljava/lang/String;

    invoke-static {p1}, Laz;->a([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 244
    :try_start_0
    new-instance v1, Lby;

    invoke-direct {v1, v0}, Lby;-><init>([B)V

    .line 245
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbz;->c([B)[B

    move-result-object v0

    .line 248
    invoke-virtual {v1, v0}, Lby;->c([B)[B

    move-result-object v0

    .line 255
    if-eqz v0, :cond_1

    .line 256
    invoke-static {v0}, Lbw;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    .line 264
    :goto_0
    return-object v0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 260
    :catch_0
    move-exception v0

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lbx;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 337
    :try_start_0
    invoke-virtual {p0, p1}, Lbx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Lbw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbz;->c([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method public static b(Lbx;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p0, p1}, Lbx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lbw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbz;->c([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
