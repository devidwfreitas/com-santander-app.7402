.class public final enum Lkuq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkuq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkuq;

.field public static final enum ADDRESS:Lkuq;

.field public static final enum AUDIO:Lkuq;

.field public static final enum COVERAGE:Lkuq;

.field public static final enum DATE:Lkuq;

.field public static final enum DATE_PERIOD:Lkuq;

.field public static final enum EMAIL_PHONE:Lkuq;

.field public static final enum EQUIPMENT_LIST:Lkuq;

.field public static final enum FINISH:Lkuq;

.field public static final enum PHOTO:Lkuq;

.field public static final enum SELECT:Lkuq;

.field public static final enum SLIDER_VALUE:Lkuq;

.field public static final enum SUMMARY:Lkuq;

.field public static final enum TEXT:Lkuq;

.field public static final enum TEXTAREA:Lkuq;

.field public static final enum VIDEO:Lkuq;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lkuq;

    const-string v1, "DATE"

    const-string v2, "DATE"

    invoke-direct {v0, v1, v4, v2}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->DATE:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "EQUIPMENT_LIST"

    const-string v2, "EQUIPMENT_LIST"

    invoke-direct {v0, v1, v5, v2}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->EQUIPMENT_LIST:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "SLIDER_VALUE"

    const-string v2, "SLIDER_VALUE"

    invoke-direct {v0, v1, v6, v2}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->SLIDER_VALUE:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "EMAIL_PHONE"

    const-string v2, "EMAIL_PHONE"

    invoke-direct {v0, v1, v7, v2}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->EMAIL_PHONE:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "AUDIO"

    const-string v2, "AUDIO"

    invoke-direct {v0, v1, v8, v2}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->AUDIO:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "VIDEO"

    const/4 v2, 0x5

    const-string v3, "VIDEO"

    invoke-direct {v0, v1, v2, v3}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->VIDEO:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "PHOTO"

    const/4 v2, 0x6

    const-string v3, "VIDEO"

    invoke-direct {v0, v1, v2, v3}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->PHOTO:Lkuq;

    .line 12
    new-instance v0, Lkuq;

    const-string v1, "SELECT"

    const/4 v2, 0x7

    const-string v3, "SELECT"

    invoke-direct {v0, v1, v2, v3}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->SELECT:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "TEXT"

    const/16 v2, 0x8

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v2, v3}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->TEXT:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "TEXTAREA"

    const/16 v2, 0x9

    const-string v3, "TEXTAREA"

    invoke-direct {v0, v1, v2, v3}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->TEXTAREA:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "ADDRESS"

    const/16 v2, 0xa

    const-string v3, "ADDRESS"

    invoke-direct {v0, v1, v2, v3}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->ADDRESS:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "DATE_PERIOD"

    const/16 v2, 0xb

    const-string v3, "DATE_PERIOD"

    invoke-direct {v0, v1, v2, v3}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->DATE_PERIOD:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "COVERAGE"

    const/16 v2, 0xc

    const-string v3, "COVERAGE"

    invoke-direct {v0, v1, v2, v3}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->COVERAGE:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "FINISH"

    const/16 v2, 0xd

    const-string v3, "FINISH"

    invoke-direct {v0, v1, v2, v3}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->FINISH:Lkuq;

    new-instance v0, Lkuq;

    const-string v1, "SUMMARY"

    const/16 v2, 0xe

    const-string v3, "SUMMARY"

    invoke-direct {v0, v1, v2, v3}, Lkuq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuq;->SUMMARY:Lkuq;

    .line 9
    const/16 v0, 0xf

    new-array v0, v0, [Lkuq;

    sget-object v1, Lkuq;->DATE:Lkuq;

    aput-object v1, v0, v4

    sget-object v1, Lkuq;->EQUIPMENT_LIST:Lkuq;

    aput-object v1, v0, v5

    sget-object v1, Lkuq;->SLIDER_VALUE:Lkuq;

    aput-object v1, v0, v6

    sget-object v1, Lkuq;->EMAIL_PHONE:Lkuq;

    aput-object v1, v0, v7

    sget-object v1, Lkuq;->AUDIO:Lkuq;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lkuq;->VIDEO:Lkuq;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkuq;->PHOTO:Lkuq;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkuq;->SELECT:Lkuq;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lkuq;->TEXT:Lkuq;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lkuq;->TEXTAREA:Lkuq;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lkuq;->ADDRESS:Lkuq;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lkuq;->DATE_PERIOD:Lkuq;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lkuq;->COVERAGE:Lkuq;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lkuq;->FINISH:Lkuq;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lkuq;->SUMMARY:Lkuq;

    aput-object v2, v0, v1

    sput-object v0, Lkuq;->$VALUES:[Lkuq;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lkuq;->name:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkuq;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lkuq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkuq;

    return-object v0
.end method

.method public static values()[Lkuq;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lkuq;->$VALUES:[Lkuq;

    invoke-virtual {v0}, [Lkuq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkuq;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lkuq;->name:Ljava/lang/String;

    return-object v0
.end method
