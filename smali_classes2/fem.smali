.class public final enum Lfem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfem;

.field public static final enum AUTO:Lfem;

.field public static final enum CONTINUOUS:Lfem;

.field public static final enum INFINITY:Lfem;

.field public static final enum MACRO:Lfem;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lfem;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lfem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfem;->AUTO:Lfem;

    .line 21
    new-instance v0, Lfem;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v3}, Lfem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfem;->CONTINUOUS:Lfem;

    .line 22
    new-instance v0, Lfem;

    const-string v1, "INFINITY"

    invoke-direct {v0, v1, v4}, Lfem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfem;->INFINITY:Lfem;

    .line 23
    new-instance v0, Lfem;

    const-string v1, "MACRO"

    invoke-direct {v0, v1, v5}, Lfem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfem;->MACRO:Lfem;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lfem;

    sget-object v1, Lfem;->AUTO:Lfem;

    aput-object v1, v0, v2

    sget-object v1, Lfem;->CONTINUOUS:Lfem;

    aput-object v1, v0, v3

    sget-object v1, Lfem;->INFINITY:Lfem;

    aput-object v1, v0, v4

    sget-object v1, Lfem;->MACRO:Lfem;

    aput-object v1, v0, v5

    sput-object v0, Lfem;->$VALUES:[Lfem;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfem;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lfem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfem;

    return-object v0
.end method

.method public static values()[Lfem;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lfem;->$VALUES:[Lfem;

    invoke-virtual {v0}, [Lfem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfem;

    return-object v0
.end method
