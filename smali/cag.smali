.class public final enum Lcag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcag;

.field public static final enum FACEBOOK:Lcag;

.field public static final enum MESSENGER:Lcag;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    new-instance v0, Lcag;

    const-string v1, "FACEBOOK"

    const-string v2, "facebook"

    invoke-direct {v0, v1, v3, v2}, Lcag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcag;->FACEBOOK:Lcag;

    .line 141
    new-instance v0, Lcag;

    const-string v1, "MESSENGER"

    const-string v2, "messenger"

    invoke-direct {v0, v1, v4, v2}, Lcag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcag;->MESSENGER:Lcag;

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Lcag;

    sget-object v1, Lcag;->FACEBOOK:Lcag;

    aput-object v1, v0, v3

    sget-object v1, Lcag;->MESSENGER:Lcag;

    aput-object v1, v0, v4

    sput-object v0, Lcag;->$VALUES:[Lcag;

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
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput-object p3, p0, Lcag;->name:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcag;
    .locals 1

    .prologue
    .line 139
    const-class v0, Lcag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcag;

    return-object v0
.end method

.method public static values()[Lcag;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcag;->$VALUES:[Lcag;

    invoke-virtual {v0}, [Lcag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcag;

    return-object v0
.end method


# virtual methods
.method public equalsName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 150
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcag;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcag;->name:Ljava/lang/String;

    return-object v0
.end method
