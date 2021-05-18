.class public Lbs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x712

.field public static final b:I = 0x713

.field public static final c:I = 0x714

.field public static final d:I = 0x715

.field public static final e:I = 0x716

.field public static final f:I = 0x718

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "&"

    sput-object v0, Lbs;->g:Ljava/lang/String;

    .line 44
    const-string v0, ":"

    sput-object v0, Lbs;->h:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 1
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
    .line 61
    invoke-static/range {p0 .. p5}, Lbs;->b(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    return v0
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lbx;

    invoke-direct {v0, p0}, Lbx;-><init>([B)V

    .line 208
    invoke-static {v0, p1}, Lbs;->a(Lbx;Ljava/lang/String;)[B

    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private static a(Lal;[BLjava/lang/String;)[B
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 178
    invoke-virtual {p0}, Lal;->u()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {p0}, Lal;->j()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p0}, Lal;->l()Ljava/lang/String;

    move-result-object v3

    .line 181
    new-instance v4, Ljava/lang/String;

    invoke-static {p1}, Laz;->a([B)[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 195
    :try_start_0
    new-instance v5, Lbx;

    invoke-direct {v5, v0}, Lbx;-><init>([B)V

    .line 196
    invoke-static {v5, p2}, Lbs;->a(Lbx;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 202
    new-instance v1, Lbx;

    invoke-direct {v1, v0}, Lbx;-><init>([B)V

    .line 203
    invoke-static {v1, p2}, Lbs;->a(Lbx;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lbx;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0, p1}, Lbx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lbw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbz;->c([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method private static b(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
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
    const/16 v2, 0x713

    const/16 v3, 0x718

    const/4 v4, 0x0

    .line 72
    :try_start_0
    sget-object v0, Lbs;->h:Ljava/lang/String;

    invoke-static {p2, v0}, Lbr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v5

    move v0, v4

    .line 74
    :goto_0
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 77
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 78
    const/16 v0, 0x712

    .line 170
    :goto_1
    return v0

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 89
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lbs;->a(Lal;[BLjava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 94
    :goto_2
    if-nez v1, :cond_2

    move v0, v2

    .line 95
    goto :goto_1

    .line 90
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_2

    .line 102
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    const-string v5, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 105
    :try_start_3
    invoke-static {v1, v0}, Lbs;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 115
    :try_start_4
    sget-object v1, Lbs;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lbr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 120
    const/16 v0, 0x715

    goto :goto_1

    .line 106
    :catch_1
    move-exception v0

    .line 108
    const/16 v0, 0x714

    goto :goto_1

    .line 123
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 125
    const-string v0, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "2"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "3"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "4"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 127
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 135
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 139
    const-string v0, "4"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v0

    if-eqz v0, :cond_8

    .line 142
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-nez v0, :cond_6

    move v0, v3

    .line 145
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 130
    goto/16 :goto_1

    .line 147
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-nez v0, :cond_7

    move v0, v3

    .line 152
    goto/16 :goto_1

    .line 154
    :cond_7
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 161
    :cond_8
    :try_start_6
    invoke-virtual {p5, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move v0, v4

    .line 164
    goto/16 :goto_1

    .line 155
    :catch_2
    move-exception v0

    move v0, v3

    .line 157
    goto/16 :goto_1

    .line 166
    :catch_3
    move-exception v0

    .line 170
    const/16 v0, 0x716

    goto/16 :goto_1
.end method
