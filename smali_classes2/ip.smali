.class public final enum Lip;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lip;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lip;

.field public static final enum HUB:Lip;

.field public static final enum PAAS:Lip;

.field public static final enum REST:Lip;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lip;

    const-string v1, "HUB"

    invoke-direct {v0, v1, v2}, Lip;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lip;->HUB:Lip;

    .line 10
    new-instance v0, Lip;

    const-string v1, "PAAS"

    invoke-direct {v0, v1, v3}, Lip;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lip;->PAAS:Lip;

    .line 11
    new-instance v0, Lip;

    const-string v1, "REST"

    invoke-direct {v0, v1, v4}, Lip;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lip;->REST:Lip;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lip;

    sget-object v1, Lip;->HUB:Lip;

    aput-object v1, v0, v2

    sget-object v1, Lip;->PAAS:Lip;

    aput-object v1, v0, v3

    sget-object v1, Lip;->REST:Lip;

    aput-object v1, v0, v4

    sput-object v0, Lip;->$VALUES:[Lip;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lip;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lip;

    return-object v0
.end method

.method public static values()[Lip;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lip;->$VALUES:[Lip;

    invoke-virtual {v0}, [Lip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lip;

    return-object v0
.end method
