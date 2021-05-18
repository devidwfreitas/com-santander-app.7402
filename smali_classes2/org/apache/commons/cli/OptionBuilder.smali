.class public final Lorg/apache/commons/cli/OptionBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static argName:Ljava/lang/String;

.field private static description:Ljava/lang/String;

.field private static instance:Lorg/apache/commons/cli/OptionBuilder;

.field private static longopt:Ljava/lang/String;

.field private static numberOfArgs:I

.field private static optionalArg:Z

.field private static required:Z

.field private static type:Ljava/lang/Object;

.field private static valuesep:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, -0x1

    sput v0, Lorg/apache/commons/cli/OptionBuilder;->numberOfArgs:I

    .line 58
    new-instance v0, Lorg/apache/commons/cli/OptionBuilder;

    invoke-direct {v0}, Lorg/apache/commons/cli/OptionBuilder;-><init>()V

    sput-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static create()Lorg/apache/commons/cli/Option;
    .locals 2

    .prologue
    .line 327
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->longopt:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 329
    invoke-static {}, Lorg/apache/commons/cli/OptionBuilder;->reset()V

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must specify longopt"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/commons/cli/OptionBuilder;->create(Ljava/lang/String;)Lorg/apache/commons/cli/Option;

    move-result-object v0

    return-object v0
.end method

.method public static create(C)Lorg/apache/commons/cli/Option;
    .locals 1

    .prologue
    .line 316
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/cli/OptionBuilder;->create(Ljava/lang/String;)Lorg/apache/commons/cli/Option;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/commons/cli/Option;
    .locals 2

    .prologue
    .line 348
    .line 351
    :try_start_0
    new-instance v0, Lorg/apache/commons/cli/Option;

    sget-object v1, Lorg/apache/commons/cli/OptionBuilder;->description:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v1, Lorg/apache/commons/cli/OptionBuilder;->longopt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setLongOpt(Ljava/lang/String;)V

    .line 355
    sget-boolean v1, Lorg/apache/commons/cli/OptionBuilder;->required:Z

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setRequired(Z)V

    .line 356
    sget-boolean v1, Lorg/apache/commons/cli/OptionBuilder;->optionalArg:Z

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setOptionalArg(Z)V

    .line 357
    sget v1, Lorg/apache/commons/cli/OptionBuilder;->numberOfArgs:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setArgs(I)V

    .line 358
    sget-object v1, Lorg/apache/commons/cli/OptionBuilder;->type:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setType(Ljava/lang/Object;)V

    .line 359
    sget-char v1, Lorg/apache/commons/cli/OptionBuilder;->valuesep:C

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setValueSeparator(C)V

    .line 360
    sget-object v1, Lorg/apache/commons/cli/OptionBuilder;->argName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setArgName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-static {}, Lorg/apache/commons/cli/OptionBuilder;->reset()V

    .line 367
    return-object v0

    .line 363
    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/apache/commons/cli/OptionBuilder;->reset()V

    throw v0
.end method

.method public static hasArg()Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    sput v0, Lorg/apache/commons/cli/OptionBuilder;->numberOfArgs:I

    .line 108
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method public static hasArg(Z)Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 120
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput v0, Lorg/apache/commons/cli/OptionBuilder;->numberOfArgs:I

    .line 122
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0

    .line 120
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static hasArgs()Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 219
    const/4 v0, -0x2

    sput v0, Lorg/apache/commons/cli/OptionBuilder;->numberOfArgs:I

    .line 221
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method public static hasArgs(I)Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 232
    sput p0, Lorg/apache/commons/cli/OptionBuilder;->numberOfArgs:I

    .line 234
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method public static hasOptionalArg()Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 244
    sput v0, Lorg/apache/commons/cli/OptionBuilder;->numberOfArgs:I

    .line 245
    sput-boolean v0, Lorg/apache/commons/cli/OptionBuilder;->optionalArg:Z

    .line 247
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method public static hasOptionalArgs()Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 257
    const/4 v0, -0x2

    sput v0, Lorg/apache/commons/cli/OptionBuilder;->numberOfArgs:I

    .line 258
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/commons/cli/OptionBuilder;->optionalArg:Z

    .line 260
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method public static hasOptionalArgs(I)Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 272
    sput p0, Lorg/apache/commons/cli/OptionBuilder;->numberOfArgs:I

    .line 273
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/commons/cli/OptionBuilder;->optionalArg:Z

    .line 275
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method public static isRequired()Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/commons/cli/OptionBuilder;->required:Z

    .line 147
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method public static isRequired(Z)Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 207
    sput-boolean p0, Lorg/apache/commons/cli/OptionBuilder;->required:Z

    .line 209
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method private static reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    sput-object v2, Lorg/apache/commons/cli/OptionBuilder;->description:Ljava/lang/String;

    .line 74
    const-string v0, "arg"

    sput-object v0, Lorg/apache/commons/cli/OptionBuilder;->argName:Ljava/lang/String;

    .line 75
    sput-object v2, Lorg/apache/commons/cli/OptionBuilder;->longopt:Ljava/lang/String;

    .line 76
    sput-object v2, Lorg/apache/commons/cli/OptionBuilder;->type:Ljava/lang/Object;

    .line 77
    sput-boolean v1, Lorg/apache/commons/cli/OptionBuilder;->required:Z

    .line 78
    const/4 v0, -0x1

    sput v0, Lorg/apache/commons/cli/OptionBuilder;->numberOfArgs:I

    .line 82
    sput-boolean v1, Lorg/apache/commons/cli/OptionBuilder;->optionalArg:Z

    .line 83
    sput-char v1, Lorg/apache/commons/cli/OptionBuilder;->valuesep:C

    .line 84
    return-void
.end method

.method public static withArgName(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 133
    sput-object p0, Lorg/apache/commons/cli/OptionBuilder;->argName:Ljava/lang/String;

    .line 135
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method public static withDescription(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 300
    sput-object p0, Lorg/apache/commons/cli/OptionBuilder;->description:Ljava/lang/String;

    .line 302
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method public static withLongOpt(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 94
    sput-object p0, Lorg/apache/commons/cli/OptionBuilder;->longopt:Ljava/lang/String;

    .line 96
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method public static withType(Ljava/lang/Object;)Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 287
    sput-object p0, Lorg/apache/commons/cli/OptionBuilder;->type:Ljava/lang/Object;

    .line 289
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method public static withValueSeparator()Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 193
    const/16 v0, 0x3d

    sput-char v0, Lorg/apache/commons/cli/OptionBuilder;->valuesep:C

    .line 195
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method

.method public static withValueSeparator(C)Lorg/apache/commons/cli/OptionBuilder;
    .locals 1

    .prologue
    .line 170
    sput-char p0, Lorg/apache/commons/cli/OptionBuilder;->valuesep:C

    .line 172
    sget-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-object v0
.end method
