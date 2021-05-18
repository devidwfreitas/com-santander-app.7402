.class public final enum Lkoa;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkoa;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkoa;

.field public static final enum BENEFICIARIES:Lkoa;

.field public static final enum BILLINGDATA:Lkoa;

.field public static final enum CANCEL:Lkoa;

.field public static final enum CHAT:Lkoa;

.field public static final enum COVERAGE:Lkoa;

.field public static final enum DUPLICATE:Lkoa;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lkoa;

    const-string v1, "COVERAGE"

    invoke-direct {v0, v1, v3}, Lkoa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkoa;->COVERAGE:Lkoa;

    new-instance v0, Lkoa;

    const-string v1, "BENEFICIARIES"

    invoke-direct {v0, v1, v4}, Lkoa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkoa;->BENEFICIARIES:Lkoa;

    new-instance v0, Lkoa;

    const-string v1, "BILLINGDATA"

    invoke-direct {v0, v1, v5}, Lkoa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkoa;->BILLINGDATA:Lkoa;

    new-instance v0, Lkoa;

    const-string v1, "DUPLICATE"

    invoke-direct {v0, v1, v6}, Lkoa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkoa;->DUPLICATE:Lkoa;

    new-instance v0, Lkoa;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v7}, Lkoa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkoa;->CHAT:Lkoa;

    new-instance v0, Lkoa;

    const-string v1, "CANCEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lkoa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkoa;->CANCEL:Lkoa;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Lkoa;

    sget-object v1, Lkoa;->COVERAGE:Lkoa;

    aput-object v1, v0, v3

    sget-object v1, Lkoa;->BENEFICIARIES:Lkoa;

    aput-object v1, v0, v4

    sget-object v1, Lkoa;->BILLINGDATA:Lkoa;

    aput-object v1, v0, v5

    sget-object v1, Lkoa;->DUPLICATE:Lkoa;

    aput-object v1, v0, v6

    sget-object v1, Lkoa;->CHAT:Lkoa;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lkoa;->CANCEL:Lkoa;

    aput-object v2, v0, v1

    sput-object v0, Lkoa;->$VALUES:[Lkoa;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkoa;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lkoa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkoa;

    return-object v0
.end method

.method public static values()[Lkoa;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lkoa;->$VALUES:[Lkoa;

    invoke-virtual {v0}, [Lkoa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkoa;

    return-object v0
.end method
