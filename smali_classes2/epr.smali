.class public final enum Lepr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lepr;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lepr;

.field public static final enum BEGIN_ARRAY:Lepr;

.field public static final enum BEGIN_OBJECT:Lepr;

.field public static final enum BOOLEAN:Lepr;

.field public static final enum END_ARRAY:Lepr;

.field public static final enum END_DOCUMENT:Lepr;

.field public static final enum END_OBJECT:Lepr;

.field public static final enum NAME:Lepr;

.field public static final enum NULL:Lepr;

.field public static final enum NUMBER:Lepr;

.field public static final enum STRING:Lepr;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lepr;

    const-string v1, "BEGIN_ARRAY"

    invoke-direct {v0, v1, v3}, Lepr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lepr;->BEGIN_ARRAY:Lepr;

    .line 37
    new-instance v0, Lepr;

    const-string v1, "END_ARRAY"

    invoke-direct {v0, v1, v4}, Lepr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lepr;->END_ARRAY:Lepr;

    .line 43
    new-instance v0, Lepr;

    const-string v1, "BEGIN_OBJECT"

    invoke-direct {v0, v1, v5}, Lepr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lepr;->BEGIN_OBJECT:Lepr;

    .line 49
    new-instance v0, Lepr;

    const-string v1, "END_OBJECT"

    invoke-direct {v0, v1, v6}, Lepr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lepr;->END_OBJECT:Lepr;

    .line 56
    new-instance v0, Lepr;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v7}, Lepr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lepr;->NAME:Lepr;

    .line 61
    new-instance v0, Lepr;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lepr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lepr;->STRING:Lepr;

    .line 67
    new-instance v0, Lepr;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lepr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lepr;->NUMBER:Lepr;

    .line 72
    new-instance v0, Lepr;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lepr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lepr;->BOOLEAN:Lepr;

    .line 77
    new-instance v0, Lepr;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lepr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lepr;->NULL:Lepr;

    .line 84
    new-instance v0, Lepr;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lepr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lepr;->END_DOCUMENT:Lepr;

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Lepr;

    sget-object v1, Lepr;->BEGIN_ARRAY:Lepr;

    aput-object v1, v0, v3

    sget-object v1, Lepr;->END_ARRAY:Lepr;

    aput-object v1, v0, v4

    sget-object v1, Lepr;->BEGIN_OBJECT:Lepr;

    aput-object v1, v0, v5

    sget-object v1, Lepr;->END_OBJECT:Lepr;

    aput-object v1, v0, v6

    sget-object v1, Lepr;->NAME:Lepr;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lepr;->STRING:Lepr;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lepr;->NUMBER:Lepr;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lepr;->BOOLEAN:Lepr;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lepr;->NULL:Lepr;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lepr;->END_DOCUMENT:Lepr;

    aput-object v2, v0, v1

    sput-object v0, Lepr;->$VALUES:[Lepr;

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

.method public static valueOf(Ljava/lang/String;)Lepr;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lepr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lepr;

    return-object v0
.end method

.method public static values()[Lepr;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lepr;->$VALUES:[Lepr;

    invoke-virtual {v0}, [Lepr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lepr;

    return-object v0
.end method
