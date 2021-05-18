.class public final enum Lbtm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbtm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbtm;

.field public static final enum AUTOMATIC:Lbtm;

.field public static DEFAULT:Lbtm;

.field public static final enum DISPLAY_ALWAYS:Lbtm;

.field public static final enum NEVER_DISPLAY:Lbtm;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-instance v0, Lbtm;

    const-string v1, "AUTOMATIC"

    const-string v2, "automatic"

    invoke-direct {v0, v1, v3, v2, v3}, Lbtm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lbtm;->AUTOMATIC:Lbtm;

    .line 83
    new-instance v0, Lbtm;

    const-string v1, "DISPLAY_ALWAYS"

    const-string v2, "display_always"

    invoke-direct {v0, v1, v4, v2, v4}, Lbtm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lbtm;->DISPLAY_ALWAYS:Lbtm;

    .line 88
    new-instance v0, Lbtm;

    const-string v1, "NEVER_DISPLAY"

    const-string v2, "never_display"

    invoke-direct {v0, v1, v5, v2, v5}, Lbtm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lbtm;->NEVER_DISPLAY:Lbtm;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lbtm;

    sget-object v1, Lbtm;->AUTOMATIC:Lbtm;

    aput-object v1, v0, v3

    sget-object v1, Lbtm;->DISPLAY_ALWAYS:Lbtm;

    aput-object v1, v0, v4

    sget-object v1, Lbtm;->NEVER_DISPLAY:Lbtm;

    aput-object v1, v0, v5

    sput-object v0, Lbtm;->$VALUES:[Lbtm;

    .line 90
    sget-object v0, Lbtm;->AUTOMATIC:Lbtm;

    sput-object v0, Lbtm;->DEFAULT:Lbtm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-object p3, p0, Lbtm;->stringValue:Ljava/lang/String;

    .line 106
    iput p4, p0, Lbtm;->intValue:I

    .line 107
    return-void
.end method

.method public static fromInt(I)Lbtm;
    .locals 5

    .prologue
    .line 93
    invoke-static {}, Lbtm;->values()[Lbtm;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 94
    invoke-virtual {v0}, Lbtm;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 99
    :goto_1
    return-object v0

    .line 93
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lbtm;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lbtm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbtm;

    return-object v0
.end method

.method public static values()[Lbtm;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lbtm;->$VALUES:[Lbtm;

    invoke-virtual {v0}, [Lbtm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbtm;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lbtm;->intValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbtm;->stringValue:Ljava/lang/String;

    return-object v0
.end method
