.class final enum Leyd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leyd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leyd;

.field public static final enum ALPHA:Leyd;

.field public static final enum ISO_IEC_646:Leyd;

.field public static final enum NUMERIC:Leyd;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Leyd;

    const-string v1, "NUMERIC"

    invoke-direct {v0, v1, v2}, Leyd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leyd;->NUMERIC:Leyd;

    .line 39
    new-instance v0, Leyd;

    const-string v1, "ALPHA"

    invoke-direct {v0, v1, v3}, Leyd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leyd;->ALPHA:Leyd;

    .line 40
    new-instance v0, Leyd;

    const-string v1, "ISO_IEC_646"

    invoke-direct {v0, v1, v4}, Leyd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leyd;->ISO_IEC_646:Leyd;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Leyd;

    sget-object v1, Leyd;->NUMERIC:Leyd;

    aput-object v1, v0, v2

    sget-object v1, Leyd;->ALPHA:Leyd;

    aput-object v1, v0, v3

    sget-object v1, Leyd;->ISO_IEC_646:Leyd;

    aput-object v1, v0, v4

    sput-object v0, Leyd;->$VALUES:[Leyd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leyd;
    .locals 1

    .prologue
    .line 37
    const-class v0, Leyd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leyd;

    return-object v0
.end method

.method public static values()[Leyd;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Leyd;->$VALUES:[Leyd;

    invoke-virtual {v0}, [Leyd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leyd;

    return-object v0
.end method
