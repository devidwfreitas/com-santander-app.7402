.class public final enum Lesy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lesy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lesy;

.field public static final enum ADDRESSBOOK:Lesy;

.field public static final enum CALENDAR:Lesy;

.field public static final enum EMAIL_ADDRESS:Lesy;

.field public static final enum GEO:Lesy;

.field public static final enum ISBN:Lesy;

.field public static final enum PRODUCT:Lesy;

.field public static final enum SMS:Lesy;

.field public static final enum TEL:Lesy;

.field public static final enum TEXT:Lesy;

.field public static final enum URI:Lesy;

.field public static final enum VIN:Lesy;

.field public static final enum WIFI:Lesy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lesy;

    const-string v1, "ADDRESSBOOK"

    invoke-direct {v0, v1, v3}, Lesy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lesy;->ADDRESSBOOK:Lesy;

    .line 28
    new-instance v0, Lesy;

    const-string v1, "EMAIL_ADDRESS"

    invoke-direct {v0, v1, v4}, Lesy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lesy;->EMAIL_ADDRESS:Lesy;

    .line 29
    new-instance v0, Lesy;

    const-string v1, "PRODUCT"

    invoke-direct {v0, v1, v5}, Lesy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lesy;->PRODUCT:Lesy;

    .line 30
    new-instance v0, Lesy;

    const-string v1, "URI"

    invoke-direct {v0, v1, v6}, Lesy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lesy;->URI:Lesy;

    .line 31
    new-instance v0, Lesy;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v7}, Lesy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lesy;->TEXT:Lesy;

    .line 32
    new-instance v0, Lesy;

    const-string v1, "GEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lesy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lesy;->GEO:Lesy;

    .line 33
    new-instance v0, Lesy;

    const-string v1, "TEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lesy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lesy;->TEL:Lesy;

    .line 34
    new-instance v0, Lesy;

    const-string v1, "SMS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lesy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lesy;->SMS:Lesy;

    .line 35
    new-instance v0, Lesy;

    const-string v1, "CALENDAR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lesy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lesy;->CALENDAR:Lesy;

    .line 36
    new-instance v0, Lesy;

    const-string v1, "WIFI"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lesy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lesy;->WIFI:Lesy;

    .line 37
    new-instance v0, Lesy;

    const-string v1, "ISBN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lesy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lesy;->ISBN:Lesy;

    .line 38
    new-instance v0, Lesy;

    const-string v1, "VIN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lesy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lesy;->VIN:Lesy;

    .line 25
    const/16 v0, 0xc

    new-array v0, v0, [Lesy;

    sget-object v1, Lesy;->ADDRESSBOOK:Lesy;

    aput-object v1, v0, v3

    sget-object v1, Lesy;->EMAIL_ADDRESS:Lesy;

    aput-object v1, v0, v4

    sget-object v1, Lesy;->PRODUCT:Lesy;

    aput-object v1, v0, v5

    sget-object v1, Lesy;->URI:Lesy;

    aput-object v1, v0, v6

    sget-object v1, Lesy;->TEXT:Lesy;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lesy;->GEO:Lesy;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lesy;->TEL:Lesy;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lesy;->SMS:Lesy;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lesy;->CALENDAR:Lesy;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lesy;->WIFI:Lesy;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lesy;->ISBN:Lesy;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lesy;->VIN:Lesy;

    aput-object v2, v0, v1

    sput-object v0, Lesy;->$VALUES:[Lesy;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lesy;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lesy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lesy;

    return-object v0
.end method

.method public static values()[Lesy;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lesy;->$VALUES:[Lesy;

    invoke-virtual {v0}, [Lesy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lesy;

    return-object v0
.end method
