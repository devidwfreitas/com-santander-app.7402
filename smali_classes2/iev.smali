.class public final enum Liev;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Liev;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Liev;

.field public static final enum DISABLE:Liev;

.field public static final enum ENABLE:Liev;

.field public static final enum FAILURE:Liev;

.field public static final enum MENU:Liev;

.field public static final enum OFFER:Liev;

.field public static final enum SUCCESS:Liev;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Liev;

    const-string v1, "OFFER"

    invoke-direct {v0, v1, v3}, Liev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liev;->OFFER:Liev;

    .line 12
    new-instance v0, Liev;

    const-string v1, "MENU"

    invoke-direct {v0, v1, v4}, Liev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liev;->MENU:Liev;

    .line 13
    new-instance v0, Liev;

    const-string v1, "ENABLE"

    invoke-direct {v0, v1, v5}, Liev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liev;->ENABLE:Liev;

    .line 14
    new-instance v0, Liev;

    const-string v1, "DISABLE"

    invoke-direct {v0, v1, v6}, Liev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liev;->DISABLE:Liev;

    .line 15
    new-instance v0, Liev;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v7}, Liev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liev;->SUCCESS:Liev;

    .line 16
    new-instance v0, Liev;

    const-string v1, "FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Liev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liev;->FAILURE:Liev;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Liev;

    sget-object v1, Liev;->OFFER:Liev;

    aput-object v1, v0, v3

    sget-object v1, Liev;->MENU:Liev;

    aput-object v1, v0, v4

    sget-object v1, Liev;->ENABLE:Liev;

    aput-object v1, v0, v5

    sget-object v1, Liev;->DISABLE:Liev;

    aput-object v1, v0, v6

    sget-object v1, Liev;->SUCCESS:Liev;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Liev;->FAILURE:Liev;

    aput-object v2, v0, v1

    sput-object v0, Liev;->$VALUES:[Liev;

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

.method public static valueOf(Ljava/lang/String;)Liev;
    .locals 1

    .prologue
    .line 10
    const-class v0, Liev;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Liev;

    return-object v0
.end method

.method public static values()[Liev;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Liev;->$VALUES:[Liev;

    invoke-virtual {v0}, [Liev;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liev;

    return-object v0
.end method
