.class public final enum Lapz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lapz;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lapz;

.field public static final enum ADD:Lapz;

.field public static final enum DELETE:Lapz;

.field public static final enum GET:Lapz;

.field public static final enum POST:Lapz;

.field public static final enum PUT:Lapz;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lapz;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lapz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapz;->GET:Lapz;

    new-instance v0, Lapz;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lapz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapz;->POST:Lapz;

    new-instance v0, Lapz;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lapz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapz;->PUT:Lapz;

    new-instance v0, Lapz;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lapz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapz;->DELETE:Lapz;

    new-instance v0, Lapz;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v6}, Lapz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapz;->ADD:Lapz;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lapz;

    sget-object v1, Lapz;->GET:Lapz;

    aput-object v1, v0, v2

    sget-object v1, Lapz;->POST:Lapz;

    aput-object v1, v0, v3

    sget-object v1, Lapz;->PUT:Lapz;

    aput-object v1, v0, v4

    sget-object v1, Lapz;->DELETE:Lapz;

    aput-object v1, v0, v5

    sget-object v1, Lapz;->ADD:Lapz;

    aput-object v1, v0, v6

    sput-object v0, Lapz;->$VALUES:[Lapz;

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

.method public static valueOf(Ljava/lang/String;)Lapz;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lapz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lapz;

    return-object v0
.end method

.method public static values()[Lapz;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lapz;->$VALUES:[Lapz;

    invoke-virtual {v0}, [Lapz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapz;

    return-object v0
.end method
