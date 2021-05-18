.class public final enum Laee;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Laee;

.field public static final enum USER_JOVEM_PROFISSIONAL:Laee;

.field public static final enum USER_PRIVATE:Laee;

.field public static final enum USER_SANTANDER:Laee;

.field public static final enum USER_SELECT:Laee;

.field public static final enum USER_UNIVERSIDADES:Laee;

.field public static final enum USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laee;

.field public static final enum USER_VAN_GOGH:Laee;

.field public static final enum USER_VAN_GOGH_UNIVERSIDADES:Laee;


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

    new-instance v0, Laee;

    const-string v1, "USER_SANTANDER"

    const-string v2, "CL"

    invoke-direct {v0, v1, v4, v2}, Laee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laee;->USER_SANTANDER:Laee;

    new-instance v0, Laee;

    const-string v1, "USER_VAN_GOGH"

    const-string v2, "VG"

    invoke-direct {v0, v1, v5, v2}, Laee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laee;->USER_VAN_GOGH:Laee;

    new-instance v0, Laee;

    const-string v1, "USER_SELECT"

    const-string v2, "SE"

    invoke-direct {v0, v1, v6, v2}, Laee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laee;->USER_SELECT:Laee;

    new-instance v0, Laee;

    const-string v1, "USER_UNIVERSIDADES"

    const-string v2, "UN"

    invoke-direct {v0, v1, v7, v2}, Laee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laee;->USER_UNIVERSIDADES:Laee;

    new-instance v0, Laee;

    const-string v1, "USER_VAN_GOGH_UNIVERSIDADES"

    const-string v2, "VGUN"

    invoke-direct {v0, v1, v8, v2}, Laee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laee;->USER_VAN_GOGH_UNIVERSIDADES:Laee;

    new-instance v0, Laee;

    const-string v1, "USER_JOVEM_PROFISSIONAL"

    const/4 v2, 0x5

    const-string v3, "JP"

    invoke-direct {v0, v1, v2, v3}, Laee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laee;->USER_JOVEM_PROFISSIONAL:Laee;

    new-instance v0, Laee;

    const-string v1, "USER_UNIVERSIDADES_JOVEM_PROFISSIONAL"

    const/4 v2, 0x6

    const-string v3, "UNJP"

    invoke-direct {v0, v1, v2, v3}, Laee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laee;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laee;

    new-instance v0, Laee;

    const-string v1, "USER_PRIVATE"

    const/4 v2, 0x7

    const-string v3, "PR"

    invoke-direct {v0, v1, v2, v3}, Laee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laee;->USER_PRIVATE:Laee;

    const/16 v0, 0x8

    new-array v0, v0, [Laee;

    sget-object v1, Laee;->USER_SANTANDER:Laee;

    aput-object v1, v0, v4

    sget-object v1, Laee;->USER_VAN_GOGH:Laee;

    aput-object v1, v0, v5

    sget-object v1, Laee;->USER_SELECT:Laee;

    aput-object v1, v0, v6

    sget-object v1, Laee;->USER_UNIVERSIDADES:Laee;

    aput-object v1, v0, v7

    sget-object v1, Laee;->USER_VAN_GOGH_UNIVERSIDADES:Laee;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Laee;->USER_JOVEM_PROFISSIONAL:Laee;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Laee;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laee;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Laee;->USER_PRIVATE:Laee;

    aput-object v2, v0, v1

    sput-object v0, Laee;->$VALUES:[Laee;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Laee;->userSegment:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laee;
    .locals 1

    const-class v0, Laee;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laee;

    return-object v0
.end method

.method public static values()[Laee;
    .locals 1

    sget-object v0, Laee;->$VALUES:[Laee;

    invoke-virtual {v0}, [Laee;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laee;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    invoke-virtual {p0}, Laee;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laee;->userSegment:Ljava/lang/String;

    return-object v0
.end method
