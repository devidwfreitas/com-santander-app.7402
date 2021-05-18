.class public abstract enum Lekk;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lekk;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lekk;

.field public static final enum DEFAULT:Lekk;

.field public static final enum STRING:Lekk;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lekl;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lekl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lekk;->DEFAULT:Lekk;

    .line 45
    new-instance v0, Lekm;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lekm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lekk;->STRING:Lekk;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lekk;

    sget-object v1, Lekk;->DEFAULT:Lekk;

    aput-object v1, v0, v2

    sget-object v1, Lekk;->STRING:Lekk;

    aput-object v1, v0, v3

    sput-object v0, Lekk;->$VALUES:[Lekk;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILekl;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lekk;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lekk;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lekk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lekk;

    return-object v0
.end method

.method public static values()[Lekk;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lekk;->$VALUES:[Lekk;

    invoke-virtual {v0}, [Lekk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lekk;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lejz;
.end method
