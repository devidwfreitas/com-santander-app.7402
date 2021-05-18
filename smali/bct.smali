.class public final enum Lbct;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbct;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbct;

.field public static final enum Add:Lbct;

.field public static final enum ExcludeIntersections:Lbct;

.field public static final enum Intersect:Lbct;

.field public static final enum Merge:Lbct;

.field public static final enum Subtract:Lbct;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lbct;

    const-string v1, "Merge"

    invoke-direct {v0, v1, v2}, Lbct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbct;->Merge:Lbct;

    .line 19
    new-instance v0, Lbct;

    const-string v1, "Add"

    invoke-direct {v0, v1, v3}, Lbct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbct;->Add:Lbct;

    .line 20
    new-instance v0, Lbct;

    const-string v1, "Subtract"

    invoke-direct {v0, v1, v4}, Lbct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbct;->Subtract:Lbct;

    .line 21
    new-instance v0, Lbct;

    const-string v1, "Intersect"

    invoke-direct {v0, v1, v5}, Lbct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbct;->Intersect:Lbct;

    .line 22
    new-instance v0, Lbct;

    const-string v1, "ExcludeIntersections"

    invoke-direct {v0, v1, v6}, Lbct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbct;->ExcludeIntersections:Lbct;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lbct;

    sget-object v1, Lbct;->Merge:Lbct;

    aput-object v1, v0, v2

    sget-object v1, Lbct;->Add:Lbct;

    aput-object v1, v0, v3

    sget-object v1, Lbct;->Subtract:Lbct;

    aput-object v1, v0, v4

    sget-object v1, Lbct;->Intersect:Lbct;

    aput-object v1, v0, v5

    sget-object v1, Lbct;->ExcludeIntersections:Lbct;

    aput-object v1, v0, v6

    sput-object v0, Lbct;->$VALUES:[Lbct;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(I)Lbct;
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lbct;->forId(I)Lbct;

    move-result-object v0

    return-object v0
.end method

.method private static forId(I)Lbct;
    .locals 1

    .prologue
    .line 25
    packed-switch p0, :pswitch_data_0

    .line 37
    sget-object v0, Lbct;->Merge:Lbct;

    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    sget-object v0, Lbct;->Merge:Lbct;

    goto :goto_0

    .line 29
    :pswitch_1
    sget-object v0, Lbct;->Add:Lbct;

    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lbct;->Subtract:Lbct;

    goto :goto_0

    .line 33
    :pswitch_3
    sget-object v0, Lbct;->Intersect:Lbct;

    goto :goto_0

    .line 35
    :pswitch_4
    sget-object v0, Lbct;->ExcludeIntersections:Lbct;

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lbct;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lbct;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbct;

    return-object v0
.end method

.method public static values()[Lbct;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lbct;->$VALUES:[Lbct;

    invoke-virtual {v0}, [Lbct;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbct;

    return-object v0
.end method
