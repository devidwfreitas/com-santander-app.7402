.class public final enum Llem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llem;

.field public static final enum SAFE:Llem;

.field public static final enum SAFE_SUN:Llem;

.field public static final enum UNSAFE:Llem;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Llem;

    const-string v1, "SAFE"

    invoke-direct {v0, v1, v2}, Llem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llem;->SAFE:Llem;

    new-instance v0, Llem;

    const-string v1, "SAFE_SUN"

    invoke-direct {v0, v1, v3}, Llem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llem;->SAFE_SUN:Llem;

    new-instance v0, Llem;

    const-string v1, "UNSAFE"

    invoke-direct {v0, v1, v4}, Llem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llem;->UNSAFE:Llem;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Llem;

    sget-object v1, Llem;->SAFE:Llem;

    aput-object v1, v0, v2

    sget-object v1, Llem;->SAFE_SUN:Llem;

    aput-object v1, v0, v3

    sget-object v1, Llem;->UNSAFE:Llem;

    aput-object v1, v0, v4

    sput-object v0, Llem;->$VALUES:[Llem;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llem;
    .locals 1

    .prologue
    .line 57
    const-class v0, Llem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llem;

    return-object v0
.end method

.method public static values()[Llem;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Llem;->$VALUES:[Llem;

    invoke-virtual {v0}, [Llem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llem;

    return-object v0
.end method
