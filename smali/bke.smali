.class final enum Lbke;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbke;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbke;

.field public static final enum PRIVATE:Lbke;

.field public static final enum SHARED:Lbke;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lbke;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v2}, Lbke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbke;->PRIVATE:Lbke;

    .line 47
    new-instance v0, Lbke;

    const-string v1, "SHARED"

    invoke-direct {v0, v1, v3}, Lbke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbke;->SHARED:Lbke;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lbke;

    sget-object v1, Lbke;->PRIVATE:Lbke;

    aput-object v1, v0, v2

    sget-object v1, Lbke;->SHARED:Lbke;

    aput-object v1, v0, v3

    sput-object v0, Lbke;->$VALUES:[Lbke;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbke;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lbke;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbke;

    return-object v0
.end method

.method public static values()[Lbke;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lbke;->$VALUES:[Lbke;

    invoke-virtual {v0}, [Lbke;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbke;

    return-object v0
.end method
