.class public final enum Lccj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lccj;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccj;

.field public static final enum BOTTOM:Lccj;

.field public static DEFAULT:Lccj;

.field public static final enum INLINE:Lccj;

.field public static final enum TOP:Lccj;


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

    .line 224
    new-instance v0, Lccj;

    const-string v1, "BOTTOM"

    const-string v2, "bottom"

    invoke-direct {v0, v1, v3, v2, v3}, Lccj;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lccj;->BOTTOM:Lccj;

    .line 232
    new-instance v0, Lccj;

    const-string v1, "INLINE"

    const-string v2, "inline"

    invoke-direct {v0, v1, v4, v2, v4}, Lccj;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lccj;->INLINE:Lccj;

    .line 238
    new-instance v0, Lccj;

    const-string v1, "TOP"

    const-string v2, "top"

    invoke-direct {v0, v1, v5, v2, v5}, Lccj;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lccj;->TOP:Lccj;

    .line 217
    const/4 v0, 0x3

    new-array v0, v0, [Lccj;

    sget-object v1, Lccj;->BOTTOM:Lccj;

    aput-object v1, v0, v3

    sget-object v1, Lccj;->INLINE:Lccj;

    aput-object v1, v0, v4

    sget-object v1, Lccj;->TOP:Lccj;

    aput-object v1, v0, v5

    sput-object v0, Lccj;->$VALUES:[Lccj;

    .line 240
    sget-object v0, Lccj;->BOTTOM:Lccj;

    sput-object v0, Lccj;->DEFAULT:Lccj;

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
    .line 254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 255
    iput-object p3, p0, Lccj;->stringValue:Ljava/lang/String;

    .line 256
    iput p4, p0, Lccj;->intValue:I

    .line 257
    return-void
.end method

.method public static synthetic access$100(Lccj;)I
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Lccj;->getValue()I

    move-result v0

    return v0
.end method

.method public static fromInt(I)Lccj;
    .locals 5

    .prologue
    .line 243
    invoke-static {}, Lccj;->values()[Lccj;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 244
    invoke-direct {v0}, Lccj;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 249
    :goto_1
    return-object v0

    .line 243
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 249
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getValue()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lccj;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lccj;
    .locals 1

    .prologue
    .line 217
    const-class v0, Lccj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccj;

    return-object v0
.end method

.method public static values()[Lccj;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lccj;->$VALUES:[Lccj;

    invoke-virtual {v0}, [Lccj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccj;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lccj;->stringValue:Ljava/lang/String;

    return-object v0
.end method
