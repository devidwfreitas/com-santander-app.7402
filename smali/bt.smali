.class public Lbt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x6ae

.field public static final b:I = 0x6af

.field public static final c:I = 0x6b0

.field public static final d:I = 0x6b1

.field public static final e:I = 0x6b2

.field public static final f:I = 0x6b4

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "&"

    sput-object v0, Lbt;->g:Ljava/lang/String;

    .line 46
    const-string v0, ":"

    sput-object v0, Lbt;->h:Ljava/lang/String;

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

.method public static a(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 1
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
    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lbt;->b(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    return v0
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Lbx;

    invoke-direct {v0, p0}, Lbx;-><init>([B)V

    .line 245
    invoke-static {v0, p1}, Lbt;->a(Lbx;Ljava/lang/String;)[B

    move-result-object v0

    .line 246
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private static a(Lal;[BLjava/lang/String;)[B
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 214
    invoke-virtual {p0}, Lal;->u()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lal;->j()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Lal;->l()Ljava/lang/String;

    move-result-object v2

    .line 217
    new-instance v3, Ljava/lang/String;

    invoke-static {p1}, Laz;->a([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 233
    :try_start_0
    new-instance v5, Lbx;

    invoke-direct {v5, v4}, Lbx;-><init>([B)V

    .line 234
    invoke-static {v5, p2}, Lbt;->a(Lbx;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 235
    :catch_0
    move-exception v4

    .line 237
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

    .line 238
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 239
    new-instance v1, Lbx;

    invoke-direct {v1, v0}, Lbx;-><init>([B)V

    .line 240
    invoke-static {v1, p2}, Lbt;->a(Lbx;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lbx;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 251
    :try_start_0
    invoke-virtual {p0, p1}, Lbx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lbw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbz;->c([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method private static b(Lal;[BLjava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I
    .locals 8
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
    const/16 v3, 0x6af

    const/16 v4, 0x6b4

    const/4 v5, 0x0

    .line 61
    :try_start_0
    sget-object v0, Lbt;->h:Ljava/lang/String;

    invoke-static {p2, v0}, Lbr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v6

    .line 66
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 67
    const/16 v0, 0x6ae

    .line 172
    :goto_0
    return v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 72
    if-gtz v7, :cond_1

    move v0, v3

    .line 73
    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move v1, v5

    move-object v2, v0

    .line 84
    :goto_1
    if-lt v1, v7, :cond_2

    .line 101
    if-nez v2, :cond_3

    move v0, v3

    .line 102
    goto :goto_0

    .line 87
    :cond_2
    add-int/lit8 v0, v1, 0x1

    :try_start_1
    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lbt;->a(Lal;[BLjava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 88
    if-eqz v2, :cond_a

    .line 90
    add-int/lit8 v0, v7, 0x63

    move-object v1, v2

    .line 84
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    move v1, v0

    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    move v0, v1

    move-object v1, v2

    goto :goto_2

    .line 109
    :cond_3
    :try_start_2
    invoke-virtual {v6}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    const-string v1, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 112
    :try_start_3
    invoke-static {v2, v0}, Lbt;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 122
    :try_start_4
    sget-object v1, Lbt;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lbr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 125
    const/16 v0, 0x6b1

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 115
    const/16 v0, 0x6b0

    goto :goto_0

    .line 128
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 131
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 138
    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-nez v0, :cond_7

    move v0, v4

    .line 143
    goto/16 :goto_0

    :cond_6
    move v0, v3

    .line 133
    goto/16 :goto_0

    .line 145
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 152
    const/4 v0, 0x1

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    if-nez v0, :cond_8

    move v0, v4

    .line 154
    goto/16 :goto_0

    .line 146
    :catch_2
    move-exception v0

    move v0, v4

    .line 148
    goto/16 :goto_0

    .line 156
    :cond_8
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 164
    :cond_9
    :try_start_7
    invoke-virtual {p4, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move v0, v5

    .line 166
    goto/16 :goto_0

    .line 157
    :catch_3
    move-exception v0

    move v0, v4

    .line 159
    goto/16 :goto_0

    .line 168
    :catch_4
    move-exception v0

    .line 172
    const/16 v0, 0x6b2

    goto/16 :goto_0

    :cond_a
    move v0, v1

    move-object v1, v2

    goto/16 :goto_2
.end method
