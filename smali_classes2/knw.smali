.class public final enum Lknw;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lknw;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lknw;

.field public static final enum AUDIO:Lknw;

.field public static final enum JPG:Lknw;

.field public static final enum PDF:Lknw;

.field public static final enum PNG:Lknw;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lknw;

    const-string v1, "PNG"

    invoke-direct {v0, v1, v2}, Lknw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lknw;->PNG:Lknw;

    new-instance v0, Lknw;

    const-string v1, "JPG"

    invoke-direct {v0, v1, v3}, Lknw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lknw;->JPG:Lknw;

    new-instance v0, Lknw;

    const-string v1, "PDF"

    invoke-direct {v0, v1, v4}, Lknw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lknw;->PDF:Lknw;

    new-instance v0, Lknw;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v5}, Lknw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lknw;->AUDIO:Lknw;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lknw;

    sget-object v1, Lknw;->PNG:Lknw;

    aput-object v1, v0, v2

    sget-object v1, Lknw;->JPG:Lknw;

    aput-object v1, v0, v3

    sget-object v1, Lknw;->PDF:Lknw;

    aput-object v1, v0, v4

    sget-object v1, Lknw;->AUDIO:Lknw;

    aput-object v1, v0, v5

    sput-object v0, Lknw;->$VALUES:[Lknw;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lknw;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lknw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lknw;

    return-object v0
.end method

.method public static values()[Lknw;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lknw;->$VALUES:[Lknw;

    invoke-virtual {v0}, [Lknw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lknw;

    return-object v0
.end method
