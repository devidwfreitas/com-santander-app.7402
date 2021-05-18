.class public final enum Lfot;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfot;

.field public static final enum DPP:Lfot;

.field public static final enum NORMAL:Lfot;

.field public static final enum PICKER:Lfot;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lfot;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lfot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfot;->NORMAL:Lfot;

    new-instance v0, Lfot;

    const-string v1, "PICKER"

    invoke-direct {v0, v1, v3}, Lfot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfot;->PICKER:Lfot;

    new-instance v0, Lfot;

    const-string v1, "DPP"

    invoke-direct {v0, v1, v4}, Lfot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfot;->DPP:Lfot;

    const/4 v0, 0x3

    new-array v0, v0, [Lfot;

    sget-object v1, Lfot;->NORMAL:Lfot;

    aput-object v1, v0, v2

    sget-object v1, Lfot;->PICKER:Lfot;

    aput-object v1, v0, v3

    sget-object v1, Lfot;->DPP:Lfot;

    aput-object v1, v0, v4

    sput-object v0, Lfot;->$VALUES:[Lfot;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfot;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lfot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfot;

    return-object v0
.end method

.method public static values()[Lfot;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lfot;->$VALUES:[Lfot;

    invoke-virtual {v0}, [Lfot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfot;

    return-object v0
.end method
