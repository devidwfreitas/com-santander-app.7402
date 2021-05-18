.class public final enum Lkuu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkuu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkuu;

.field public static final enum CAMERA:Lkuu;

.field public static final enum GONE:Lkuu;

.field public static final enum TO_VIEW:Lkuu;

.field public static final enum TRASH:Lkuu;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lkuu;

    const-string v1, "TRASH"

    invoke-direct {v0, v1, v2}, Lkuu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkuu;->TRASH:Lkuu;

    new-instance v0, Lkuu;

    const-string v1, "TO_VIEW"

    invoke-direct {v0, v1, v3}, Lkuu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkuu;->TO_VIEW:Lkuu;

    new-instance v0, Lkuu;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v4}, Lkuu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkuu;->CAMERA:Lkuu;

    new-instance v0, Lkuu;

    const-string v1, "GONE"

    invoke-direct {v0, v1, v5}, Lkuu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkuu;->GONE:Lkuu;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lkuu;

    sget-object v1, Lkuu;->TRASH:Lkuu;

    aput-object v1, v0, v2

    sget-object v1, Lkuu;->TO_VIEW:Lkuu;

    aput-object v1, v0, v3

    sget-object v1, Lkuu;->CAMERA:Lkuu;

    aput-object v1, v0, v4

    sget-object v1, Lkuu;->GONE:Lkuu;

    aput-object v1, v0, v5

    sput-object v0, Lkuu;->$VALUES:[Lkuu;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkuu;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lkuu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkuu;

    return-object v0
.end method

.method public static values()[Lkuu;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lkuu;->$VALUES:[Lkuu;

    invoke-virtual {v0}, [Lkuu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkuu;

    return-object v0
.end method
