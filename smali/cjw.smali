.class synthetic Lcjw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 505
    invoke-static {}, Lcfq;->values()[Lcfq;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcjw;->d:[I

    :try_start_0
    sget-object v0, Lcjw;->d:[I

    sget-object v1, Lcfq;->NONE:Lcfq;

    invoke-virtual {v1}, Lcfq;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v0, Lcjw;->d:[I

    sget-object v1, Lcfq;->EMPTY:Lcfq;

    invoke-virtual {v1}, Lcfq;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v0, Lcjw;->d:[I

    sget-object v1, Lcfq;->DEFAULT:Lcfq;

    invoke-virtual {v1}, Lcfq;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v0, Lcjw;->d:[I

    sget-object v1, Lcfq;->CIRCLE:Lcfq;

    invoke-virtual {v1}, Lcfq;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_3
    :try_start_4
    sget-object v0, Lcjw;->d:[I

    sget-object v1, Lcfq;->SQUARE:Lcfq;

    invoke-virtual {v1}, Lcfq;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v0, Lcjw;->d:[I

    sget-object v1, Lcfq;->LINE:Lcfq;

    invoke-virtual {v1}, Lcfq;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    .line 308
    :goto_5
    invoke-static {}, Lcfs;->values()[Lcfs;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcjw;->c:[I

    :try_start_6
    sget-object v0, Lcjw;->c:[I

    sget-object v1, Lcfs;->HORIZONTAL:Lcfs;

    invoke-virtual {v1}, Lcfs;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v0, Lcjw;->c:[I

    sget-object v1, Lcfs;->VERTICAL:Lcfs;

    invoke-virtual {v1}, Lcfs;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    .line 318
    :goto_7
    invoke-static {}, Lcfu;->values()[Lcfu;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcjw;->b:[I

    :try_start_8
    sget-object v0, Lcjw;->b:[I

    sget-object v1, Lcfu;->TOP:Lcfu;

    invoke-virtual {v1}, Lcfu;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    sget-object v0, Lcjw;->b:[I

    sget-object v1, Lcfu;->BOTTOM:Lcfu;

    invoke-virtual {v1}, Lcfu;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v0, Lcjw;->b:[I

    sget-object v1, Lcfu;->CENTER:Lcfu;

    invoke-virtual {v1}, Lcfu;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    .line 260
    :goto_a
    invoke-static {}, Lcfr;->values()[Lcfr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcjw;->a:[I

    :try_start_b
    sget-object v0, Lcjw;->a:[I

    sget-object v1, Lcfr;->LEFT:Lcfr;

    invoke-virtual {v1}, Lcfr;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v0, Lcjw;->a:[I

    sget-object v1, Lcfr;->RIGHT:Lcfr;

    invoke-virtual {v1}, Lcfr;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v0, Lcjw;->a:[I

    sget-object v1, Lcfr;->CENTER:Lcfr;

    invoke-virtual {v1}, Lcfr;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    return-void

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_b

    .line 318
    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_8

    .line 308
    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_6

    .line 505
    :catch_8
    move-exception v0

    goto/16 :goto_5

    :catch_9
    move-exception v0

    goto/16 :goto_4

    :catch_a
    move-exception v0

    goto/16 :goto_3

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_1

    :catch_d
    move-exception v0

    goto/16 :goto_0
.end method
