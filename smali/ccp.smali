.class public final enum Lccp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lccp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccp;

.field public static final enum BOX_COUNT:Lccp;

.field public static final enum BUTTON:Lccp;

.field public static DEFAULT:Lccp;

.field public static final enum STANDARD:Lccp;


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

    .line 116
    new-instance v0, Lccp;

    const-string v1, "STANDARD"

    const-string v2, "standard"

    invoke-direct {v0, v1, v3, v2, v3}, Lccp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lccp;->STANDARD:Lccp;

    .line 122
    new-instance v0, Lccp;

    const-string v1, "BUTTON"

    const-string v2, "button"

    invoke-direct {v0, v1, v4, v2, v4}, Lccp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lccp;->BUTTON:Lccp;

    .line 128
    new-instance v0, Lccp;

    const-string v1, "BOX_COUNT"

    const-string v2, "box_count"

    invoke-direct {v0, v1, v5, v2, v5}, Lccp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lccp;->BOX_COUNT:Lccp;

    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [Lccp;

    sget-object v1, Lccp;->STANDARD:Lccp;

    aput-object v1, v0, v3

    sget-object v1, Lccp;->BUTTON:Lccp;

    aput-object v1, v0, v4

    sget-object v1, Lccp;->BOX_COUNT:Lccp;

    aput-object v1, v0, v5

    sput-object v0, Lccp;->$VALUES:[Lccp;

    .line 130
    sget-object v0, Lccp;->STANDARD:Lccp;

    sput-object v0, Lccp;->DEFAULT:Lccp;

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
    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    iput-object p3, p0, Lccp;->stringValue:Ljava/lang/String;

    .line 146
    iput p4, p0, Lccp;->intValue:I

    .line 147
    return-void
.end method

.method public static synthetic access$000(Lccp;)I
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lccp;->getValue()I

    move-result v0

    return v0
.end method

.method public static fromInt(I)Lccp;
    .locals 5

    .prologue
    .line 133
    invoke-static {}, Lccp;->values()[Lccp;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 134
    invoke-direct {v0}, Lccp;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 139
    :goto_1
    return-object v0

    .line 133
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getValue()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lccp;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lccp;
    .locals 1

    .prologue
    .line 109
    const-class v0, Lccp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccp;

    return-object v0
.end method

.method public static values()[Lccp;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lccp;->$VALUES:[Lccp;

    invoke-virtual {v0}, [Lccp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccp;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lccp;->stringValue:Ljava/lang/String;

    return-object v0
.end method
