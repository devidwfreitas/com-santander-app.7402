.class public final enum Lbcp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbcp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbcp;

.field public static final enum MaskModeAdd:Lbcp;

.field public static final enum MaskModeIntersect:Lbcp;

.field public static final enum MaskModeSubtract:Lbcp;

.field public static final enum MaskModeUnknown:Lbcp;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lbcp;

    const-string v1, "MaskModeAdd"

    invoke-direct {v0, v1, v2}, Lbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbcp;->MaskModeAdd:Lbcp;

    .line 12
    new-instance v0, Lbcp;

    const-string v1, "MaskModeSubtract"

    invoke-direct {v0, v1, v3}, Lbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbcp;->MaskModeSubtract:Lbcp;

    .line 13
    new-instance v0, Lbcp;

    const-string v1, "MaskModeIntersect"

    invoke-direct {v0, v1, v4}, Lbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbcp;->MaskModeIntersect:Lbcp;

    .line 14
    new-instance v0, Lbcp;

    const-string v1, "MaskModeUnknown"

    invoke-direct {v0, v1, v5}, Lbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbcp;->MaskModeUnknown:Lbcp;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lbcp;

    sget-object v1, Lbcp;->MaskModeAdd:Lbcp;

    aput-object v1, v0, v2

    sget-object v1, Lbcp;->MaskModeSubtract:Lbcp;

    aput-object v1, v0, v3

    sget-object v1, Lbcp;->MaskModeIntersect:Lbcp;

    aput-object v1, v0, v4

    sget-object v1, Lbcp;->MaskModeUnknown:Lbcp;

    aput-object v1, v0, v5

    sput-object v0, Lbcp;->$VALUES:[Lbcp;

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

.method public static valueOf(Ljava/lang/String;)Lbcp;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lbcp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbcp;

    return-object v0
.end method

.method public static values()[Lbcp;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lbcp;->$VALUES:[Lbcp;

    invoke-virtual {v0}, [Lbcp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbcp;

    return-object v0
.end method
