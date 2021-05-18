.class public final enum Lcck;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcck;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcck;

.field public static final enum CENTER:Lcck;

.field public static DEFAULT:Lcck;

.field public static final enum LEFT:Lcck;

.field public static final enum RIGHT:Lcck;


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

    .line 169
    new-instance v0, Lcck;

    const-string v1, "CENTER"

    const-string v2, "center"

    invoke-direct {v0, v1, v3, v2, v3}, Lcck;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcck;->CENTER:Lcck;

    .line 175
    new-instance v0, Lcck;

    const-string v1, "LEFT"

    const-string v2, "left"

    invoke-direct {v0, v1, v4, v2, v4}, Lcck;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcck;->LEFT:Lcck;

    .line 182
    new-instance v0, Lcck;

    const-string v1, "RIGHT"

    const-string v2, "right"

    invoke-direct {v0, v1, v5, v2, v5}, Lcck;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcck;->RIGHT:Lcck;

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Lcck;

    sget-object v1, Lcck;->CENTER:Lcck;

    aput-object v1, v0, v3

    sget-object v1, Lcck;->LEFT:Lcck;

    aput-object v1, v0, v4

    sget-object v1, Lcck;->RIGHT:Lcck;

    aput-object v1, v0, v5

    sput-object v0, Lcck;->$VALUES:[Lcck;

    .line 184
    sget-object v0, Lcck;->CENTER:Lcck;

    sput-object v0, Lcck;->DEFAULT:Lcck;

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
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 199
    iput-object p3, p0, Lcck;->stringValue:Ljava/lang/String;

    .line 200
    iput p4, p0, Lcck;->intValue:I

    .line 201
    return-void
.end method

.method public static synthetic access$200(Lcck;)I
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcck;->getValue()I

    move-result v0

    return v0
.end method

.method public static fromInt(I)Lcck;
    .locals 5

    .prologue
    .line 187
    invoke-static {}, Lcck;->values()[Lcck;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 188
    invoke-direct {v0}, Lcck;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 193
    :goto_1
    return-object v0

    .line 187
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getValue()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcck;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcck;
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcck;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcck;

    return-object v0
.end method

.method public static values()[Lcck;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcck;->$VALUES:[Lcck;

    invoke-virtual {v0}, [Lcck;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcck;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcck;->stringValue:Ljava/lang/String;

    return-object v0
.end method
