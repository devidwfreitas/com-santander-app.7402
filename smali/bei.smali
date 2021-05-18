.class final enum Lbei;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbei;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbei;

.field public static final enum Add:Lbei;

.field public static final enum Invert:Lbei;

.field public static final enum None:Lbei;

.field public static final enum Unknown:Lbei;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lbei;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lbei;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbei;->None:Lbei;

    .line 43
    new-instance v0, Lbei;

    const-string v1, "Add"

    invoke-direct {v0, v1, v3}, Lbei;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbei;->Add:Lbei;

    .line 44
    new-instance v0, Lbei;

    const-string v1, "Invert"

    invoke-direct {v0, v1, v4}, Lbei;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbei;->Invert:Lbei;

    .line 45
    new-instance v0, Lbei;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v5}, Lbei;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbei;->Unknown:Lbei;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lbei;

    sget-object v1, Lbei;->None:Lbei;

    aput-object v1, v0, v2

    sget-object v1, Lbei;->Add:Lbei;

    aput-object v1, v0, v3

    sget-object v1, Lbei;->Invert:Lbei;

    aput-object v1, v0, v4

    sget-object v1, Lbei;->Unknown:Lbei;

    aput-object v1, v0, v5

    sput-object v0, Lbei;->$VALUES:[Lbei;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbei;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lbei;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbei;

    return-object v0
.end method

.method public static values()[Lbei;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lbei;->$VALUES:[Lbei;

    invoke-virtual {v0}, [Lbei;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbei;

    return-object v0
.end method
