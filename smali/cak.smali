.class public final enum Lcak;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcak;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcak;

.field public static final enum APP_NON_USERS:Lcak;

.field public static final enum APP_USERS:Lcak;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcak;

    const-string v1, "APP_USERS"

    invoke-direct {v0, v1, v2}, Lcak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcak;->APP_USERS:Lcak;

    .line 41
    new-instance v0, Lcak;

    const-string v1, "APP_NON_USERS"

    invoke-direct {v0, v1, v3}, Lcak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcak;->APP_NON_USERS:Lcak;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcak;

    sget-object v1, Lcak;->APP_USERS:Lcak;

    aput-object v1, v0, v2

    sget-object v1, Lcak;->APP_NON_USERS:Lcak;

    aput-object v1, v0, v3

    sput-object v0, Lcak;->$VALUES:[Lcak;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcak;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcak;

    return-object v0
.end method

.method public static values()[Lcak;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcak;->$VALUES:[Lcak;

    invoke-virtual {v0}, [Lcak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcak;

    return-object v0
.end method
