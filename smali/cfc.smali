.class public synthetic Lcfc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 377
    invoke-static {}, Lcfs;->values()[Lcfs;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcfc;->c:[I

    :try_start_0
    sget-object v0, Lcfc;->c:[I

    sget-object v1, Lcfs;->VERTICAL:Lcfs;

    invoke-virtual {v1}, Lcfs;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcfc;->c:[I

    sget-object v1, Lcfs;->HORIZONTAL:Lcfs;

    invoke-virtual {v1}, Lcfs;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    .line 380
    :goto_1
    invoke-static {}, Lcfr;->values()[Lcfr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcfc;->b:[I

    :try_start_2
    sget-object v0, Lcfc;->b:[I

    sget-object v1, Lcfr;->LEFT:Lcfr;

    invoke-virtual {v1}, Lcfr;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcfc;->b:[I

    sget-object v1, Lcfr;->RIGHT:Lcfr;

    invoke-virtual {v1}, Lcfr;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcfc;->b:[I

    sget-object v1, Lcfr;->CENTER:Lcfr;

    invoke-virtual {v1}, Lcfr;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    .line 395
    :goto_4
    invoke-static {}, Lcfu;->values()[Lcfu;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcfc;->a:[I

    :try_start_5
    sget-object v0, Lcfc;->a:[I

    sget-object v1, Lcfu;->TOP:Lcfu;

    invoke-virtual {v1}, Lcfu;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcfc;->a:[I

    sget-object v1, Lcfu;->BOTTOM:Lcfu;

    invoke-virtual {v1}, Lcfu;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    .line 380
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    .line 377
    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
