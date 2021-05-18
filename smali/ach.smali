.class public final enum Lach;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lach;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lach;

.field public static final enum USER_JOVEM_PROFISSIONAL:Lach;

.field public static final enum USER_PRIVATE:Lach;

.field public static final enum USER_SANTANDER:Lach;

.field public static final enum USER_SELECT:Lach;

.field public static final enum USER_UNIVERSIDADES:Lach;

.field public static final enum USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Lach;

.field public static final enum USER_VAN_GOGH:Lach;

.field public static final enum USER_VAN_GOGH_UNIVERSIDADES:Lach;


# instance fields
.field private final userSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lach;

    const-string v1, "USER_SANTANDER"

    const-string v2, "CL"

    invoke-direct {v0, v1, v4, v2}, Lach;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lach;->USER_SANTANDER:Lach;

    .line 10
    new-instance v0, Lach;

    const-string v1, "USER_VAN_GOGH"

    const-string v2, "VG"

    invoke-direct {v0, v1, v5, v2}, Lach;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lach;->USER_VAN_GOGH:Lach;

    .line 11
    new-instance v0, Lach;

    const-string v1, "USER_SELECT"

    const-string v2, "SE"

    invoke-direct {v0, v1, v6, v2}, Lach;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lach;->USER_SELECT:Lach;

    .line 12
    new-instance v0, Lach;

    const-string v1, "USER_UNIVERSIDADES"

    const-string v2, "UN"

    invoke-direct {v0, v1, v7, v2}, Lach;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lach;->USER_UNIVERSIDADES:Lach;

    .line 13
    new-instance v0, Lach;

    const-string v1, "USER_VAN_GOGH_UNIVERSIDADES"

    const-string v2, "VGUN"

    invoke-direct {v0, v1, v8, v2}, Lach;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lach;->USER_VAN_GOGH_UNIVERSIDADES:Lach;

    .line 14
    new-instance v0, Lach;

    const-string v1, "USER_JOVEM_PROFISSIONAL"

    const/4 v2, 0x5

    const-string v3, "JP"

    invoke-direct {v0, v1, v2, v3}, Lach;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lach;->USER_JOVEM_PROFISSIONAL:Lach;

    .line 15
    new-instance v0, Lach;

    const-string v1, "USER_UNIVERSIDADES_JOVEM_PROFISSIONAL"

    const/4 v2, 0x6

    const-string v3, "UNJP"

    invoke-direct {v0, v1, v2, v3}, Lach;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lach;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Lach;

    .line 16
    new-instance v0, Lach;

    const-string v1, "USER_PRIVATE"

    const/4 v2, 0x7

    const-string v3, "PR"

    invoke-direct {v0, v1, v2, v3}, Lach;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lach;->USER_PRIVATE:Lach;

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Lach;

    sget-object v1, Lach;->USER_SANTANDER:Lach;

    aput-object v1, v0, v4

    sget-object v1, Lach;->USER_VAN_GOGH:Lach;

    aput-object v1, v0, v5

    sget-object v1, Lach;->USER_SELECT:Lach;

    aput-object v1, v0, v6

    sget-object v1, Lach;->USER_UNIVERSIDADES:Lach;

    aput-object v1, v0, v7

    sget-object v1, Lach;->USER_VAN_GOGH_UNIVERSIDADES:Lach;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lach;->USER_JOVEM_PROFISSIONAL:Lach;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lach;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Lach;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lach;->USER_PRIVATE:Lach;

    aput-object v2, v0, v1

    sput-object v0, Lach;->$VALUES:[Lach;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lach;->userSegment:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lach;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lach;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lach;

    return-object v0
.end method

.method public static values()[Lach;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lach;->$VALUES:[Lach;

    invoke-virtual {v0}, [Lach;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lach;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lach;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lach;->userSegment:Ljava/lang/String;

    return-object v0
.end method
