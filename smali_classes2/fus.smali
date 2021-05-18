.class public final enum Lfus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfus;

.field public static final enum DELETE:Lfus;

.field public static final enum INSERT:Lfus;

.field public static final enum UPDATE:Lfus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lfus;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v2}, Lfus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfus;->INSERT:Lfus;

    .line 82
    new-instance v0, Lfus;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lfus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfus;->UPDATE:Lfus;

    .line 83
    new-instance v0, Lfus;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lfus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfus;->DELETE:Lfus;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Lfus;

    sget-object v1, Lfus;->INSERT:Lfus;

    aput-object v1, v0, v2

    sget-object v1, Lfus;->UPDATE:Lfus;

    aput-object v1, v0, v3

    sget-object v1, Lfus;->DELETE:Lfus;

    aput-object v1, v0, v4

    sput-object v0, Lfus;->$VALUES:[Lfus;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfus;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lfus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfus;

    return-object v0
.end method

.method public static values()[Lfus;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lfus;->$VALUES:[Lfus;

    invoke-virtual {v0}, [Lfus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfus;

    return-object v0
.end method
