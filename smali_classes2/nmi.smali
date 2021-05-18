.class abstract enum Lnmi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnmi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnmi;

.field public static final enum RELEASE:Lnmi;

.field public static final enum RESTORE:Lnmi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lnmj;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v2}, Lnmj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnmi;->RELEASE:Lnmi;

    .line 97
    new-instance v0, Lnmk;

    const-string v1, "RESTORE"

    invoke-direct {v0, v1, v3}, Lnmk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnmi;->RESTORE:Lnmi;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Lnmi;

    sget-object v1, Lnmi;->RELEASE:Lnmi;

    aput-object v1, v0, v2

    sget-object v1, Lnmi;->RESTORE:Lnmi;

    aput-object v1, v0, v3

    sput-object v0, Lnmi;->$VALUES:[Lnmi;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnmh;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lnmi;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnmi;
    .locals 1

    .prologue
    .line 90
    const-class v0, Lnmi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnmi;

    return-object v0
.end method

.method public static values()[Lnmi;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lnmi;->$VALUES:[Lnmi;

    invoke-virtual {v0}, [Lnmi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnmi;

    return-object v0
.end method


# virtual methods
.method abstract execute(Lnmf;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnmf",
            "<*>;)V"
        }
    .end annotation
.end method
