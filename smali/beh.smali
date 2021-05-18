.class public final enum Lbeh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbeh;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbeh;

.field public static final enum Image:Lbeh;

.field public static final enum Null:Lbeh;

.field public static final enum PreComp:Lbeh;

.field public static final enum Shape:Lbeh;

.field public static final enum Solid:Lbeh;

.field public static final enum Text:Lbeh;

.field public static final enum Unknown:Lbeh;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lbeh;

    const-string v1, "PreComp"

    invoke-direct {v0, v1, v3}, Lbeh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbeh;->PreComp:Lbeh;

    .line 33
    new-instance v0, Lbeh;

    const-string v1, "Solid"

    invoke-direct {v0, v1, v4}, Lbeh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbeh;->Solid:Lbeh;

    .line 34
    new-instance v0, Lbeh;

    const-string v1, "Image"

    invoke-direct {v0, v1, v5}, Lbeh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbeh;->Image:Lbeh;

    .line 35
    new-instance v0, Lbeh;

    const-string v1, "Null"

    invoke-direct {v0, v1, v6}, Lbeh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbeh;->Null:Lbeh;

    .line 36
    new-instance v0, Lbeh;

    const-string v1, "Shape"

    invoke-direct {v0, v1, v7}, Lbeh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbeh;->Shape:Lbeh;

    .line 37
    new-instance v0, Lbeh;

    const-string v1, "Text"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lbeh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbeh;->Text:Lbeh;

    .line 38
    new-instance v0, Lbeh;

    const-string v1, "Unknown"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lbeh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbeh;->Unknown:Lbeh;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Lbeh;

    sget-object v1, Lbeh;->PreComp:Lbeh;

    aput-object v1, v0, v3

    sget-object v1, Lbeh;->Solid:Lbeh;

    aput-object v1, v0, v4

    sget-object v1, Lbeh;->Image:Lbeh;

    aput-object v1, v0, v5

    sget-object v1, Lbeh;->Null:Lbeh;

    aput-object v1, v0, v6

    sget-object v1, Lbeh;->Shape:Lbeh;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbeh;->Text:Lbeh;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbeh;->Unknown:Lbeh;

    aput-object v2, v0, v1

    sput-object v0, Lbeh;->$VALUES:[Lbeh;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbeh;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lbeh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbeh;

    return-object v0
.end method

.method public static values()[Lbeh;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbeh;->$VALUES:[Lbeh;

    invoke-virtual {v0}, [Lbeh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbeh;

    return-object v0
.end method
