.class public final enum Lbiz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbiz;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbiz;

.field public static final enum DELETE:Lbiz;

.field public static final enum GET:Lbiz;

.field public static final enum POST:Lbiz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lbiz;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lbiz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbiz;->GET:Lbiz;

    .line 35
    new-instance v0, Lbiz;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lbiz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbiz;->POST:Lbiz;

    .line 40
    new-instance v0, Lbiz;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lbiz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbiz;->DELETE:Lbiz;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lbiz;

    sget-object v1, Lbiz;->GET:Lbiz;

    aput-object v1, v0, v2

    sget-object v1, Lbiz;->POST:Lbiz;

    aput-object v1, v0, v3

    sget-object v1, Lbiz;->DELETE:Lbiz;

    aput-object v1, v0, v4

    sput-object v0, Lbiz;->$VALUES:[Lbiz;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbiz;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lbiz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbiz;

    return-object v0
.end method

.method public static values()[Lbiz;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lbiz;->$VALUES:[Lbiz;

    invoke-virtual {v0}, [Lbiz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbiz;

    return-object v0
.end method
