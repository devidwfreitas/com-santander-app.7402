.class public final enum Laju;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laju;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laju;

.field public static final enum USER_JOVEM_PROFISSIONAL:Laju;

.field public static final enum USER_PRIVATE:Laju;

.field public static final enum USER_SANTANDER:Laju;

.field public static final enum USER_SELECT:Laju;

.field public static final enum USER_UNIVERSIDADES:Laju;

.field public static final enum USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laju;

.field public static final enum USER_VAN_GOGH:Laju;

.field public static final enum USER_VAN_GOGH_UNIVERSIDADES:Laju;


# instance fields
.field private final userSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Laju;

    const-string v1, "USER_SANTANDER"

    const-string v2, "CL"

    invoke-direct {v0, v1, v4, v2}, Laju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laju;->USER_SANTANDER:Laju;

    new-instance v0, Laju;

    const-string v1, "USER_VAN_GOGH"

    const-string v2, "VG"

    invoke-direct {v0, v1, v5, v2}, Laju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laju;->USER_VAN_GOGH:Laju;

    new-instance v0, Laju;

    const-string v1, "USER_SELECT"

    const-string v2, "SE"

    invoke-direct {v0, v1, v6, v2}, Laju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laju;->USER_SELECT:Laju;

    new-instance v0, Laju;

    const-string v1, "USER_UNIVERSIDADES"

    const-string v2, "UN"

    invoke-direct {v0, v1, v7, v2}, Laju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laju;->USER_UNIVERSIDADES:Laju;

    new-instance v0, Laju;

    const-string v1, "USER_VAN_GOGH_UNIVERSIDADES"

    const-string v2, "VGUN"

    invoke-direct {v0, v1, v8, v2}, Laju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laju;->USER_VAN_GOGH_UNIVERSIDADES:Laju;

    new-instance v0, Laju;

    const-string v1, "USER_JOVEM_PROFISSIONAL"

    const/4 v2, 0x5

    const-string v3, "JP"

    invoke-direct {v0, v1, v2, v3}, Laju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laju;->USER_JOVEM_PROFISSIONAL:Laju;

    new-instance v0, Laju;

    const-string v1, "USER_UNIVERSIDADES_JOVEM_PROFISSIONAL"

    const/4 v2, 0x6

    const-string v3, "UNJP"

    invoke-direct {v0, v1, v2, v3}, Laju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laju;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laju;

    new-instance v0, Laju;

    const-string v1, "USER_PRIVATE"

    const/4 v2, 0x7

    const-string v3, "PR"

    invoke-direct {v0, v1, v2, v3}, Laju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laju;->USER_PRIVATE:Laju;

    const/16 v0, 0x8

    new-array v0, v0, [Laju;

    sget-object v1, Laju;->USER_SANTANDER:Laju;

    aput-object v1, v0, v4

    sget-object v1, Laju;->USER_VAN_GOGH:Laju;

    aput-object v1, v0, v5

    sget-object v1, Laju;->USER_SELECT:Laju;

    aput-object v1, v0, v6

    sget-object v1, Laju;->USER_UNIVERSIDADES:Laju;

    aput-object v1, v0, v7

    sget-object v1, Laju;->USER_VAN_GOGH_UNIVERSIDADES:Laju;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Laju;->USER_JOVEM_PROFISSIONAL:Laju;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Laju;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laju;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Laju;->USER_PRIVATE:Laju;

    aput-object v2, v0, v1

    sput-object v0, Laju;->$VALUES:[Laju;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Laju;->userSegment:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laju;
    .locals 1

    const-class v0, Laju;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laju;

    return-object v0
.end method

.method public static values()[Laju;
    .locals 1

    sget-object v0, Laju;->$VALUES:[Laju;

    invoke-virtual {v0}, [Laju;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laju;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    invoke-virtual {p0}, Laju;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laju;->userSegment:Ljava/lang/String;

    return-object v0
.end method
