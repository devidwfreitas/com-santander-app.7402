.class public final enum Lfcs;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfcs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfcs;

.field public static final enum CONTINUOUS:Lfcs;

.field public static final enum NONE:Lfcs;

.field public static final enum SINGLE:Lfcs;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lfcs;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lfcs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfcs;->NONE:Lfcs;

    .line 31
    new-instance v0, Lfcs;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v3}, Lfcs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfcs;->SINGLE:Lfcs;

    .line 32
    new-instance v0, Lfcs;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v4}, Lfcs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfcs;->CONTINUOUS:Lfcs;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lfcs;

    sget-object v1, Lfcs;->NONE:Lfcs;

    aput-object v1, v0, v2

    sget-object v1, Lfcs;->SINGLE:Lfcs;

    aput-object v1, v0, v3

    sget-object v1, Lfcs;->CONTINUOUS:Lfcs;

    aput-object v1, v0, v4

    sput-object v0, Lfcs;->$VALUES:[Lfcs;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfcs;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lfcs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfcs;

    return-object v0
.end method

.method public static values()[Lfcs;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lfcs;->$VALUES:[Lfcs;

    invoke-virtual {v0}, [Lfcs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfcs;

    return-object v0
.end method
